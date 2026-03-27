.class public final Lcom/tamic/novate/util/LogWraper;
.super Ljava/lang/Object;
.source "LogWraper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tamic/novate/util/LogWraper$LogLevel;
    }
.end annotation


# static fields
.field public static final DEBUG_DEBUG:Z = true

.field public static final DEBUG_ERROR:Z = true

.field public static final DEBUG_EXCEPT:Z = true

.field public static final DEBUG_INFO:Z = true

.field public static final DEBUG_PERFORMENCE:Z = true

.field public static final DEBUG_VERBOSE:Z = true

.field public static final DEBUG_WARN:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "down"

.field private static mFolderName:Ljava/lang/String; = null

.field private static mIsLogToFile:Z = false

.field private static mLogFileName:Ljava/lang/String; = null

.field private static mLogFileNameLogcat:Ljava/lang/String; = null

.field private static mLogcaOutfilestream:Ljava/io/FileOutputStream; = null

.field private static mOutfilestream:Ljava/io/FileOutputStream; = null

.field private static sDebug:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Tamic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mFolderName:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fastDownlaoder_log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mLogFileName:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fastDownlaoder_lasttime_log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mLogFileNameLogcat:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 4

    .line 95
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_c

    .line 96
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 88
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_a

    .line 89
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 109
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_9

    .line 110
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 102
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_b

    .line 103
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    invoke-static {v0, v1, p0, p1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method private static doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    if-nez p2, :cond_4

    .line 233
    const-string p2, ""

    .line 236
    :cond_4
    sget-object v0, Lcom/tamic/novate/util/LogWraper$1;->$SwitchMap$com$tamic$novate$util$LogWraper$LogLevel:[I

    invoke-virtual {p0}, Lcom/tamic/novate/util/LogWraper$LogLevel;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_44

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_30

    const/4 v0, 0x4

    if-eq p0, v0, :cond_26

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    goto :goto_4d

    :cond_1c
    if-nez p3, :cond_22

    .line 267
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 269
    :cond_22
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    :cond_26
    if-nez p3, :cond_2c

    .line 260
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 262
    :cond_2c
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    :cond_30
    if-nez p3, :cond_36

    .line 253
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 255
    :cond_36
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    :cond_3a
    if-nez p3, :cond_40

    .line 246
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 248
    :cond_40
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    :cond_44
    if-nez p3, :cond_4a

    .line 239
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 241
    :cond_4a
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :goto_4d
    sget-boolean p0, Lcom/tamic/novate/util/LogWraper;->mIsLogToFile:Z

    if-eqz p0, :cond_54

    .line 277
    invoke-static {p1, p2}, Lcom/tamic/novate/util/LogWraper;->flushToFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    return-void
.end method

.method public static dumpLogcat()V
    .registers 6

    const/4 v0, 0x0

    .line 288
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_8c
    .catchall {:try_start_1 .. :try_end_b} :catchall_89

    if-nez v1, :cond_1c

    .line 321
    :try_start_d
    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1b

    .line 322
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 323
    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void

    .line 292
    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tamic/novate/util/LogWraper;->mFolderName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 299
    :cond_2c
    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_39

    .line 300
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/tamic/novate/util/LogWraper;->mLogFileNameLogcat:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    .line 303
    :cond_39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat -v time -d"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 306
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_51} :catch_8c
    .catchall {:try_start_1c .. :try_end_51} :catchall_89

    .line 308
    :try_start_51
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_55
    if-eqz v2, :cond_72

    .line 310
    sget-object v3, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 311
    sget-object v2, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    const-string v3, "\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_71} :catch_84
    .catchall {:try_start_51 .. :try_end_71} :catchall_7f

    goto :goto_55

    .line 319
    :cond_72
    :try_start_72
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 321
    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_a4

    .line 322
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 323
    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7e} :catch_a0

    goto :goto_a4

    :catchall_7f
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_a6

    :catch_84
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_8e

    :catchall_89
    move-exception v1

    move-object v2, v0

    goto :goto_a6

    :catch_8c
    move-exception v1

    move-object v2, v0

    .line 315
    :goto_8e
    :try_start_8e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_a5

    if-eqz v2, :cond_96

    .line 319
    :try_start_93
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 321
    :cond_96
    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_a4

    .line 322
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 323
    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a4
    :goto_a4
    return-void

    :catchall_a5
    move-exception v1

    :goto_a6
    if-eqz v2, :cond_ab

    .line 319
    :try_start_a8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 321
    :cond_ab
    sget-object v2, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_b9

    .line 322
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 323
    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mLogcaOutfilestream:Ljava/io/FileOutputStream;
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 327
    :cond_b9
    :goto_b9
    throw v1
