.class public final Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;
.super Ljava/rmi/server/RemoteStub;

# interfaces
.implements Lfreemarker/debug/Debugger;
.implements Ljava/rmi/Remote;


# static fields
.field private static $method_addBreakpoint_0:Ljava/lang/reflect/Method; = null

.field private static $method_addDebuggerListener_1:Ljava/lang/reflect/Method; = null

.field private static $method_getBreakpoints_2:Ljava/lang/reflect/Method; = null

.field private static $method_getBreakpoints_3:Ljava/lang/reflect/Method; = null

.field private static $method_getSuspendedEnvironments_4:Ljava/lang/reflect/Method; = null

.field private static $method_removeBreakpoint_5:Ljava/lang/reflect/Method; = null

.field private static $method_removeBreakpoints_6:Ljava/lang/reflect/Method; = null

.field private static $method_removeBreakpoints_7:Ljava/lang/reflect/Method; = null

.field private static $method_removeDebuggerListener_8:Ljava/lang/reflect/Method; = null

.field static synthetic class$freemarker$debug$Breakpoint:Ljava/lang/Class; = null

.field static synthetic class$freemarker$debug$Debugger:Ljava/lang/Class; = null

.field static synthetic class$freemarker$debug$DebuggerListener:Ljava/lang/Class; = null

.field static synthetic class$java$lang$Object:Ljava/lang/Class; = null

.field static synthetic class$java$lang$String:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "removeBreakpoints"

    const-string v1, "getBreakpoints"

    :try_start_4
    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_6} :catch_114

    const-string v3, "freemarker.debug.Debugger"

    if-eqz v2, :cond_b

    goto :goto_11

    :cond_b
    :try_start_b
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_11
    const-string v4, "addBreakpoint"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Breakpoint:Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_18} :catch_114

    const-string v8, "freemarker.debug.Breakpoint"

    if-eqz v7, :cond_1d

    goto :goto_23

    :cond_1d
    :try_start_1d
    invoke-static {v8}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Breakpoint:Ljava/lang/Class;

    :goto_23
    const/4 v9, 0x0

    aput-object v7, v6, v9

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_addBreakpoint_0:Ljava/lang/reflect/Method;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v2, :cond_31

    goto :goto_37

    :cond_31
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_37
    const-string v4, "addDebuggerListener"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$DebuggerListener:Ljava/lang/Class;

    if-eqz v7, :cond_40

    goto :goto_48

    :cond_40
    const-string v7, "freemarker.debug.DebuggerListener"

    invoke-static {v7}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$DebuggerListener:Ljava/lang/Class;

    :goto_48
    aput-object v7, v6, v9

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_addDebuggerListener_1:Ljava/lang/reflect/Method;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v2, :cond_55

    goto :goto_5b

    :cond_55
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_5b
    new-array v4, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_getBreakpoints_2:Ljava/lang/reflect/Method;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v2, :cond_68

    goto :goto_6e

    :cond_68
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_6e
    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$java$lang$String:Ljava/lang/Class;
    :try_end_72
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_72} :catch_114

    const-string v7, "java.lang.String"

    if-eqz v6, :cond_77

    goto :goto_7d

    :cond_77
    :try_start_77
    invoke-static {v7}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$java$lang$String:Ljava/lang/Class;

    :goto_7d
    aput-object v6, v4, v9

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_getBreakpoints_3:Ljava/lang/reflect/Method;

    sget-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v1, :cond_8a

    goto :goto_90

    :cond_8a
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_90
    const-string v2, "getSuspendedEnvironments"

    new-array v4, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_getSuspendedEnvironments_4:Ljava/lang/reflect/Method;

    sget-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v1, :cond_9f

    goto :goto_a5

    :cond_9f
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_a5
    const-string v2, "removeBreakpoint"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Breakpoint:Ljava/lang/Class;

    if-eqz v6, :cond_ae

    goto :goto_b4

    :cond_ae
    invoke-static {v8}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Breakpoint:Ljava/lang/Class;

    :goto_b4
    aput-object v6, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeBreakpoint_5:Ljava/lang/reflect/Method;

    sget-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v1, :cond_c1

    goto :goto_c7

    :cond_c1
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_c7
    new-array v2, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeBreakpoints_6:Ljava/lang/reflect/Method;

    sget-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v1, :cond_d4

    goto :goto_da

    :cond_d4
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_da
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v4, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$java$lang$String:Ljava/lang/Class;

    if-eqz v4, :cond_e1

    goto :goto_e7

    :cond_e1
    invoke-static {v7}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$java$lang$String:Ljava/lang/Class;

    :goto_e7
    aput-object v4, v2, v9

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeBreakpoints_7:Ljava/lang/reflect/Method;

    sget-object v0, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    if-eqz v0, :cond_f4

    goto :goto_fa

    :cond_f4
    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$freemarker$debug$Debugger:Ljava/lang/Class;

    :goto_fa
    const-string v1, "removeDebuggerListener"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$java$lang$Object:Ljava/lang/Class;

    if-eqz v3, :cond_103

    goto :goto_10b

    :cond_103
    const-string v3, "java.lang.Object"

    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->class$java$lang$Object:Ljava/lang/Class;

    :goto_10b
    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeDebuggerListener_8:Ljava/lang/reflect/Method;
    :try_end_113
    .catch Ljava/lang/NoSuchMethodException; {:try_start_77 .. :try_end_113} :catch_114

    return-void

    :catch_114
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
.method public addBreakpoint(Lfreemarker/debug/Breakpoint;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_addBreakpoint_0:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x6261508e29e08a2aL    # -5.203711503485291E-166

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1b
    move-exception p1

    throw p1

    :catch_1d
    move-exception p1

    throw p1
.end method

.method public addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_addDebuggerListener_1:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x372616e982aa4e1dL    # 4.952637319842364E-43

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_12} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1c
    move-exception p1

    throw p1

    :catch_1e
    move-exception p1

    throw p1
