.class public final Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;
.super Ljava/rmi/server/RemoteStub;

# interfaces
.implements Lfreemarker/debug/DebuggedEnvironment;
.implements Lfreemarker/debug/DebugModel;
.implements Ljava/rmi/Remote;


# static fields
.field private static $method_getAsBoolean_4:Ljava/lang/reflect/Method; = null

.field private static $method_getAsDate_5:Ljava/lang/reflect/Method; = null

.field private static $method_getAsNumber_6:Ljava/lang/reflect/Method; = null

.field private static $method_getAsString_7:Ljava/lang/reflect/Method; = null

.field private static $method_getCollection_8:Ljava/lang/reflect/Method; = null

.field private static $method_getDateType_9:Ljava/lang/reflect/Method; = null

.field private static $method_getId_10:Ljava/lang/reflect/Method; = null

.field private static $method_getModelTypes_11:Ljava/lang/reflect/Method; = null

.field private static $method_get_0:Ljava/lang/reflect/Method; = null

.field private static $method_get_1:Ljava/lang/reflect/Method; = null

.field private static $method_get_2:Ljava/lang/reflect/Method; = null

.field private static $method_get_3:Ljava/lang/reflect/Method; = null

.field private static $method_keys_12:Ljava/lang/reflect/Method; = null

.field private static $method_resume_13:Ljava/lang/reflect/Method; = null

.field private static $method_size_14:Ljava/lang/reflect/Method; = null

.field private static $method_stop_15:Ljava/lang/reflect/Method; = null

.field static synthetic array$Ljava$lang$String:Ljava/lang/Class; = null

.field static synthetic class$freemarker$debug$DebugModel:Ljava/lang/Class; = null

.field static synthetic class$freemarker$debug$DebuggedEnvironment:Ljava/lang/Class; = null

.field static synthetic class$java$lang$String:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "get"

    :try_start_2
    sget-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_4} :catch_17c

    const-string v2, "freemarker.debug.DebugModel"

    if-eqz v1, :cond_9

    goto :goto_f

    :cond_9
    :try_start_9
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_f
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_0:Ljava/lang/reflect/Method;

    sget-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v1, :cond_22

    goto :goto_28

    :cond_22
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_28
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_1:Ljava/lang/reflect/Method;

    sget-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v1, :cond_3e

    goto :goto_44

    :cond_3e
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_44
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$java$lang$String:Ljava/lang/Class;

    if-eqz v5, :cond_4b

    goto :goto_53

    :cond_4b
    const-string v5, "java.lang.String"

    invoke-static {v5}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$java$lang$String:Ljava/lang/Class;

    :goto_53
    aput-object v5, v4, v6

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_2:Ljava/lang/reflect/Method;

    sget-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v1, :cond_60

    goto :goto_66

    :cond_60
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_66
    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->array$Ljava$lang$String:Ljava/lang/Class;

    if-eqz v4, :cond_6d

    goto :goto_75

    :cond_6d
    const-string v4, "[Ljava.lang.String;"

    invoke-static {v4}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->array$Ljava$lang$String:Ljava/lang/Class;

    :goto_75
    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_3:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_82

    goto :goto_88

    :cond_82
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_88
    const-string v1, "getAsBoolean"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsBoolean_4:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_97

    goto :goto_9d

    :cond_97
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_9d
    const-string v1, "getAsDate"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsDate_5:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_ac

    goto :goto_b2

    :cond_ac
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_b2
    const-string v1, "getAsNumber"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsNumber_6:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_c1

    goto :goto_c7

    :cond_c1
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_c7
    const-string v1, "getAsString"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsString_7:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_d6

    goto :goto_dc

    :cond_d6
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_dc
    const-string v1, "getCollection"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getCollection_8:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_eb

    goto :goto_f1

    :cond_eb
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_f1
    const-string v1, "getDateType"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getDateType_9:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebuggedEnvironment:Ljava/lang/Class;
    :try_end_fd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_fd} :catch_17c

    const-string v1, "freemarker.debug.DebuggedEnvironment"

    if-eqz v0, :cond_102

    goto :goto_108

    :cond_102
    :try_start_102
    invoke-static {v1}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebuggedEnvironment:Ljava/lang/Class;

    :goto_108
    const-string v3, "getId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getId_10:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_117

    goto :goto_11d

    :cond_117
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_11d
    const-string v3, "getModelTypes"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getModelTypes_11:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_12c

    goto :goto_132

    :cond_12c
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_132
    const-string v3, "keys"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_keys_12:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebuggedEnvironment:Ljava/lang/Class;

    if-eqz v0, :cond_141

    goto :goto_147

    :cond_141
    invoke-static {v1}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebuggedEnvironment:Ljava/lang/Class;

    :goto_147
    const-string v3, "resume"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_resume_13:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    if-eqz v0, :cond_156

    goto :goto_15c

    :cond_156
    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebugModel:Ljava/lang/Class;

    :goto_15c
    const-string v2, "size"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_size_14:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebuggedEnvironment:Ljava/lang/Class;

    if-eqz v0, :cond_16b

    goto :goto_171

    :cond_16b
    invoke-static {v1}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->class$freemarker$debug$DebuggedEnvironment:Ljava/lang/Class;

    :goto_171
    const-string v1, "stop"

    new-array v2, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_stop_15:Ljava/lang/reflect/Method;
    :try_end_17b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_102 .. :try_end_17b} :catch_17c

    return-void

    :catch_17c
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "stub class initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/rmi/server/RemoteRef;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/rmi/server/RemoteStub;-><init>(Ljava/rmi/server/RemoteRef;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(I)Lfreemarker/debug/DebugModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_0:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x70de6dd3c91dfd44L

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/debug/DebugModel;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_19} :catch_27
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_19} :catch_25
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_19} :catch_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_23
    move-exception p1

    throw p1

    :catch_25
    move-exception p1

    throw p1

    :catch_27
    move-exception p1

    throw p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/debug/DebugModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_2:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0xa0df77deb1cbf6cL

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/debug/DebugModel;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_22
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_14} :catch_20
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_14} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1e
    move-exception p1

    throw p1

    :catch_20
    move-exception p1

    throw p1

    :catch_22
    move-exception p1

    throw p1
