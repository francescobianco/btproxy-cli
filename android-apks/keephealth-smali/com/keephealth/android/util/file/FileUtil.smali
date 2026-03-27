.class public Lcom/keephealth/android/util/file/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs closeIO([Ljava/io/Closeable;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1083
    :cond_3
    :try_start_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    if-eqz v2, :cond_e

    .line 1085
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_11

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_11
    move-exception p0

    .line 1089
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    return-void
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    .line 343
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 332
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->copyDir(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    .line 365
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 354
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_9a

    if-nez p1, :cond_7

    goto/16 :goto_9a

    .line 266
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    return v0

    .line 270
    :cond_3c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_9a

    .line 272
    :cond_49
    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_50

    return v0

    .line 273
    :cond_50
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 274
    array-length v1, p1

    move v3, v0

    :goto_56
    if-ge v3, v1, :cond_91

    aget-object v4, p1, v3

    .line 275
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 278
    invoke-static {v4, v5, p2}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v4

    if-nez v4, :cond_8e

    return v0

    .line 279
    :cond_81
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 281
    invoke-static {v4, v5, p2}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v4

    if-nez v4, :cond_8e

    return v0

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_91
    if-eqz p2, :cond_99

    .line 284
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_9a

    :cond_99
    const/4 v0, 0x1

    :cond_9a
    :goto_9a
    return v0
.end method

.method private static copyOrMoveDir(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    .line 249
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method private static copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    if-nez p1, :cond_6

    goto :goto_44

    .line 310
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_44

    .line 312
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    .line 314
    :cond_20
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v0

    .line 316
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/file/FileUtil;->write(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p1

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3e

    .line 317
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result p0
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_3c} :catch_40

    if-eqz p0, :cond_3f

    :cond_3e
    const/4 v0, 0x1

    :cond_3f
    return v0

    :catch_40
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_44
    :goto_44
    return v0
.end method

.method private static copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 3

    .line 296
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static createFileByDeleteOldFile(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 229
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_17

    return v0

    .line 231
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_22

    return v0

    .line 233
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_27

    return p0

    :catch_27
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/lang/String;)Z
    .registers 1

    .line 217
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static createOrExistsDir(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 178
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static createOrExistsDir(Ljava/lang/String;)Z
    .registers 1

    .line 167
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static createOrExistsFile(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 200
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 201
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 203
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static createOrExistsFile(Ljava/lang/String;)Z
    .registers 1

    .line 188
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 431
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x1

    return p0

    .line 433
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 435
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 436
    array-length v2, v1

    move v3, v0

    :goto_19
    if-ge v3, v2, :cond_3a

    aget-object v4, v1, v3

    .line 437
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 438
    invoke-static {v4}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_37

    return v0

    .line 439
    :cond_2a
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 440
    invoke-static {v4}, Lcom/keephealth/android/util/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_37

    return v0

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 443
    :cond_3a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .registers 1

    .line 419
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_16

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 1

    .line 453
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static fileCopy(Ljava/io/File;Ljava/io/File;)V
    .registers 15

    const/4 v0, 0x0

    .line 48
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_48
    .catchall {:try_start_1 .. :try_end_a} :catchall_45

    .line 49
    :try_start_a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v1, 0x0

    move-wide v10, v1

    :goto_1a
    cmp-long p1, v10, v8

    if-gez p1, :cond_2b

    const p1, 0x3ff8000

    int-to-long v5, p1

    move-object v2, p0

    move-wide v3, v10

    move-object v7, v0

    .line 54
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_40
    .catchall {:try_start_a .. :try_end_29} :catchall_3b

    add-long/2addr v10, v1

    goto :goto_1a

    :cond_2b
    if-eqz p0, :cond_35

    .line 62
    :try_start_2d
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_35
    :goto_35
    if-eqz v0, :cond_61

    .line 70
    :try_start_37
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_5d

    goto :goto_61

    :catchall_3b
    move-exception p1

    move-object v12, v0

    move-object v0, p0

    move-object p0, v12

    goto :goto_63

    :catch_40
    move-exception p1

    move-object v12, v0

    move-object v0, p0

    move-object p0, v12

    goto :goto_4a

    :catchall_45
    move-exception p1

    move-object p0, v0

    goto :goto_63

    :catch_48
    move-exception p1

    move-object p0, v0

    .line 58
    :goto_4a
    :try_start_4a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_62

    if-eqz v0, :cond_57

    .line 62
    :try_start_4f
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    if-eqz p0, :cond_61

    .line 70
    :try_start_59
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_61
    :goto_61
    return-void

    :catchall_62
    move-exception p1

    :goto_63
    if-eqz v0, :cond_6d

    .line 62
    :try_start_65
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6d
    :goto_6d
    if-eqz p0, :cond_77

    .line 70
    :try_start_6f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    :cond_77
    :goto_77
    throw p1
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .registers 2

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static getDirName(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1101
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1111
    invoke-static {p0}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1112
    :cond_7
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1113
    const-string p0, ""

    goto :goto_1a

    :cond_13
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method public static getFile([BLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 931
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 933
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 935
    :cond_15
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_4f
    .catchall {:try_start_1 .. :try_end_30} :catchall_4c

    .line 937
    :try_start_30
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_4a
    .catchall {:try_start_30 .. :try_end_35} :catchall_69

    .line 938
    :try_start_35
    invoke-virtual {p2, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_47
    .catchall {:try_start_35 .. :try_end_38} :catchall_44

    .line 944
    :try_start_38
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p0

    .line 946
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 951
    :goto_40
    :try_start_40
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_64

    goto :goto_68

    :catchall_44
    move-exception p0

    move-object v0, p2

    goto :goto_6a

    :catch_47
    move-exception p0

    move-object v0, p2

    goto :goto_51

    :catch_4a
    move-exception p0

    goto :goto_51

    :catchall_4c
    move-exception p0

    move-object p1, v0

    goto :goto_6a

    :catch_4f
    move-exception p0

    move-object p1, v0

    .line 940
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_69

    if-eqz v0, :cond_5e

    .line 944
    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 946
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5e
    :goto_5e
    if-eqz p1, :cond_68

    .line 951
    :try_start_60
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p0

    .line 953
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_68
    :goto_68
    return-void

    :catchall_69
    move-exception p0

    :goto_6a
    if-eqz v0, :cond_74

    .line 944
    :try_start_6c
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p2

    .line 946
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_74
    :goto_74
    if-eqz p1, :cond_7e

    .line 951
    :try_start_76
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p1

    .line 953
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 956
    :cond_7e
    :goto_7e
    throw p0
.end method

.method public static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 97
    invoke-static {p0}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method

.method public static getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 978
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_29
    .catchall {:try_start_3 .. :try_end_d} :catchall_27

    .line 979
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_24
    .catchall {:try_start_d .. :try_end_17} :catchall_21

    add-int/2addr p0, v2

    .line 983
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    move v1, p0

    goto :goto_34

    :catchall_21
    move-exception p0

    move-object v2, v3

    goto :goto_4f

    :catch_24
    move-exception p0

    move-object v2, v3

    goto :goto_2a

    :catchall_27
    move-exception p0

    goto :goto_4f

    :catch_29
    move-exception p0

    .line 981
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 983
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    :goto_34
    const p0, 0xefbb    # 8.5999E-41f

    if-eq v1, p0, :cond_4c

    const p0, 0xfeff

    if-eq v1, p0, :cond_49

    const p0, 0xfffe

    if-eq v1, p0, :cond_46

    .line 993
    const-string p0, "GBK"

    return-object p0

    .line 989
    :cond_46
    const-string p0, "Unicode"

    return-object p0

    .line 991
    :cond_49
    const-string p0, "UTF-16BE"

    return-object p0

    .line 987
    :cond_4c
    const-string p0, "UTF-8"

    return-object p0

    .line 983
    :goto_4f
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 984
    throw p0
.end method

.method public static getFileCharsetSimple(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 965
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1177
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1187
    invoke-static {p0}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2e

    .line 1188
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1189
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_20

    if-lt v1, v0, :cond_19

    goto :goto_20

    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 1191
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1190
    :cond_20
    :goto_20
    const-string p0, ""

    return-object p0
.end method

.method public static getFileLines(Ljava/io/File;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1017
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_3a
    .catchall {:try_start_3 .. :try_end_d} :catchall_38

    const/16 p0, 0x400

    .line 1018
    :try_start_f
    new-array v2, p0, [B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_11} :catch_34
    .catchall {:try_start_f .. :try_end_11} :catchall_31

    move v4, v1

    .line 1020
    :cond_12
    :try_start_12
    invoke-virtual {v3, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_27

    move v6, v0

    :goto_1a
    if-ge v6, v5, :cond_12

    .line 1022
    aget-byte v7, v2, v6
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1e} :catch_2f
    .catchall {:try_start_12 .. :try_end_1e} :catchall_31

    const/16 v8, 0xa

    if-ne v7, v8, :cond_24

    add-int/lit8 v4, v4, 0x1

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1028
    :cond_27
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    goto :goto_46

    :catch_2f
    move-exception p0

    goto :goto_36

    :catchall_31
    move-exception p0

    move-object v2, v3

    goto :goto_47

    :catch_34
    move-exception p0

    move v4, v1

    :goto_36
    move-object v2, v3

    goto :goto_3c

    :catchall_38
    move-exception p0

    goto :goto_47

    :catch_3a
    move-exception p0

    move v4, v1

    .line 1026
    :goto_3c
    :try_start_3c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_38

    .line 1028
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    :goto_46
    return v4

    :goto_47
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 1029
    throw p0
.end method

.method public static getFileLines(Ljava/lang/String;)I
    .registers 1

    .line 1004
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileLines(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 1072
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1062
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileName(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1124
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1134
    invoke-static {p0}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 1135
    :cond_7
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    goto :goto_17

    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 1136
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_17
    return-object p0
.end method

.method public static getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1147
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1157
    invoke-static {p0}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2e

    .line 1158
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1159
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    if-ne v0, v2, :cond_19

    goto :goto_1e

    :cond_19
    const/4 v1, 0x0

    .line 1161
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_1f
    if-eq v0, v2, :cond_2b

    if-le v1, v0, :cond_24

    goto :goto_2b

    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 1166
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    .line 1164
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSize(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 1051
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 1052
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ConvertUtil;->byte2FitSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1040
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPICPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1197
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1198
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1201
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1203
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    .line 1206
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :goto_23
    return-object p0
.end method

.method public static isDir(Ljava/io/File;)Z
    .registers 2

    .line 137
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .registers 1

    .line 127
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static isFile(Ljava/io/File;)Z
    .registers 2

    .line 157
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .registers 1

    .line 147
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static isFileExists(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .registers 1

    .line 107
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static listFilesInDir(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2c

    .line 509
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 510
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 512
    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2b

    aget-object v3, p0, v2

    .line 513
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 515
    invoke-static {v3}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2b
    return-object v0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listFilesInDir(Ljava/io/File;Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 485
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p0, :cond_1d

    .line 486
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_1d

    .line 487
    :cond_10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p1

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 499
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3a

    .line 643
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 644
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 646
    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_39

    aget-object v3, p0, v2

    .line 647
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 648
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_29
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 651
    invoke-static {v3, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_39
    return-object v0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 612
    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p0, :cond_34

    .line 613
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_34

    .line 614
    :cond_10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 616
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_33

    aget-object v2, p0, v1

    .line 617
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 618
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_33
    return-object p2

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3e

    .line 577
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3e

    .line 578
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 580
    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_3d

    aget-object v3, p0, v2

    .line 581
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 582
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_2d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 585
    invoke-static {v3, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3d
    return-object v0

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 544
    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p0, :cond_38

    .line 545
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_38

    .line 546
    :cond_10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 548
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_37

    aget-object v2, p0, v1

    .line 549
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 550
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_37
    return-object p2

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FilenameFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 565
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 531
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static moveDir(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x1

    .line 387
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static moveDir(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 376
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->moveDir(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x1

    .line 409
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 398
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 805
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    invoke-static {p1}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 807
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_31

    .line 809
    :cond_21
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_30} :catch_5f
    .catchall {:try_start_6 .. :try_end_30} :catchall_5d

    move-object p1, v4

    .line 812
    :goto_31
    :try_start_31
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 813
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 816
    :cond_41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_53} :catch_5b
    .catchall {:try_start_31 .. :try_end_53} :catchall_6c

    .line 821
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object p0

    :catch_5b
    move-exception p0

    goto :goto_61

    :catchall_5d
    move-exception p0

    goto :goto_6e

    :catch_5f
    move-exception p0

    move-object p1, v0

    .line 818
    :goto_61
    :try_start_61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6c

    .line 821
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :catchall_6c
    move-exception p0

    move-object v0, p1

    :goto_6e
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 822
    throw p0
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 767
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 769
    :try_start_8
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_2c
    .catchall {:try_start_8 .. :try_end_12} :catchall_2a

    .line 771
    :goto_12
    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 772
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_28
    .catchall {:try_start_12 .. :try_end_1b} :catchall_39

    goto :goto_12

    .line 778
    :cond_1c
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_28
    move-exception p0

    goto :goto_2e

    :catchall_2a
    move-exception p0

    goto :goto_3b

    :catch_2c
    move-exception p0

    move-object v4, v3

    .line 775
    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 778
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v3

    :catchall_39
    move-exception p0

    move-object v3, v4

    :goto_3b
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 779
    throw p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 791
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2Bytes(Ljava/io/File;)[B
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 917
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/keephealth/android/util/ConvertUtil;->inputStream2Bytes(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileUtil-e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    return-object v0

    :catch_23
    move-exception p0

    .line 919
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public static readFile2Bytes(Ljava/lang/String;)[B
    .registers 1

    .line 905
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-le p1, p2, :cond_7

    return-object v0

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 876
    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 877
    invoke-static {p3}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 878
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move p0, v2

    goto :goto_31

    .line 880
    :cond_20
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_50
    .catchall {:try_start_9 .. :try_end_2f} :catchall_4e

    move p0, v2

    move-object p3, v4

    .line 882
    :goto_31
    :try_start_31
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    if-le p0, p2, :cond_3a

    goto :goto_44

    :cond_3a
    if-gt p1, p0, :cond_41

    if-gt p0, p2, :cond_41

    .line 884
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_4c
    .catchall {:try_start_31 .. :try_end_41} :catchall_5d

    :cond_41
    add-int/lit8 p0, p0, 0x1

    goto :goto_31

    .line 892
    :cond_44
    :goto_44
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p3, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v3

    :catch_4c
    move-exception p0

    goto :goto_52

    :catchall_4e
    move-exception p0

    goto :goto_5f

    :catch_50
    move-exception p0

    move-object p3, v0

    .line 889
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5d

    .line 892
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p3, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :catchall_5d
    move-exception p0

    move-object v0, p3

    :goto_5f
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 893
    throw p0
.end method

.method public static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 843
    invoke-static {p0, v0, v1, p1}, Lcom/keephealth/android/util/file/FileUtil;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 857
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/keephealth/android/util/file/FileUtil;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 832
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1214
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1215
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1217
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static searchFileInDir(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3e

    .line 678
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3e

    .line 679
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 681
    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_3d

    aget-object v3, p0, v2

    .line 682
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 683
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_2d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 686
    invoke-static {v3, p1}, Lcom/keephealth/android/util/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3d
    return-object v0

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static searchFileInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/file/FileUtil;->searchFileInDir(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static write(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    if-nez p1, :cond_6

    goto :goto_53

    .line 747
    :cond_6
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 750
    :try_start_10
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_3b
    .catchall {:try_start_10 .. :try_end_1a} :catchall_39

    const/16 p0, 0x400

    .line 751
    :try_start_1c
    new-array p2, p0, [B

    .line 753
    :goto_1e
    invoke-virtual {p1, p2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_29

    .line 754
    invoke-virtual {v4, p2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_36
    .catchall {:try_start_1c .. :try_end_28} :catchall_33

    goto :goto_1e

    .line 761
    :cond_29
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return v2

    :catchall_33
    move-exception p0

    move-object v3, v4

    goto :goto_49

    :catch_36
    move-exception p0

    move-object v3, v4

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto :goto_49

    :catch_3b
    move-exception p0

    .line 758
    :goto_3c
    :try_start_3c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    .line 761
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    aput-object v3, p0, v2

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return v0

    :goto_49
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    aput-object v3, p2, v2

    invoke-static {p2}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 762
    throw p0

    :cond_53
    :goto_53
    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .registers 3

    .line 734
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/file/FileUtil;->write(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p0

    return p0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    .line 700
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/file/FileUtil;->write(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 713
    :try_start_3
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_3a
    .catchall {:try_start_3 .. :try_end_7} :catchall_31

    if-nez v3, :cond_11

    .line 722
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return v1

    .line 714
    :cond_11
    :try_start_11
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_3a
    .catchall {:try_start_11 .. :try_end_1b} :catchall_31

    .line 715
    :try_start_1b
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 717
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_2f
    .catchall {:try_start_1b .. :try_end_24} :catchall_2c

    .line 722
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return v0

    :catchall_2c
    move-exception p0

    move-object v2, v3

    goto :goto_32

    :catch_2f
    move-object v2, v3

    goto :goto_3a

    :catchall_31
    move-exception p0

    :goto_32
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 723
    throw p0

    .line 722
    :catch_3a
    :goto_3a
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return v1
.end method
