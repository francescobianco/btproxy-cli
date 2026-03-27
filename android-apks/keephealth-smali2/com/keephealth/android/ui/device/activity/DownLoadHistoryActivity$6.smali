.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DownLoadHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDialToDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;[B)V
    .registers 3

    .line 465
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->val$bytes:[B

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$0$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity$6()V
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 480
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 481
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 482
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 484
    :cond_23
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 485
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 486
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_52

    const/4 v1, 0x1

    .line 487
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 488
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 490
    :cond_52
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    if-eqz v1, :cond_61

    const/4 v1, -0x1

    .line 491
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 492
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 493
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 494
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 495
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    :cond_61
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 478
    new-instance p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 468
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "c4 02 00 02 00 8a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x0

    .line 469
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 470
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->send_data_0:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1802(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I

    .line 471
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->val$bytes:[B

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDialBin([BI)V
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;[BI)V

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_38
    return-void
.end method
