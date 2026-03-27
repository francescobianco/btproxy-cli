.class Lfreemarker/debug/impl/DebuggerServer;
.super Ljava/lang/Object;
.source "DebuggerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;
    }
.end annotation


# static fields
.field private static final LOG:Lfreemarker/log/Logger;

.field private static final R:Ljava/util/Random;


# instance fields
.field private final debuggerStub:Ljava/io/Serializable;

.field private final password:[B

.field private final port:I

.field private serverSocket:Ljava/net/ServerSocket;

.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-string v0, "freemarker.debug.server"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/DebuggerServer;->LOG:Lfreemarker/log/Logger;

    .line 44
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lfreemarker/debug/impl/DebuggerServer;->R:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lfreemarker/debug/impl/DebuggerServer;->stop:Z

    .line 53
    const-string v0, "freemarker.debug.port"

    const/16 v1, 0x1b63

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lfreemarker/debug/impl/DebuggerServer;->port:I

    .line 55
    :try_start_14
    const-string v0, "freemarker.debug.password"

    const-string v1, ""

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lfreemarker/debug/impl/DebuggerServer;->password:[B
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_24} :catch_27

    .line 59
    iput-object p1, p0, Lfreemarker/debug/impl/DebuggerServer;->debuggerStub:Ljava/io/Serializable;

    return-void

    :catch_27
    move-exception p1

    .line 57
    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000(Lfreemarker/debug/impl/DebuggerServer;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lfreemarker/debug/impl/DebuggerServer;->startInternal()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Random;
    .registers 1

    .line 41
    sget-object v0, Lfreemarker/debug/impl/DebuggerServer;->R:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$200(Lfreemarker/debug/impl/DebuggerServer;)[B
    .registers 1

    .line 41
    iget-object p0, p0, Lfreemarker/debug/impl/DebuggerServer;->password:[B

    return-object p0
.end method

.method static synthetic access$300(Lfreemarker/debug/impl/DebuggerServer;)Ljava/io/Serializable;
    .registers 1

    .line 41
    iget-object p0, p0, Lfreemarker/debug/impl/DebuggerServer;->debuggerStub:Ljava/io/Serializable;

    return-object p0
.end method

.method static synthetic access$400()Lfreemarker/log/Logger;
    .registers 1

    .line 41
    sget-object v0, Lfreemarker/debug/impl/DebuggerServer;->LOG:Lfreemarker/log/Logger;

    return-object v0
.end method

.method private startInternal()V
    .registers 4

    .line 73
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lfreemarker/debug/impl/DebuggerServer;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lfreemarker/debug/impl/DebuggerServer;->serverSocket:Ljava/net/ServerSocket;

    .line 74
    :goto_9
    iget-boolean v0, p0, Lfreemarker/debug/impl/DebuggerServer;->stop:Z

    if-nez v0, :cond_29

    .line 75
    iget-object v0, p0, Lfreemarker/debug/impl/DebuggerServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;

    invoke-direct {v2, p0, v0}, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;-><init>(Lfreemarker/debug/impl/DebuggerServer;Ljava/net/Socket;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_9

    :catch_21
    move-exception v0

    .line 79
    sget-object v1, Lfreemarker/debug/impl/DebuggerServer;->LOG:Lfreemarker/log/Logger;

    const-string v2, "Debugger server shut down."

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29
    return-void
.end method


# virtual methods
.method public start()V
    .registers 4

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfreemarker/debug/impl/DebuggerServer$1;

    invoke-direct {v1, p0}, Lfreemarker/debug/impl/DebuggerServer$1;-><init>(Lfreemarker/debug/impl/DebuggerServer;)V

    const-string v2, "FreeMarker Debugger Server Acceptor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lfreemarker/debug/impl/DebuggerServer;->stop:Z

    .line 116
    iget-object v0, p0, Lfreemarker/debug/impl/DebuggerServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_13

    .line 118
    :try_start_7
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    .line 120
    sget-object v1, Lfreemarker/debug/impl/DebuggerServer;->LOG:Lfreemarker/log/Logger;

    const-string v2, "Unable to close server socket."

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method
