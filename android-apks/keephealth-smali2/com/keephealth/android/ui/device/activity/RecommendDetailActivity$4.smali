.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;
.super Landroid/os/Handler;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 501
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_86

    if-eq v0, v2, :cond_c

    goto/16 :goto_10b

    .line 503
    :cond_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-lt v0, v2, :cond_65

    .line 504
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 505
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$800(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  ...\u53d1\u9001\u8868\u76d8\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u5168"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const-wide/16 v0, 0x1e

    .line 511
    :try_start_50
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p1

    .line 513
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 515
    :goto_58
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 516
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialToDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$900(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    goto/16 :goto_10b

    .line 519
    :cond_65
    iget v0, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v0, v0, 0x64

    iget p1, p1, Landroid/os/Message;->arg2:I

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 520
    const-string p1, "hger3"

    const-string v0, "4"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    goto/16 :goto_10b

    .line 526
    :cond_86
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 527
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 529
    :cond_97
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->clearHttlLoad()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  ...\u53d1\u9001\u8868\u76d8\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 531
    const-string p1, "\u5347\u7ea7\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 532
    sput-boolean v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 533
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 535
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 536
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_ea

    .line 537
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 538
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100534

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 540
    :cond_ea
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    if-eqz p1, :cond_f5

    const/4 p1, -0x1

    .line 541
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 542
    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 543
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 545
    :cond_f5
    const-string p1, "hger5"

    const-string v0, "16"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    :cond_10b
    :goto_10b
    return-void
.end method
