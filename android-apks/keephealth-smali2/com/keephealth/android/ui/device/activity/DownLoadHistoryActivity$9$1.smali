.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DownLoadHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$4$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity$9$1()V
    .registers 5

    .line 722
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/4 v0, 0x0

    .line 723
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 724
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 725
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 727
    :cond_1f
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 728
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4d

    const/4 v1, 0x1

    .line 729
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 730
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 732
    :cond_4d
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    if-eqz v1, :cond_5a

    const/4 v1, -0x1

    .line 733
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 734
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 735
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 736
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 739
    :cond_5a
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 741
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_83

    .line 742
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_83
    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity$9$1(I)V
    .registers 5

    .line 0
    if-eqz p1, :cond_58

    .line 601
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    const-string v2, "hgyrt"

    if-eq v0, v1, :cond_44

    .line 602
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 603
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u8fdb\u5ea6:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    goto :goto_58

    .line 607
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u8fdb\u5ea6=====:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method

.method synthetic lambda$onSuccess$1$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity$9$1()V
    .registers 3

    .line 627
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 628
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 629
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 630
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, -0x1

    .line 631
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 632
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 635
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 636
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method synthetic lambda$onSuccess$2$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity$9$1()V
    .registers 3

    .line 664
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 665
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    const/4 v0, 0x0

    .line 666
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 667
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 669
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 670
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method synthetic lambda$onSuccess$3$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity$9$1()V
    .registers 3

    .line 695
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 696
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 697
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 698
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v0, -0x1

    .line 699
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 700
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 702
    :cond_10
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 704
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 705
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 719
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u5f00\u59cb\u53d1\u9001\u5931\u8d25_e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 721
    new-instance p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 14

    .line 595
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mindex:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  dataSize - 1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$dataSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hgyrt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mindex:I

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget v3, v3, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$dataSize:I

    sub-int/2addr v3, v2

    const-wide/16 v4, 0x3e8

    const-string v6, "\u53d1\u9001\u5931\u8d25_02"

    const v7, 0x7f100534

    const-string v8, "  fg:"

    const-string v9, "c4 02 00 03"

    const-string v10, "hh44343e"

    const/4 v11, 0x0

    if-ge v0, v3, :cond_15c

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bb

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 599
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$dataSize:I

    new-instance v3, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;I)V

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 611
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fg:I
    invoke-static {p1, v11}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2102(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I

    .line 612
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aput v11, p1, v11

    .line 613
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mindex:I

    add-int/2addr p1, v2

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "i_(mindex + 1):"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$bytes:[B

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDialBin([BI)V
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;[BI)V

    .line 616
    sput-boolean v11, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    goto/16 :goto_2e6

    .line 617
    :cond_bb
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_2e6

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "characteristic.getValue().length111:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fg:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_115

    .line 622
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 623
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 625
    :cond_115
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {p1, v11}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 626
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 638
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_153

    .line 639
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 642
    :cond_153
    const-string p1, "hh443de43e"

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sput-boolean v11, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    goto/16 :goto_2e6

    .line 646
    :cond_15c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mindex:I

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget v3, v3, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$dataSize:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_16b

    .line 647
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 649
    :cond_16b
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 652
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u5b8c\u6210===:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {p1, v11}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 657
    sput-boolean v11, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 659
    sput-boolean v11, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 661
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 662
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 663
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 672
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_20d

    .line 673
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 675
    :cond_20d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24b

    .line 676
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 678
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    .line 682
    :cond_24b
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 683
    const-string p1, "\u53d1\u9001\u5b8c\u6210:"

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    sput-boolean v11, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    goto/16 :goto_2e6

    .line 686
    :cond_25b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "characteristic.getValue().length222:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fg:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2a5

    .line 690
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 691
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 693
    :cond_2a5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {p1, v11}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 694
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 707
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2e3

    .line 708
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;->this$1:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    :cond_2e3
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e6
    :goto_2e6
    return-void
.end method
