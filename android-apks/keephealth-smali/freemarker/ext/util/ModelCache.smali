.class public abstract Lfreemarker/ext/util/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/util/ModelCache$ModelReference;
    }
.end annotation


# instance fields
.field private modelCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lfreemarker/ext/util/ModelCache$ModelReference;",
            ">;"
        }
    .end annotation
.end field

.field private refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private useCache:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lfreemarker/ext/util/ModelCache;->useCache:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    .line 37
    iput-object v0, p0, Lfreemarker/ext/util/ModelCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private final lookup(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 4

    .line 100
    iget-object v0, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/util/ModelCache$ModelReference;

    .line 102
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    if-eqz p1, :cond_13

    .line 105
    invoke-virtual {p1}, Lfreemarker/ext/util/ModelCache$ModelReference;->getModel()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1

    :catchall_15
    move-exception p1

    .line 102
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private final register(Lfreemarker/template/TemplateModel;Ljava/lang/Object;)V
    .registers 7

    .line 111
    iget-object v0, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    monitor-enter v0

    .line 114
    :goto_3
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/util/ModelCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/util/ModelCache$ModelReference;

    if-nez v1, :cond_1b

    .line 121
    iget-object v1, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    new-instance v2, Lfreemarker/ext/util/ModelCache$ModelReference;

    iget-object v3, p0, Lfreemarker/ext/util/ModelCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, v3}, Lfreemarker/ext/util/ModelCache$ModelReference;-><init>(Lfreemarker/template/TemplateModel;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    monitor-exit v0

    return-void

    .line 118
    :cond_1b
    iget-object v2, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    iget-object v1, v1, Lfreemarker/ext/util/ModelCache$ModelReference;->object:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_23
    move-exception p1

    .line 122
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method


# virtual methods
.method public clearCache()V
    .registers 3

    .line 88
    iget-object v0, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 89
    monitor-enter v0

    .line 90
    :try_start_5
    iget-object v1, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 91
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    :cond_f
    :goto_f
    return-void
.end method

.method protected abstract create(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
.end method

.method public getInstance(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 66
    instance-of v0, p1, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_7

    .line 67
    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1

    .line 69
    :cond_7
    instance-of v0, p1, Lfreemarker/template/TemplateModelAdapter;

    if-eqz v0, :cond_12

    .line 70
    check-cast p1, Lfreemarker/template/TemplateModelAdapter;

    invoke-interface {p1}, Lfreemarker/template/TemplateModelAdapter;->getTemplateModel()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 72
    :cond_12
    iget-boolean v0, p0, Lfreemarker/ext/util/ModelCache;->useCache:Z

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Lfreemarker/ext/util/ModelCache;->isCacheable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 73
    invoke-direct {p0, p1}, Lfreemarker/ext/util/ModelCache;->lookup(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_29

    .line 75
    invoke-virtual {p0, p1}, Lfreemarker/ext/util/ModelCache;->create(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/util/ModelCache;->register(Lfreemarker/template/TemplateModel;Ljava/lang/Object;)V

    :cond_29
    return-object v0

    .line 80
    :cond_2a
    invoke-virtual {p0, p1}, Lfreemarker/ext/util/ModelCache;->create(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getUseCache()Z
    .registers 2

    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lfreemarker/ext/util/ModelCache;->useCache:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract isCacheable(Ljava/lang/Object;)Z
.end method

.method public declared-synchronized setUseCache(Z)V
    .registers 2

    monitor-enter p0

    .line 48
    :try_start_1
    iput-boolean p1, p0, Lfreemarker/ext/util/ModelCache;->useCache:Z

    if-eqz p1, :cond_14

    .line 50
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    .line 51
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/util/ModelCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    goto :goto_19

    :cond_14
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lfreemarker/ext/util/ModelCache;->modelCache:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lfreemarker/ext/util/ModelCache;->refQueue:Ljava/lang/ref/ReferenceQueue;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 56
    :goto_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
