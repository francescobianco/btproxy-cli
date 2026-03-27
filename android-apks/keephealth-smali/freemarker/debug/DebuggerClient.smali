.class public Lfreemarker/debug/DebuggerClient;
.super Ljava/lang/Object;
.source "DebuggerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugger(Ljava/net/InetAddress;ILjava/lang/String;)Lfreemarker/debug/Debugger;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Incompatible protocol version "

    .line 63
    :try_start_2
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_6f

    .line 65
    :try_start_7
    new-instance p0, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    const/16 v3, 0xdc

    if-gt v2, v3, :cond_51

    .line 73
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 74
    const-string v2, "SHA"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 75
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 78
    new-instance p0, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/debug/Debugger;

    invoke-direct {p0, p1}, Lfreemarker/debug/DebuggerClient$LocalDebuggerProxy;-><init>(Lfreemarker/debug/Debugger;)V
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_6a

    .line 81
    :try_start_4d
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_76
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_6f

    return-object p0

    .line 69
    :cond_51
    :try_start_51
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". At most 220 was expected."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6a
    .catchall {:try_start_51 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p0

    .line 81
    :try_start_6b
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 82
    throw p0
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_76
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception p0

    .line 86
    new-instance p1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p1, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_76
    move-exception p0

    .line 84
    throw p0
.end method
