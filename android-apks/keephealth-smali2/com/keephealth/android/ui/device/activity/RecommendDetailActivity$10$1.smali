.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;)V
    .registers 2

    .line 734
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$5$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$1()V
    .registers 5

    .line 0
    const/4 v0, 0x0

    .line 871
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 872
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 873
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 875
    :cond_18
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 876
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_46

    const/4 v1, 0x1

    .line 877
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 878
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 880
    :cond_46
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    if-eqz v1, :cond_51

    const/4 v1, -0x1

    .line 881
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 882
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 883
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 886
    :cond_51
    const-string v1, "hger5"

    const-string v2, "11"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 889
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 890
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_83

    .line 891
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_83
    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$1(I)V
    .registers 5

    .line 0
    if-eqz p1, :cond_5f

    .line 746
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    const-string v2, "hh443de43e"

    if-eq v0, v1, :cond_4b

    .line 747
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 748
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u8fdb\u5ea6:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string p1, "hger3"

    const-string v0, "7"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    goto :goto_5f

    .line 753
    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u8fdb\u5ea6=====:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    return-void
.end method

.method synthetic lambda$onSuccess$1$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$1()V
    .registers 3

    .line 776
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 777
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    const/4 v0, 0x0

    .line 778
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 779
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 782
    :cond_c
    const-string v0, "hger5"

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 784
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method synthetic lambda$onSuccess$2$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$1()V
    .registers 4

    .line 810
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 811
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 812
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 813
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 815
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 817
    const-string v0, "hger5"

    const-string v2, "9"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 819
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 820
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 821
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method synthetic lambda$onSuccess$3$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$1()V
    .registers 3

    .line 844
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 845
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 846
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v0, -0x1

    .line 847
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 848
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 850
    :cond_e
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 851
    const-string v0, "hger5"

    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 853
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method synthetic lambda$onSuccess$4$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$1(ILandroid/bluetooth/BluetoothGattCharacteristic;[II)V
    .registers 19

    .line 0
    move-object v0, p0

    move v1, p1

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6267\u884c\u4e00\u5305\u7684\u6570\u636eonSuccess\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  dataSize - 1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "rtft9"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mindex:I

    const-wide/16 v5, 0x3e8

    const-string v7, "\u53d1\u9001\u5931\u8d25_02"

    const v8, 0x7f100534

    const-string v9, "  fg:"

    const-string v10, "c4 02 00 03"

    const-string v11, "hh44343e"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v2, v3, :cond_149

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6267\u884c\u4e00\u5305\u7684\u6570\u636e\u6210\u529f333:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a4

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 744
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;I)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 757
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fg:I
    invoke-static {v1, v12}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1802(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I

    .line 759
    aput v12, p3, v12

    .line 760
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mindex:I

    add-int/2addr v1, v13

    .line 761
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mbytes:[B

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialBin([BI)V
    invoke-static {v2, v3, v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;[BI)V

    .line 762
    sput-boolean v12, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    goto/16 :goto_2be

    .line 763
    :cond_a4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2be

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    if-eqz v1, :cond_2be

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "characteristic.getValue().length111:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fg:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_fe

    .line 768
    sput-boolean v13, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 769
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 771
    :cond_fe
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v1, v12}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 772
    sput-boolean v12, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 774
    sput-boolean v12, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 775
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 786
    const-string v1, "hh443de43e"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sput-boolean v12, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 788
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2be

    .line 789
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2be

    :cond_149
    move/from16 v1, p4

    if-ne v1, v3, :cond_14f

    .line 796
    sput-boolean v13, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 798
    :cond_14f
    sput-boolean v13, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 799
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_231

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_231

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->saveFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 802
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v1, v12}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 803
    sput-boolean v12, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 805
    sput-boolean v12, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 807
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 808
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 809
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u53d1\u9001\u8868\u76d8\u53d1\u9001\u5b8c\u6210..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 824
    const-string v1, "\u53d1\u9001\u5b8c\u6210:"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_202

    .line 826
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 828
    :cond_202
    sput-boolean v12, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 829
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2be

    .line 830
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100538

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 831
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->notifyDial(I)V
    invoke-static {v1, v13}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)V

    goto/16 :goto_2be

    .line 834
    :cond_231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "characteristic.getValue().length222:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fg:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_27b

    .line 838
    sput-boolean v13, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 839
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 841
    :cond_27b
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v1, v12}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 842
    sput-boolean v12, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 843
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 855
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2bb

    .line 856
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    :cond_2bb
    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2be
    :goto_2be
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 5

    .line 867
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 868
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u53d1\u9001\u8868\u76d8\u53d1\u9001\u5931\u8d25_e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 870
    new-instance p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .line 737
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget v3, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$dataSize:I

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$finalJ:[I

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget v6, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$index:I

    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;ILandroid/bluetooth/BluetoothGattCharacteristic;[II)V

    invoke-static {v0}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
