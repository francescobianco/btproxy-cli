.class Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;
.super Lfreemarker/debug/impl/RmiDebugModelImpl;
.source "RmiDebuggedEnvironmentImpl.java"

# interfaces
.implements Lfreemarker/debug/DebuggedEnvironment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugEnvironmentModel;,
        Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugTemplateModel;,
        Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurationModel;,
        Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurableModel;,
        Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;
    }
.end annotation


# static fields
.field private static final idLock:Ljava/lang/Object;

.field private static nextId:J = 0x0L

.field private static remotes:Ljava/util/Set; = null

.field private static final serialVersionUID:J = 0x1L

.field private static final storage:Lfreemarker/cache/CacheStorage;


# instance fields
.field private final id:J

.field private stopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lfreemarker/cache/SoftCacheStorage;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lfreemarker/cache/SoftCacheStorage;-><init>(Ljava/util/Map;)V

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->storage:Lfreemarker/cache/CacheStorage;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->idLock:Ljava/lang/Object;

    const-wide/16 v0, 0x1

    .line 63
    sput-wide v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->nextId:J

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->remotes:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lfreemarker/core/Environment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 71
    new-instance v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugEnvironmentModel;

    invoke-direct {v0, p1}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugEnvironmentModel;-><init>(Lfreemarker/core/Environment;)V

    const/16 p1, 0x800

    invoke-direct {p0, v0, p1}, Lfreemarker/debug/impl/RmiDebugModelImpl;-><init>(Lfreemarker/template/TemplateModel;I)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->stopped:Z

    .line 72
    sget-object p1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->idLock:Ljava/lang/Object;

    monitor-enter p1

    .line 73
    :try_start_10
    sget-wide v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->nextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->nextId:J

    iput-wide v0, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->id:J

    .line 74
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public static cleanup()V
    .registers 3

    .line 326
    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->remotes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 329
    :try_start_10
    check-cast v1, Ljava/rmi/Remote;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/rmi/server/UnicastRemoteObject;->unexportObject(Ljava/rmi/Remote;Z)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_6

    goto :goto_6

    :cond_17
    return-void
.end method

.method static declared-synchronized getCachedWrapperFor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    const-class v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->storage:Lfreemarker/cache/CacheStorage;

    invoke-interface {v1, p0}, Lfreemarker/cache/CacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4e

    .line 81
    instance-of v3, p0, Lfreemarker/template/TemplateModel;

    if-eqz v3, :cond_28

    .line 83
    instance-of v2, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurationModel;

    if-eqz v2, :cond_16

    const/16 v2, 0x2000

    goto :goto_1e

    .line 85
    :cond_16
    instance-of v2, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugTemplateModel;

    if-eqz v2, :cond_1d

    const/16 v2, 0x1000

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 90
    :goto_1e
    new-instance v3, Lfreemarker/debug/impl/RmiDebugModelImpl;

    move-object v4, p0

    check-cast v4, Lfreemarker/template/TemplateModel;

    invoke-direct {v3, v4, v2}, Lfreemarker/debug/impl/RmiDebugModelImpl;-><init>(Lfreemarker/template/TemplateModel;I)V

    move-object v2, v3

    goto :goto_4e

    .line 91
    :cond_28
    instance-of v3, p0, Lfreemarker/core/Environment;

    if-eqz v3, :cond_35

    .line 92
    new-instance v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;

    move-object v3, p0

    check-cast v3, Lfreemarker/core/Environment;

    invoke-direct {v2, v3}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;-><init>(Lfreemarker/core/Environment;)V

    goto :goto_4e

    .line 93
    :cond_35
    instance-of v3, p0, Lfreemarker/template/Template;

    if-eqz v3, :cond_42

    .line 94
    new-instance v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugTemplateModel;

    move-object v3, p0

    check-cast v3, Lfreemarker/template/Template;

    invoke-direct {v2, v3}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugTemplateModel;-><init>(Lfreemarker/template/Template;)V

    goto :goto_4e

    .line 95
    :cond_42
    instance-of v3, p0, Lfreemarker/template/Configuration;

    if-eqz v3, :cond_4e

    .line 96
    new-instance v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurationModel;

    move-object v3, p0

    check-cast v3, Lfreemarker/template/Configuration;

    invoke-direct {v2, v3}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurationModel;-><init>(Lfreemarker/template/Configuration;)V

    :cond_4e
    :goto_4e
    if-eqz v2, :cond_53

    .line 100
    invoke-interface {v1, p0, v2}, Lfreemarker/cache/CacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :cond_53
    instance-of p0, v2, Ljava/rmi/Remote;

    if-eqz p0, :cond_5c

    .line 103
    sget-object p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->remotes:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5e

    .line 105
    :cond_5c
    monitor-exit v0

    return-object v2

    :catchall_5e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getId()J
    .registers 3

    .line 122
    iget-wide v0, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->id:J

    return-wide v0
.end method

.method isStopped()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->stopped:Z

    return v0
.end method

.method public resume()V
    .registers 2

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 113
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->stopped:Z

    .line 118
    invoke-virtual {p0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->resume()V

    return-void
.end method
