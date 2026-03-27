.class public final Lcom/keephealth/android/views/gallery/util/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs close([Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_19

    .line 26
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 28
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    if-eqz v2, :cond_16

    .line 31
    :try_start_e
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v2

    .line 33
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    :goto_19
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 8

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_12

    return v2

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 57
    :try_start_15
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_54
    .catchall {:try_start_15 .. :try_end_1f} :catchall_51

    .line 58
    :try_start_1f
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_4d
    .catchall {:try_start_1f .. :try_end_29} :catchall_49

    const/16 p1, 0x1000

    .line 59
    :try_start_2b
    new-array p1, p1, [B

    .line 61
    :goto_2d
    invoke-virtual {v4, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_38

    .line 62
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2d

    .line 64
    :cond_38
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3b} :catch_47
    .catchall {:try_start_2b .. :try_end_3b} :catchall_45

    .line 69
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    return v3

    :catchall_45
    move-exception p1

    goto :goto_4b

    :catch_47
    move-exception p1

    goto :goto_4f

    :catchall_49
    move-exception p1

    move-object p0, v0

    :goto_4b
    move-object v0, v4

    goto :goto_64

    :catch_4d
    move-exception p1

    move-object p0, v0

    :goto_4f
    move-object v0, v4

    goto :goto_56

    :catchall_51
    move-exception p1

    move-object p0, v0

    goto :goto_64

    :catch_54
    move-exception p1

    move-object p0, v0

    .line 66
    :goto_56
    :try_start_56
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_63

    .line 69
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    return v2

    :catchall_63
    move-exception p1

    :goto_64
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    aput-object p0, v1, v3

    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 70
    throw p1
.end method

.method public static copyFileToAppend(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 84
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_25
    const/4 p0, 0x0

    .line 93
    :try_start_26
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_6d
    .catchall {:try_start_26 .. :try_end_2b} :catchall_68

    .line 96
    :try_start_2b
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_65
    .catchall {:try_start_2b .. :try_end_31} :catchall_62

    const/16 p0, 0x1000

    .line 99
    :try_start_33
    new-array p0, p0, [B

    .line 103
    :goto_35
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_41

    const/4 v3, 0x0

    .line 104
    invoke-virtual {v0, p0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_35

    .line 107
    :cond_41
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u5df2\u6210\u529f\u8ffd\u52a0\u5230\u76ee\u6807\u6587\u4ef6: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_59} :catch_60
    .catchall {:try_start_33 .. :try_end_59} :catchall_a2

    .line 114
    :try_start_59
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 115
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_96

    goto :goto_a1

    :catch_60
    move-exception p0

    goto :goto_71

    :catchall_62
    move-exception p1

    move-object v0, p0

    goto :goto_6b

    :catch_65
    move-exception p1

    move-object v0, p0

    goto :goto_70

    :catchall_68
    move-exception p1

    move-object v0, p0

    move-object v2, v0

    :goto_6b
    move-object p0, p1

    goto :goto_a3

    :catch_6d
    move-exception p1

    move-object v0, p0

    move-object v2, v0

    :goto_70
    move-object p0, p1

    .line 109
    :goto_71
    :try_start_71
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u590d\u5236\u5931\u8d25: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_71 .. :try_end_90} :catchall_a2

    if-eqz v2, :cond_98

    .line 114
    :try_start_92
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_98

    :catch_96
    move-exception p0

    goto :goto_9e

    :cond_98
    :goto_98
    if-eqz v0, :cond_a1

    .line 115
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9d} :catch_96

    goto :goto_a1

    .line 117
    :goto_9e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a1
    :goto_a1
    return-void

    :catchall_a2
    move-exception p0

    :goto_a3
    if-eqz v2, :cond_ab

    .line 114
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_ab

    :catch_a9
    move-exception p1

    goto :goto_b1

    :cond_ab
    :goto_ab
    if-eqz v0, :cond_b4

    .line 115
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b0} :catch_a9

    goto :goto_b4

    .line 117
    :goto_b1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    :cond_b4
    :goto_b4
    throw p0
.end method
