.class public Lcom/keephealth/android/sevice/DownDataService;
.super Landroid/app/Service;
.source "DownDataService.java"


# instance fields
.field countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field index:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/keephealth/android/sevice/DownDataService;->index:I

    return-void
.end method


# virtual methods
.method checkComplete()V
    .registers 3

    .line 39
    new-instance v0, Lcom/keephealth/android/util/AsyncTaskUtil;

    new-instance v1, Lcom/keephealth/android/sevice/DownDataService$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/sevice/DownDataService$1;-><init>(Lcom/keephealth/android/sevice/DownDataService;)V

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/AsyncTaskUtil;-><init>(Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;)V

    return-void
.end method

.method getBp()V
    .registers 1

    return-void
.end method

.method getHr()V
    .registers 1

    return-void
.end method

.method getSleep()V
    .registers 1

    return-void
.end method

.method getSport()V
    .registers 1

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/sevice/DownDataService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1b

    .line 27
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/DownDataService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 28
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/DownDataService;->getSport()V

    .line 29
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/DownDataService;->getSleep()V

    .line 30
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/DownDataService;->getHr()V

    .line 31
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/DownDataService;->getBp()V

    .line 32
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/DownDataService;->checkComplete()V

    .line 34
    :cond_1b
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
