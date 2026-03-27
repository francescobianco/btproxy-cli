.class Lfreemarker/debug/impl/DebuggerService$NoOpDebuggerService;
.super Lfreemarker/debug/impl/DebuggerService;
.source "DebuggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/DebuggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpDebuggerService"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Lfreemarker/debug/impl/DebuggerService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/debug/impl/DebuggerService$1;)V
    .registers 2

    .line 74
    invoke-direct {p0}, Lfreemarker/debug/impl/DebuggerService$NoOpDebuggerService;-><init>()V

    return-void
.end method


# virtual methods
.method getBreakpointsSpi(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 77
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method registerTemplateSpi(Lfreemarker/template/Template;)V
    .registers 2

    return-void
.end method

.method shutdownSpi()V
    .registers 1

    return-void
.end method

.method suspendEnvironmentSpi(Lfreemarker/core/Environment;Ljava/lang/String;I)Z
    .registers 4

    .line 82
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