.end method

.method public getBreakpoints()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_getBreakpoints_2:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, 0x25b554704a807575L    # 4.923448552477671E-127

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1b
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
.end method

.method public getBreakpoints(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_getBreakpoints_3:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x1f2aed24cc1b85c4L

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_20
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_14} :catch_1e
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
.end method

.method public getSuspendedEnvironments()Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_getSuspendedEnvironments_4:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, 0x590c0403b1a8c3d7L    # 9.042936223882068E120

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1b
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
.end method

.method public removeBreakpoint(Lfreemarker/debug/Breakpoint;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeBreakpoint_5:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x5facc4cfe3a3016bL    # -5.737314544761486E-153

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1b
    move-exception p1

    throw p1

    :catch_1d
    move-exception p1

    throw p1
.end method

.method public removeBreakpoints()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeBreakpoints_6:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const-wide v4, -0x5fe1e549ab55cefL    # -5.071663833589492E279

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

.method public removeBreakpoints(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeBreakpoints_7:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x3955a4de1f39ea2cL    # -2.672814486119402E32

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1b
    move-exception p1

    throw p1

    :catch_1d
    move-exception p1

    throw p1
.end method

.method public removeDebuggerListener(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/rmi/server/RemoteObject;->ref:Ljava/rmi/server/RemoteRef;

    sget-object v2, Lfreemarker/debug/impl/RmiDebuggerImpl_Stub;->$method_removeDebuggerListener_8:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x74217b3c29d3246dL    # 2.503238780380829E251

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ljava/rmi/server/RemoteRef;->invoke(Ljava/rmi/Remote;Ljava/lang/reflect/Method;[Ljava/lang/Object;J)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    new-instance v0, Ljava/rmi/UnexpectedException;

    const-string v1, "undeclared checked exception"

    invoke-direct {v0, v1, p1}, Ljava/rmi/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1b
    move-exception p1

    throw p1

    :catch_1d
    move-exception p1

    throw p1
.end method