.end method

.method public get(II)[Lfreemarker/debug/DebugModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_1:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x291faa1540aacaebL

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lfreemarker/debug/DebugModel;
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1e} :catch_2c
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_1e} :catch_2a
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_1e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    new-instance p2, Ljava/rmi/UnexpectedException;

    const-string v0, "undeclared checked exception"

    invoke-direct {p2, v0, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_28
    move-exception p1

    throw p1

    :catch_2a
    move-exception p1

    throw p1

    :catch_2c
    move-exception p1

    throw p1
.end method

.method public get([Ljava/lang/String;)[Lfreemarker/debug/DebugModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_get_3:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x4af3919f76bdc859L    # -3.710439576083808E-53

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lfreemarker/debug/DebugModel;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_22
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_14} :catch_20
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_14} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1e
    move-exception p1

    throw p1

    :catch_20
    move-exception p1

    throw p1

    :catch_22
    move-exception p1

    throw p1
.end method

.method public getAsBoolean()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsBoolean_4:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, 0x4601130785a674eL

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_23
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_15} :catch_21
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception v0

    throw v0

    :catch_21
    move-exception v0

    throw v0

    :catch_23
    move-exception v0

    throw v0
.end method

.method public getAsDate()Ljava/util/Date;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsDate_5:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x5dd8e53acbe178f9L

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1f
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    throw v0

    :catch_1d
    move-exception v0

    throw v0

    :catch_1f
    move-exception v0

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsNumber_6:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x55e03ab28e84886dL    # -8.657818866590698E-106

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1f
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    throw v0

    :catch_1d
    move-exception v0

    throw v0

    :catch_1f
    move-exception v0

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getAsString_7:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x4fcb36844778a403L    # -1.795204164355479E-76

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1f
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    throw v0

    :catch_1d
    move-exception v0

    throw v0

    :catch_1f
    move-exception v0

    throw v0
.end method

.method public getCollection()[Lfreemarker/debug/DebugModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getCollection_8:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x1ba5cd2705a7db92L    # -2.5918864095232587E175

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/debug/DebugModel;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1f
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    throw v0

    :catch_1d
    move-exception v0

    throw v0

    :catch_1f
    move-exception v0

    throw v0
.end method

.method public getDateType()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getDateType_9:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x2d016267c4a490bcL    # -6.236508703759942E91

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_23
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_15} :catch_21
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception v0

    throw v0

    :catch_21
    move-exception v0

    throw v0

    :catch_23
    move-exception v0

    throw v0
.end method

.method public getId()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getId_10:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x53d520bc85967ce8L

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_21
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception v0

    throw v0

    :catch_21
    move-exception v0

    throw v0
.end method

.method public getModelTypes()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_getModelTypes_11:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x32f9b9fad6e9c639L    # -1.1453491401649141E63

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_21
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception v0

    throw v0

    :catch_21
    move-exception v0

    throw v0
.end method

.method public keys()[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_keys_12:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, 0x7d0cc2f35c1edc7L

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1f
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    throw v0

    :catch_1d
    move-exception v0

    throw v0

    :catch_1f
    move-exception v0

    throw v0
.end method

.method public resume()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_resume_13:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, 0x394608833de3d0c2L    # 8.48690018717856E-33

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_1a
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_e} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_18
    move-exception v0

    throw v0

    :catch_1a
    move-exception v0

    throw v0
.end method

.method public size()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_size_14:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, 0x3e624d5ddf585627L    # 3.409052943770969E-8

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_23
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_15} :catch_21
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception v0

    throw v0

    :catch_21
    move-exception v0

    throw v0

    :catch_23
    move-exception v0

    throw v0
.end method

.method public stop()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl_Stub;->$method_stop_15:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x27a2f88f705bfd9aL    # -4.575213012246065E117

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_1a
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_e} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Ljava/rmi/UnexpectedException;

    const-string v2, "undeclared checked exception"

    invoke-direct {v1, v2, v0}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_18
    move-exception v0

    throw v0

    :catch_1a
    move-exception v0

    throw v0
.end method
