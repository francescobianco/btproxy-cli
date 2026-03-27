.class Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;
.super Ljava/lang/Object;
.source "DebuggerServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/DebuggerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebuggerAuthProtocol"
.end annotation


# instance fields
.field private final s:Ljava/net/Socket;

.field final synthetic this$0:Lfreemarker/debug/impl/DebuggerServer;


# direct methods
.method constructor <init>(Lfreemarker/debug/impl/DebuggerServer;Ljava/net/Socket;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;->this$0:Lfreemarker/debug/impl/DebuggerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;->s:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 92
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;->s:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    new-instance v1, Ljava/io/ObjectInputStream;

    iget-object v2, p0, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x200

    .line 94
    new-array v2, v2, [B

    .line 95
    # getter for: Lfreemarker/debug/impl/DebuggerServer;->R:Ljava/util/Random;
    invoke-static {}, Lfreemarker/debug/impl/DebuggerServer;->access$100()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    const/16 v3, 0xdc

    .line 96
    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 97
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 98
    const-string v3, "SHA"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 99
    iget-object v4, p0, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;->this$0:Lfreemarker/debug/impl/DebuggerServer;

    # getter for: Lfreemarker/debug/impl/DebuggerServer;->password:[B
    invoke-static {v4}, Lfreemarker/debug/impl/DebuggerServer;->access$200(Lfreemarker/debug/impl/DebuggerServer;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 102
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 103
    iget-object v1, p0, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;->this$0:Lfreemarker/debug/impl/DebuggerServer;

    # getter for: Lfreemarker/debug/impl/DebuggerServer;->debuggerStub:Ljava/io/Serializable;
    invoke-static {v1}, Lfreemarker/debug/impl/DebuggerServer;->access$300(Lfreemarker/debug/impl/DebuggerServer;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_83

    :cond_57
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_83

    :catch_5c
    move-exception v0

    .line 108
    # getter for: Lfreemarker/debug/impl/DebuggerServer;->LOG:Lfreemarker/log/Logger;
    invoke-static {}, Lfreemarker/debug/impl/DebuggerServer;->access$400()Lfreemarker/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfreemarker/debug/impl/DebuggerServer$DebuggerAuthProtocol;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " abruply broke"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_83
    return-void
.end method
