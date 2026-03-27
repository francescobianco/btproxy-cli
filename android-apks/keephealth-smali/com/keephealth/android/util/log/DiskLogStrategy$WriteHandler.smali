.class Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;
.super Landroid/os/Handler;
.source "DiskLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/log/DiskLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteHandler"
.end annotation


# static fields
.field private static final SAVE_DAYS:J = 0x240c8400L


# instance fields
.field private appName:Ljava/lang/String;

.field private fileFormat:Ljava/text/SimpleDateFormat;

.field private final folder:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 51
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd_HH"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->fileFormat:Ljava/text/SimpleDateFormat;

    .line 48
    const-string p1, "Logger"

    iput-object p1, p0, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->appName:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->appName:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p2}, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->deleteLoggerFile(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized deleteDirWhiteFile(Ljava/io/File;)V
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_38

    .line 125
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_38

    .line 128
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2d

    .line 132
    :cond_24
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 134
    invoke-direct {p0, v3}, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->deleteDirWhiteFile(Ljava/io/File;)V

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 138
    :cond_30
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    .line 139
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1

    .line 126
    :cond_38
    :goto_38
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized deleteLoggerFile(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 106
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_30

    if-nez p1, :cond_e

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 111
    array-length v0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2e

    aget-object v2, p1, v1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x240c8400

    cmp-long v3, v3, v5

    if-lez v3, :cond_2b

    .line 114
    invoke-direct {p0, v2}, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->deleteDirWhiteFile(Ljava/io/File;)V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_30

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 117
    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_e

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_e
    new-instance p1, Ljava/io/File;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->fileFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%s_%s.log"

    invoke-static {v1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->appName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    :try_start_d
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_1e

    .line 67
    :try_start_13
    invoke-direct {p0, v2, p1}, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 70
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-object v1, v2

    :catch_1e
    if-eqz v1, :cond_26

    .line 74
    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 75
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    :goto_26
    return-void
.end method