.end method

.method public static e(Ljava/lang/String;)V
    .registers 4

    .line 138
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->ERROR:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 131
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->ERROR:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 145
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->ERROR:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    invoke-static {v0, v1, p0, p1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static flushToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 335
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 341
    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 348
    :cond_1d
    sget-object v0, Lcom/tamic/novate/util/LogWraper;->mOutfilestream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_2a

    .line 349
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Lcom/tamic/novate/util/LogWraper;->mLogFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tamic/novate/util/LogWraper;->mOutfilestream:Ljava/io/FileOutputStream;

    .line 351
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 352
    sget-object p1, Lcom/tamic/novate/util/LogWraper;->mOutfilestream:Ljava/io/FileOutputStream;

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 353
    sget-object p0, Lcom/tamic/novate/util/LogWraper;->mOutfilestream:Ljava/io/FileOutputStream;

    const-string p1, "\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5c
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 4

    .line 159
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_c

    .line 160
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->INFO:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 151
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_a

    .line 152
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->INFO:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 166
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_b

    .line 167
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->INFO:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    invoke-static {v0, v1, p0, p1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public static isDebug()Z
    .registers 1

    .line 83
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    return v0
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 371
    :cond_3
    :try_start_3
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_a

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    :cond_a
    const-string v0, "========================= Exception Happened !!================================"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x0

    .line 382
    :goto_1b
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    .line 383
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 387
    :cond_2a
    const-string p1, "========================= Exception Ended !!================================"

    invoke-static {p0, p1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 390
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .registers 4

    .line 116
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_c

    .line 117
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 123
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_a

    .line 124
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->DEBUG:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public static printInvokeTrace(Ljava/lang/String;)V
    .registers 5

    .line 397
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    .line 398
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_30
    return-void
.end method

.method public static printInvokeTrace(Ljava/lang/String;I)V
    .registers 6

    .line 404
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 405
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x1

    :goto_f
    if-ge v1, p1, :cond_34

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_34
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .registers 2

    .line 224
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_7

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1

    .line 76
    sput-boolean p0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    return-void
.end method

.method public static setWriteToFile(Z)V
    .registers 1

    .line 361
    sput-boolean p0, Lcom/tamic/novate/util/LogWraper;->mIsLogToFile:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 4

    .line 182
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_c

    .line 183
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->VERBOSE:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 174
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_a

    .line 175
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->VERBOSE:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 190
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_b

    .line 191
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->VERBOSE:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    invoke-static {v0, v1, p0, p1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 4

    .line 197
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_c

    .line 198
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->WARN:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 203
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_a

    .line 204
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->WARN:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 210
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_9

    .line 211
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->WARN:Lcom/tamic/novate/util/LogWraper$LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 217
    sget-boolean v0, Lcom/tamic/novate/util/LogWraper;->sDebug:Z

    if-eqz v0, :cond_b

    .line 218
    sget-object v0, Lcom/tamic/novate/util/LogWraper$LogLevel;->WARN:Lcom/tamic/novate/util/LogWraper$LogLevel;

    const-string v1, "down"

    invoke-static {v0, v1, p0, p1}, Lcom/tamic/novate/util/LogWraper;->doLog(Lcom/tamic/novate/util/LogWraper$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method
