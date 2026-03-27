.class public Lcom/keephealth/android/util/file/SDCardUtil;
.super Ljava/lang/Object;
.source "SDCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDataPath()Ljava/lang/String;
    .registers 2

    .line 42
    invoke-static {}, Lcom/keephealth/android/util/file/SDCardUtil;->isSDCardEnable()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "sdcard unable!"

    return-object v0

    .line 43
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeSpace()Ljava/lang/String;
    .registers 5

    .line 97
    invoke-static {}, Lcom/keephealth/android/util/file/SDCardUtil;->isSDCardEnable()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "sdcard unable!"

    return-object v0

    .line 98
    :cond_9
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/keephealth/android/util/file/SDCardUtil;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    .line 101
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    .line 102
    invoke-static {v1, v2}, Lcom/keephealth/android/util/ConvertUtil;->byte2FitSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardInfo()Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;
    .registers 5

    .line 112
    new-instance v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;-><init>(Lcom/keephealth/android/util/file/SDCardUtil$1;)V

    .line 113
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->isExist:Z

    .line 116
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 117
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->totalBlocks:J

    .line 119
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->blockByteSize:J

    .line 120
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->availableBlocks:J

    .line 121
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->availableBytes:J

    .line 122
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->freeBlocks:J

    .line 123
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->freeBytes:J

    .line 124
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/keephealth/android/util/file/SDCardUtil$SDCardInfo;->totalBytes:J

    :cond_4e
    return-object v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .registers 2

    .line 53
    invoke-static {}, Lcom/keephealth/android/util/file/SDCardUtil;->isSDCardEnable()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "sdcard unable!"

    return-object v0

    .line 54
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardPathByCmd()Ljava/lang/String;
    .registers 8

    .line 63
    invoke-static {}, Lcom/keephealth/android/util/file/SDCardUtil;->isSDCardEnable()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "sdcard unable!"

    return-object v0

    .line 64
    :cond_9
    const-string v0, "cat /proc/mounts"

    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_94
    .catchall {:try_start_12 .. :try_end_29} :catchall_92

    .line 71
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 72
    const-string v5, "sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, ".android_secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 73
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    array-length v5, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_6e

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v4, v3

    const-string v5, "/.android_secure"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_66} :catch_8f
    .catchall {:try_start_29 .. :try_end_66} :catchall_8c

    .line 85
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    .line 78
    :cond_6e
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-ne v4, v3, :cond_29

    .line 79
    const-string v0, " \u547d\u4ee4\u6267\u884c\u5931\u8d25"
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7c} :catch_8f
    .catchall {:try_start_6e .. :try_end_7c} :catchall_8c

    .line 85
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :cond_84
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    goto :goto_9f

    :catchall_8c
    move-exception v0

    move-object v4, v1

    goto :goto_b9

    :catch_8f
    move-exception v0

    move-object v4, v1

    goto :goto_95

    :catchall_92
    move-exception v0

    goto :goto_b9

    :catch_94
    move-exception v0

    .line 83
    :goto_95
    :try_start_95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_92

    .line 85
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 87
    :goto_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :goto_b9
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 86
    throw v0
.end method

.method public static isSDCardEnable()Z
    .registers 2

    .line 33
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
