.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialToDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;[B)V
    .registers 3

    .line 604
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->val$bytes:[B

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$0$com-keephealth-android-ui-device-activity-RecommendDetailActivity$7()V
    .registers 5

    .line 619
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 620
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 621
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 622
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 623
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 624
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 625
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 626
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, 0x1

    .line 627
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 628
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 630
    :cond_49
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 631
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    if-eqz v1, :cond_59

    const/4 v1, -0x1

    .line 632
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 633
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 636
    :cond_59
    const-string v0, "hger8"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_81

    .line 639
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_81
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 618
    new-instance p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 607
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "c4 02 00 02 00 8a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3f

    const/4 p1, 0x0

    .line 608
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 609
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->send_data_0:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I

    .line 610
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->val$bytes:[B

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialBin([BI)V
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;[BI)V

    .line 611
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    const-string p1, "ggf32d"

    const-string v0, "CmdHelper.setDialInf\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void
.end method
