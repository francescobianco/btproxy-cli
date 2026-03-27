.class public Lcom/keephealth/android/util/FileUtilsTest;
.super Ljava/lang/Object;
.source "FileUtilsTest.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1fa6

.field private static final TAG:Ljava/lang/String; = "FileUtils"

.field static fileName:Ljava/lang/String;

.field static filePath:Ljava/lang/String;

.field static filePathNew:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 42
    invoke-static {}, Lcom/keephealth/android/util/FileUtilsTest;->isNotificationEnabled()Z

    move-result v0

    return v0
.end method

.method private static isNotificationEnabled()Z
    .registers 2

    .line 299
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 302
    const-class v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public static makeDirectory(Ljava/lang/String;)V
    .registers 2

    .line 326
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_e

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void
.end method

.method public static makeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 311
    invoke-static {p0}, Lcom/keephealth/android/util/FileUtilsTest;->makeDirectory(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    :try_start_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_25

    .line 314
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_26

    :catch_24
    move-object v0, v1

    :catch_25
    move-object v1, v0

    :cond_26
    :goto_26
    return-object v1
.end method

.method public static processLargeFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 241
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v3, v1, v3

    if-gtz v3, :cond_11

    return-object p0

    :cond_11
    const-wide/32 v3, 0xfd800

    sub-long/2addr v1, v3

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keephealth/android/util/FileUtilsTest;->filePathNew:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "afeng_new.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 257
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    :try_start_2f
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_ac

    .line 261
    :try_start_34
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_a2

    .line 262
    :try_start_39
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_98

    .line 263
    :try_start_3e
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_8e

    .line 266
    :try_start_43
    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v9

    cmp-long v1, v9, v1

    if-ltz v1, :cond_7c

    const/16 v1, 0x1fa6

    .line 272
    new-array v2, v1, [B

    :goto_4f
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_69

    int-to-long v9, v1

    .line 276
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_69

    .line 277
    invoke-virtual {v6, v2, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v9, v9

    sub-long/2addr v3, v9

    goto :goto_4f

    .line 280
    :cond_69
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 281
    invoke-static {v5, p0}, Lcom/keephealth/android/util/file/FileUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_84

    .line 283
    :try_start_6f
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_8e

    :try_start_72
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_98

    :try_start_75
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_a2

    :try_start_78
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_ac

    return-object v5

    .line 268
    :cond_7c
    :try_start_7c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to skip bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v1

    .line 259
    :try_start_85
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v2

    :try_start_8a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8d
    throw v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v1

    :try_start_8f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception v2

    :try_start_94
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_97
    throw v1
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception v1

    :try_start_99
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_a1

    :catchall_9d
    move-exception v0

    :try_start_9e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a1
    throw v1
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception v0

    :try_start_a3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v1

    :try_start_a8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ab
    throw v0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method

.method private static writeBinFile([B)V
    .registers 5

    .line 290
    const-string v0, "/afeng2.txt"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->logFileUrl:Ljava/lang/String;

    .line 291
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 293
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_41} :catch_41

    :catch_41
    return-void
.end method

.method public static writeTxtToFile(ZLjava/lang/String;)V
    .registers 3

    .line 49
    new-instance v0, Lcom/keephealth/android/util/FileUtilsTest$1;

    invoke-direct {v0, p1, p0}, Lcom/keephealth/android/util/FileUtilsTest$1;-><init>(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 233
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/FileUtilsTest$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
