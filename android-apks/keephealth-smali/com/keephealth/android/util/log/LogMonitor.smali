.class public Lcom/keephealth/android/util/log/LogMonitor;
.super Ljava/lang/Object;
.source "LogMonitor.java"


# static fields
.field private static final TIME_BLOCK:J = 0x3e8L

.field private static mLogRunnable:Ljava/lang/Runnable;

.field private static sInstance:Lcom/keephealth/android/util/log/LogMonitor;


# instance fields
.field private mIoHandler:Landroid/os/Handler;

.field private mLogThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/keephealth/android/util/log/LogMonitor;

    invoke-direct {v0}, Lcom/keephealth/android/util/log/LogMonitor;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/log/LogMonitor;->sInstance:Lcom/keephealth/android/util/log/LogMonitor;

    .line 20
    new-instance v0, Lcom/keephealth/android/util/log/LogMonitor$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/log/LogMonitor$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/log/LogMonitor;->mLogRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "log"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/util/log/LogMonitor;->mLogThread:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/log/LogMonitor;->mLogThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/log/LogMonitor;->mIoHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/util/log/LogMonitor;
    .registers 1

    .line 33
    sget-object v0, Lcom/keephealth/android/util/log/LogMonitor;->sInstance:Lcom/keephealth/android/util/log/LogMonitor;

    return-object v0
.end method


# virtual methods
.method public isMonitor()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public removeMonitor()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogMonitor;->mIoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/keephealth/android/util/log/LogMonitor;->mLogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMonitor()V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/util/log/LogMonitor;->mIoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/keephealth/android/util/log/LogMonitor;->mLogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
