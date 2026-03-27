.class public Lcom/keephealth/android/util/log/LogService;
.super Ljava/lang/Object;
.source "LogService.java"


# static fields
.field private static final FILE_NAME_PATTERN:Ljava/lang/String; = "yyyyMMdd"

.field private static final FILE_TIMESTAMP_PATTERN:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSSZ"

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final LOG_FILE_PREFIX_NAME:Ljava/lang/String; = ".log"

.field private static final TAG:Ljava/lang/String; = "[IDO_APP] LogService"

.field private static instance:Lcom/keephealth/android/util/log/LogService;

.field private static isPermissionOk:Z


# instance fields
.field private mCondition:Ljava/util/concurrent/locks/Condition;

.field private volatile mIsStopLog:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogThread:Ljava/lang/Thread;

.field private mLooperRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/log/LogService;->LINE_SEP:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/keephealth/android/util/log/LogService;

    invoke-direct {v0}, Lcom/keephealth/android/util/log/LogService;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/log/LogService;->instance:Lcom/keephealth/android/util/log/LogService;

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/keephealth/android/util/log/LogService;->isPermissionOk:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/keephealth/android/util/log/LogService;->mIsStopLog:Z

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 41
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 79
    new-instance v0, Lcom/keephealth/android/util/log/LogService$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/log/LogService$1;-><init>(Lcom/keephealth/android/util/log/LogService;)V

    iput-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLooperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/log/LogService;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/keephealth/android/util/log/LogService;->deleteOutDateLog()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/log/LogService;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/keephealth/android/util/log/LogService;->mIsStopLog:Z

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/keephealth/android/util/log/LogService;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/log/LogService;)Ljava/util/concurrent/locks/Condition;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/keephealth/android/util/log/LogService;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/log/LogService;Ljava/lang/String;)Z
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/log/LogService;->createLogFileDir(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/log/LogService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/log/LogService;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkPermission()V
    .registers 3

    .line 47
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_1c

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lcom/keephealth/android/util/log/LogService;->isPermissionOk:Z

    goto :goto_26

    :cond_1c
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/keephealth/android/util/log/LogService;->isPermissionOk:Z

    .line 53
    const-string v0, "[IDO_APP] LogService"

    const-string v1, "not allowed permission[WRITE_EXTERNAL_STORAGE, READ_EXTERNAL_STORAGE], LogTool is disabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private createLogFileDir(Ljava/lang/String;)Z
    .registers 3

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_10

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method private deleteOutDateLog()V
    .registers 9

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 240
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    return-void

    .line 246
    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 247
    :goto_2d
    array-length v3, v1

    if-ge v2, v3, :cond_10

    .line 248
    aget-object v3, v1, v2

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_60

    .line 253
    :cond_39
    invoke-direct {p0}, Lcom/keephealth/android/util/log/LogService;->getDateBefore()Ljava/util/Date;

    move-result-object v4

    .line 254
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 255
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-direct {p0, v5}, Lcom/keephealth/android/util/log/LogService;->getFileDateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 257
    invoke-virtual {v5, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 258
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_63
    return-void
.end method

.method public static destroy()V
    .registers 2

    .line 68
    const-string v0, "[IDO_APP] LogService"

    const-string v1, "destroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-boolean v0, Lcom/keephealth/android/util/log/LogService;->isPermissionOk:Z

    if-eqz v0, :cond_10

    .line 70
    sget-object v0, Lcom/keephealth/android/util/log/LogService;->instance:Lcom/keephealth/android/util/log/LogService;

    invoke-direct {v0}, Lcom/keephealth/android/util/log/LogService;->stop()V

    :cond_10
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 153
    sget-object v0, Lcom/keephealth/android/util/log/LogService;->instance:Lcom/keephealth/android/util/log/LogService;

    const-string v1, "E"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/keephealth/android/util/log/LogService;->writeLogToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDateBefore()Ljava/util/Date;
    .registers 4

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 270
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 271
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 272
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getFileDateByStr(Ljava/lang/String;)Ljava/util/Date;
    .registers 7

    monitor-enter p0

    .line 277
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 278
    const-class v1, Lcom/keephealth/android/util/log/LogService;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    .line 280
    :try_start_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 281
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_19} :catch_1c
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_26

    :catchall_1a
    move-exception p1

    goto :goto_29

    :catch_1c
    move-exception p1

    .line 283
    :try_start_1d
    const-string v2, "[IDO_APP] LogService"

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    .line 286
    monitor-exit p0

    return-object v0

    .line 285
    :goto_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_1a

    :try_start_2a
    throw p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getFileName()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 290
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 291
    const-class v1, Lcom/keephealth/android/util/log/LogService;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_32

    .line 292
    :try_start_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    .line 295
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLogPathSdcardDir()Ljava/lang/String;
    .registers 2

    .line 196
    const-string v0, "123"

    return-object v0
.end method

.method private declared-synchronized getLogTimeString()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 299
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 300
    const-class v1, Lcom/keephealth/android/util/log/LogService;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1f

    .line 301
    :try_start_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 302
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    .line 304
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static init()V
    .registers 2

    .line 58
    const-string v0, "[IDO_APP] LogService"

    const-string v1, "init..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/keephealth/android/util/log/LogService;->checkPermission()V

    .line 61
    sget-boolean v0, Lcom/keephealth/android/util/log/LogService;->isPermissionOk:Z

    if-eqz v0, :cond_13

    .line 62
    sget-object v0, Lcom/keephealth/android/util/log/LogService;->instance:Lcom/keephealth/android/util/log/LogService;

    invoke-direct {v0}, Lcom/keephealth/android/util/log/LogService;->start()V

    :cond_13
    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 157
    sget-object v0, Lcom/keephealth/android/util/log/LogService;->instance:Lcom/keephealth/android/util/log/LogService;

    const-string v1, "P"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/keephealth/android/util/log/LogService;->writeLogToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private start()V
    .registers 3

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/keephealth/android/util/log/LogService;->mIsStopLog:Z

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogThread:Ljava/lang/Thread;

    if-nez v0, :cond_10

    .line 132
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/keephealth/android/util/log/LogService;->mLooperRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogThread:Ljava/lang/Thread;

    .line 134
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1d
    return-void
.end method

.method private stop()V
    .registers 2

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/keephealth/android/util/log/LogService;->mIsStopLog:Z

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogThread:Ljava/lang/Thread;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_25

    .line 144
    :cond_e
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/keephealth/android/util/log/LogService;->mLogThread:Ljava/lang/Thread;

    :cond_25
    :goto_25
    return-void
.end method

.method private writeLogToBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 161
    sget-boolean p2, Lcom/keephealth/android/util/log/LogService;->isPermissionOk:Z

    if-nez p2, :cond_8

    .line 162
    invoke-static {}, Lcom/keephealth/android/util/log/LogService;->checkPermission()V

    return-void

    .line 165
    :cond_8
    iget-object p2, p0, Lcom/keephealth/android/util/log/LogService;->mLogThread:Ljava/lang/Thread;

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_16

    iget-boolean p2, p0, Lcom/keephealth/android/util/log/LogService;->mIsStopLog:Z

    if-eqz p2, :cond_19

    .line 166
    :cond_16
    invoke-direct {p0}, Lcom/keephealth/android/util/log/LogService;->start()V

    .line 168
    :cond_19
    invoke-direct {p0}, Lcom/keephealth/android/util/log/LogService;->getLogPathSdcardDir()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2a

    goto :goto_6b

    .line 179
    :cond_2a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/keephealth/android/util/log/LogService;->getLogTimeString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 182
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/util/log/LogService;->LINE_SEP:Ljava/lang/String;

    .line 183
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    .line 187
    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    .line 189
    iget-object p1, p0, Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 190
    iget-object p1, p0, Lcom/keephealth/android/util/log/LogService;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object p1, p0, Lcom/keephealth/android/util/log/LogService;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 192
    iget-object p1, p0, Lcom/keephealth/android/util/log/LogService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 169
    :cond_6b
    :goto_6b
    const-string p1, "[IDO_APP] LogService"

    const-string p2, "getLogPathSdcardDir or dirPath is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/keephealth/android/util/log/LogService;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "[IDO_APP] LogService"

    const/4 v2, 0x1

    if-nez p1, :cond_36

    .line 206
    :try_start_29
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_37

    :catch_2e
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    move p1, v2

    :goto_37
    if-nez p1, :cond_3f

    .line 212
    const-string p1, "create log file failed!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3f
    const/4 p1, 0x0

    .line 217
    :try_start_40
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_60
    .catchall {:try_start_40 .. :try_end_4a} :catchall_5c

    .line 218
    :try_start_4a
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_5a
    .catchall {:try_start_4a .. :try_end_4d} :catchall_70

    .line 224
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_6f

    :catch_51
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :catch_5a
    move-exception p1

    goto :goto_63

    :catchall_5c
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    goto :goto_71

    :catch_60
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    .line 220
    :goto_63
    :try_start_63
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_70

    if-eqz v3, :cond_6f

    .line 224
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_51

    :cond_6f
    :goto_6f
    return-void

    :catchall_70
    move-exception p1

    :goto_71
    if-eqz v3, :cond_7f

    :try_start_73
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7f

    :catch_77
    move-exception p2

    .line 227
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_7f
    :goto_7f
    throw p1
.end method
