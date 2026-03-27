.class public Lcom/keephealth/android/twootablue/ota/OTAManager;
.super Ljava/lang/Object;
.source "OTAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;,
        Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;
    }
.end annotation


# static fields
.field private static final FRAME_SIZE:I = 0x100

.field private static final HANDSHAKE_TIMEOUT:I = 0x4e20

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARED:I = 0x3

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_TRANSFERRED:I = 0x5

.field public static final STATE_TRANSFERRING:I = 0x4

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OTAManager"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isStressTest:Z

.field private mAckEnable:I

.field private mBatteryThreshold:I

.field private mContext:Landroid/content/Context;

.field private mFwVersion:Ljava/lang/String;

.field private mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

.field private mInterval:I

.field private mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

.field private mOTAFileLength:J

.field private mOTAMode:I

.field private mOTARandomAccessFile:Ljava/io/RandomAccessFile;

.field private mOtaUnit:I

.field mPath:Ljava/lang/String;

.field private mPollThread:Ljava/lang/Thread;

.field private mProcessRunnable:Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;

.field private final mRemoteHandshakeTimeout:Ljava/lang/Runnable;

.field private mRestartTimeout:I

.field private mRunning:Z

.field private mSFRemoteTimeout:Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mState:I

.field private mStressVersion:F

.field private mVRAM:[B

.field private mWaitTimeout:I

.field private mWriteBytes:I

.field message:Lcom/keephealth/android/model/bean/BaseMessage;

.field remoteCrcSupport:Ljava/lang/Boolean;

.field private requestTimeOut:Ljava/lang/Runnable;

.field updateOtaProgressBean:Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)V
    .registers 6

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->handler:Landroid/os/Handler;

    .line 63
    new-instance v1, Lcom/keephealth/android/twootablue/ota/OTAManager$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager$1;-><init>(Lcom/keephealth/android/twootablue/ota/OTAManager;)V

    iput-object v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->requestTimeOut:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 70
    iput v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mState:I

    .line 73
    const-string v2, "1.01"

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mFwVersion:Ljava/lang/String;

    .line 74
    iput v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTAMode:I

    const/16 v2, 0x1e

    .line 75
    iput v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mBatteryThreshold:I

    const/16 v2, 0x10

    .line 76
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mVRAM:[B

    .line 84
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->isStressTest:Z

    const v2, 0x3f8147ae    # 1.01f

    .line 85
    iput v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mStressVersion:F

    .line 87
    new-instance v2, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;-><init>(Lcom/keephealth/android/twootablue/ota/OTAManager;)V

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mProcessRunnable:Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->remoteCrcSupport:Ljava/lang/Boolean;

    .line 518
    new-instance v2, Lcom/keephealth/android/twootablue/ota/OTAManager$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager$2;-><init>(Lcom/keephealth/android/twootablue/ota/OTAManager;)V

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRemoteHandshakeTimeout:Ljava/lang/Runnable;

    .line 105
    iput-object p2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mContext:Landroid/content/Context;

    .line 107
    iput v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mState:I

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez p1, :cond_57

    .line 109
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 111
    :cond_57
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyStatus(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/twootablue/ota/OTAManager;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/twootablue/ota/OTAManager;)Landroid/content/Context;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mInterval:I

    return p1
.end method

.method static synthetic access$1200(Lcom/keephealth/android/twootablue/ota/OTAManager;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mAckEnable:I

    return p0
.end method

.method static synthetic access$1202(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mAckEnable:I

    return p1
.end method

.method static synthetic access$1300(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyRemoteAppReady(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/twootablue/ota/OTAManager;II[BI)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/twootablue/ota/OTAManager;->readFile(II[BI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/keephealth/android/twootablue/ota/OTAManager;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mWriteBytes:I

    return p0
.end method

.method static synthetic access$1512(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I
    .registers 3

    .line 41
    iget v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mWriteBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mWriteBytes:I

    return v0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyWriteBytes(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/io/RandomAccessFile;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/twootablue/ota/OTAManager;II)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyProgress(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/twootablue/ota/OTAManager;IILjava/util/ArrayList;)[B
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleCommand(IILjava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/twootablue/ota/OTAManager;Ljava/lang/Exception;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/lang/Runnable;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->requestTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/twootablue/ota/OTAManager;)Landroid/os/Handler;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mWaitTimeout:I

    return p1
.end method

.method static synthetic access$802(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRestartTimeout:I

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/twootablue/ota/OTAManager;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    return p1
.end method

.method private assembleCommand(IILjava/util/ArrayList;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "[B>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1d

    .line 417
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 418
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 419
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_e

    :cond_1d
    move v2, v0

    :cond_1e
    const/16 v1, 0x80

    const/4 v3, 0x0

    .line 424
    invoke-direct {p0, v1, v2, v3}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleTLV(II[B)[B

    move-result-object v1

    .line 426
    array-length v3, v1

    const/4 v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v2, v3, [B

    int-to-byte p1, p1

    .line 429
    aput-byte p1, v2, v0

    int-to-byte p1, p2

    const/4 p2, 0x1

    .line 430
    aput-byte p1, v2, p2

    .line 431
    array-length p1, v1

    invoke-static {v1, v0, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    array-length p1, v1

    add-int/2addr v4, p1

    if-eqz p3, :cond_57

    .line 434
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_57

    .line 435
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 436
    array-length p3, p2

    invoke-static {p2, v0, v2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    array-length p2, p2

    add-int/2addr v4, p2

    goto :goto_44

    :cond_57
    return-object v2
.end method

.method private assembleTLV(II[B)[B
    .registers 8

    const/4 v0, 0x3

    if-nez p3, :cond_6

    .line 395
    new-array v1, v0, [B

    goto :goto_a

    .line 397
    :cond_6
    array-length v1, p3

    add-int/2addr v1, v0

    new-array v1, v1, [B

    :goto_a
    int-to-byte p1, p1

    const/4 v2, 0x0

    .line 401
    aput-byte p1, v1, v2

    int-to-byte p1, p2

    const/4 v3, 0x1

    .line 404
    aput-byte p1, v1, v3

    shr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    const/4 p2, 0x2

    .line 405
    aput-byte p1, v1, p2

    if-eqz p3, :cond_21

    .line 408
    array-length p1, p3

    if-lez p1, :cond_21

    .line 409
    array-length p1, p3

    invoke-static {p3, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    return-object v1
.end method

.method private checkRemoteStatus(Ljava/lang/String;II)V
    .registers 7

    .line 470
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleTLV(II[B)[B

    move-result-object p1

    .line 475
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 478
    new-array v0, p1, [B

    fill-array-data v0, :array_50

    .line 479
    invoke-direct {p0, p1, p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleTLV(II[B)[B

    move-result-object p1

    .line 480
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mVRAM:[B

    array-length v0, p1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleTLV(II[B)[B

    move-result-object p1

    .line 484
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-byte p1, p2

    .line 487
    new-array p2, v1, [B

    const/4 v0, 0x0

    aput-byte p1, p2, v0

    const/4 p1, 0x4

    .line 488
    invoke-direct {p0, p1, v1, p2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleTLV(II[B)[B

    move-result-object p1

    .line 489
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-array p1, v1, [B

    aput-byte v1, p1, v0

    const/16 p2, 0x9

    .line 493
    invoke-direct {p0, p2, v1, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleTLV(II[B)[B

    move-result-object p1

    .line 494
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-direct {p0, p2, v1, p3}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleCommand(IILjava/util/ArrayList;)[B

    move-result-object p1

    .line 497
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->send([BI)V

    return-void

    :array_50
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private handleException(Ljava/lang/Exception;)V
    .registers 2

    .line 921
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 922
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    return-void
.end method

.method private handshake()V
    .registers 5

    .line 205
    const-string v0, "mListener == null"

    const-string v1, "3423rew22"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x2

    .line 210
    invoke-direct {p0, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyStatus(I)V

    .line 212
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->readOTAHeader()Z

    move-result v0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, "ggrr20"

    const-string v2, "STATE_UNKNOWN_2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_34

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyStatus(I)V

    return-void

    .line 220
    :cond_34
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mFwVersion:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTAMode:I

    iget v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mBatteryThreshold:I

    invoke-direct {p0, v0, v1, v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->checkRemoteStatus(Ljava/lang/String;II)V

    .line 222
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-eqz v0, :cond_4a

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->requestTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4a
    return-void
.end method

.method private static isAndroidMainThread()Z
    .registers 2

    .line 532
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private notifyProgress(II)V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    if-eqz v0, :cond_8

    .line 329
    invoke-interface {v0, p1, p2}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onProgress(II)V

    goto :goto_f

    .line 331
    :cond_8
    const-string p1, "ggrr4"

    const-string p2, "mListener == null..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method

.method private notifyRemoteAppReady(I)V
    .registers 6

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 510
    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    .line 511
    invoke-direct {p0, v1, v1, v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleTLV(II[B)[B

    move-result-object p1

    .line 512
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x9

    .line 514
    invoke-direct {p0, p1, p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleCommand(IILjava/util/ArrayList;)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->send([BI)V

    return-void
.end method

.method private notifyStatus(I)V
    .registers 3

    .line 319
    iget v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 322
    :cond_5
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mState:I

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    if-eqz v0, :cond_e

    .line 324
    invoke-interface {v0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onStatus(I)V

    :cond_e
    return-void
.end method

.method private notifyWriteBytes(I)V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    if-eqz v0, :cond_7

    .line 337
    invoke-interface {v0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onWriteBytes(I)V

    :cond_7
    return-void
.end method

.method private readFile(II[BI)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[BI)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 356
    :cond_6
    invoke-static {p3, p4}, Lcom/keephealth/android/twootablue/ota/BitmapUtils;->getZeroBitIndexMap([BI)[I

    move-result-object p3

    .line 358
    array-length p4, p3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pkgNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "read_nick"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nick_otaunit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_40
    if-ge v2, p4, :cond_111

    .line 363
    aget v3, p3, v2

    iget v4, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    mul-int/2addr v3, v4

    sub-int v3, p2, v3

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "odd:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nick_odd"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_61

    goto/16 :goto_111

    .line 368
    :cond_61
    aget v4, p3, v2

    iget v5, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    mul-int/2addr v4, v5

    add-int/2addr v4, p1

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "o:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nick_o"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget v5, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    if-le v3, v5, :cond_80

    move v3, v5

    .line 371
    :cond_80
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nick_len"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget v5, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    new-array v6, v5, [B

    .line 374
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "buffer.len:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ";mOtaUnit:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "nick_buffer"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v5, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    int-to-long v7, v4

    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 376
    iget-object v5, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v6, v1, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "i "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " o "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkgIdx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkgNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OTAManager1"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_105

    goto :goto_111

    .line 382
    :cond_105
    new-array v4, v3, [B

    .line 383
    invoke-static {v6, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_40

    :cond_111
    :goto_111
    return-object v0
.end method

.method private readOTAHeader()Z
    .registers 7

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x4

    .line 153
    :try_start_7
    new-array v3, v2, [B

    const-wide/16 v4, 0x0

    .line 154
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-ge v0, v2, :cond_17

    return v1

    .line 159
    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 160
    const-string v4, "AOTA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    .line 162
    new-array v2, v0, [B

    .line 163
    iget-object v3, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-ge v3, v0, :cond_38

    return v1

    .line 168
    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mFwVersion:Ljava/lang/String;

    goto :goto_98

    .line 170
    :cond_40
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0xc

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-ge v0, v2, :cond_50

    return v1

    .line 176
    :cond_50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mFwVersion:Ljava/lang/String;

    .line 177
    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->isStressTest:Z

    if-eqz v0, :cond_80

    .line 178
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%1.2f"

    iget v3, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mStressVersion:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mFwVersion:Ljava/lang/String;

    .line 179
    iget v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mStressVersion:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mStressVersion:F

    const v3, 0x411fd70a    # 9.99f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_80

    .line 181
    iput v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mStressVersion:F

    .line 185
    :cond_80
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x38

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mVRAM:[B

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_91} :catch_94

    if-ge v0, v3, :cond_98

    return v1

    :catch_94
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_98
    :goto_98
    const/4 v0, 0x1

    return v0
.end method

.method private readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    .line 445
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 446
    invoke-interface {p1, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->read([BII)I

    move-result v3

    const/4 v4, 0x0

    .line 447
    const-string v5, "OTAManager"

    if-ge v3, v0, :cond_11

    .line 448
    invoke-static {v5, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->printHexBuffer(Ljava/lang/String;[B)V

    return-object v4

    :cond_11
    const/4 v0, 0x1

    .line 452
    aget-byte v0, v1, v0

    const/4 v3, 0x2

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 453
    new-array v1, v0, [B

    .line 454
    invoke-interface {p1, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->read([BII)I

    move-result p1

    if-ge p1, v0, :cond_26

    .line 456
    invoke-static {v5, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->printHexBuffer(Ljava/lang/String;[B)V

    return-object v4

    :cond_26
    return-object v1
.end method

.method private requestRemoteParameters()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 501
    invoke-direct {p0, v2, v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleCommand(IILjava/util/ArrayList;)[B

    move-result-object v0

    const/4 v1, 0x1

    .line 502
    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->send([BI)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 526
    invoke-static {}, Lcom/keephealth/android/twootablue/ota/OTAManager;->isAndroidMainThread()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 527
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method private send([BI)V
    .registers 5

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "3423rew22"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-boolean p2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    if-nez p2, :cond_2c

    .line 939
    const-string p1, "!mRunning"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 943
    :cond_2c
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->writeBuffer([B)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_46

    :catch_30
    move-exception p1

    .line 945
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "!mRunning_e:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->handleException(Ljava/lang/Exception;)V

    :goto_46
    return-void
.end method

.method private startPull()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mPollThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 236
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_17

    .line 237
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    .line 238
    const-string v0, "3423rew22"

    const-string v1, "mPollThread.getState() == Thread.State.RUNNABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_17
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    .line 243
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mProcessRunnable:Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mPollThread:Ljava/lang/Thread;

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private writeBuffer([B)V
    .registers 4

    .line 971
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/keephealth/android/twootablue/ota/OTAManager$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/twootablue/ota/OTAManager$3;-><init>(Lcom/keephealth/android/twootablue/ota/OTAManager;[B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyStatus(I)V

    return-void
.end method

.method public getOTAVersion()Ljava/lang/String;
    .registers 8

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x4

    .line 254
    :try_start_7
    new-array v3, v2, [B

    const-wide/16 v4, 0x0

    .line 255
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 257
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 258
    const-string v5, "AOTA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    .line 260
    new-array v2, v0, [B

    .line 261
    iget-object v3, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 263
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 265
    :cond_37
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0xc

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 268
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_48} :catch_49

    return-object v0

    :catch_49
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public prepare(I)V
    .registers 5

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ggrr20"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rtft8"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->startPull()V

    .line 282
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->handshake()V

    return-void
.end method

.method public release()V
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_c

    .line 311
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public setListener(Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    return-void
.end method

.method public setOTAFile(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_3d

    .line 123
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    return v0

    .line 129
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTAFileLength:J

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOTAFile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTAFileLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtft8"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_32
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3b} :catch_3d

    const/4 p1, 0x1

    return p1

    :catch_3d
    :cond_3d
    :goto_3d
    return v0
.end method

.method public setStressTest(Z)V
    .registers 2

    .line 143
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->isStressTest:Z

    const p1, 0x3c23d70a    # 0.01f

    .line 144
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mStressVersion:F

    return-void
.end method

.method public upgrade(I)V
    .registers 6

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggrr20"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 288
    :try_start_15
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyProgress(II)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_38

    :catch_20
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3423rew2r2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    :goto_38
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->requestRemoteParameters()V

    .line 296
    sget-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    if-eqz v0, :cond_48

    .line 297
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->requestTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    :cond_48
    iput p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager;->mWriteBytes:I

    return-void
.end method
