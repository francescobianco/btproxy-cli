.class public abstract Lcom/keephealth/android/util/telinkota/util/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 113
    const-string p0, "file delete success"

    invoke-static {p0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    goto :goto_1a

    .line 115
    :cond_15
    const-string p0, "file delete fail"

    invoke-static {p0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    :goto_1a
    return-void
.end method

.method public static readAsObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "read object error : "

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 76
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_13

    return-object p1

    .line 87
    :cond_13
    :try_start_13
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 88
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1d} :catch_2b
    .catchall {:try_start_13 .. :try_end_1d} :catchall_29

    .line 90
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_21} :catch_25
    .catchall {:try_start_1d .. :try_end_21} :catchall_47

    .line 96
    :goto_21
    :try_start_21
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_46

    goto :goto_46

    :catch_25
    move-exception p0

    goto :goto_2f

    :catch_27
    move-exception p0

    goto :goto_2f

    :catchall_29
    move-exception p0

    goto :goto_49

    :catch_2b
    move-exception p0

    goto :goto_2e

    :catch_2d
    move-exception p0

    :goto_2e
    move-object v1, p1

    .line 92
    :goto_2f
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->w(Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_47

    if-eqz v1, :cond_46

    goto :goto_21

    :catch_46
    :cond_46
    :goto_46
    return-object p1

    :catchall_47
    move-exception p0

    move-object p1, v1

    :goto_49
    if-eqz p1, :cond_4e

    .line 96
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4e

    .line 99
    :catch_4e
    :cond_4e
    throw p0
.end method

.method public static writeAsObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 47
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 50
    :cond_13
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_41
    .catchall {:try_start_a .. :try_end_18} :catchall_33

    .line 51
    :try_start_18
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_42
    .catchall {:try_start_18 .. :try_end_1d} :catchall_31

    .line 53
    :try_start_1d
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_2f
    .catchall {:try_start_1d .. :try_end_23} :catchall_2b

    .line 63
    :try_start_23
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_29

    :catch_29
    const/4 p0, 0x1

    goto :goto_4d

    :catchall_2b
    move-exception p0

    move-object p2, p0

    move-object p0, v0

    goto :goto_36

    :catch_2f
    move-object p0, v0

    goto :goto_42

    :catchall_31
    move-exception p2

    goto :goto_36

    :catchall_33
    move-exception p1

    move-object p2, p1

    move-object p1, p0

    :goto_36
    if-eqz p0, :cond_3b

    .line 63
    :try_start_38
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3b
    if-eqz p0, :cond_40

    .line 65
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_40} :catch_40

    .line 68
    :catch_40
    :cond_40
    throw p2

    :catch_41
    move-object p1, p0

    :catch_42
    :goto_42
    if-eqz p0, :cond_47

    .line 63
    :try_start_44
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_47
    if-eqz p0, :cond_4c

    .line 65
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    return p0
.end method
