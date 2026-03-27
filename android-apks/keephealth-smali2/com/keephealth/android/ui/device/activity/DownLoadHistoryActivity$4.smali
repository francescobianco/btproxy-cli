.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;
.super Landroid/os/Handler;
.source "DownLoadHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_83

    if-eq v0, v2, :cond_c

    goto/16 :goto_108

    .line 361
    :cond_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lt v0, v4, :cond_69

    .line 362
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 363
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downloadTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$700(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    :cond_29
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 366
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const-wide/16 v4, 0x1e

    .line 368
    :try_start_34
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p1

    .line 370
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 372
    :goto_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_108

    .line 375
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 376
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDialToDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$800(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    goto/16 :goto_108

    .line 379
    :cond_69
    iget v0, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v0, v0, 0x64

    iget p1, p1, Landroid/os/Message;->arg2:I

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    goto/16 :goto_108

    .line 384
    :cond_83
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->clearHttlLoad()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    .line 385
    const-string p1, "\u5347\u7ea7\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 390
    :cond_bc
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_de

    .line 391
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 392
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;)V

    .line 394
    :cond_de
    sput-boolean v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 395
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 397
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 398
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 399
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    if-eqz p1, :cond_f9

    const/4 p1, -0x1

    .line 400
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 401
    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 402
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 404
    :cond_f9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    :cond_108
    :goto_108
    return-void
.end method
