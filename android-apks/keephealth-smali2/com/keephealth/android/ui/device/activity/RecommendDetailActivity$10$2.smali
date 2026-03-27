.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;
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

    .line 899
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$0$com-keephealth-android-ui-device-activity-RecommendDetailActivity$10$2()V
    .registers 5

    .line 910
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 911
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 913
    :cond_15
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/4 v0, 0x0

    .line 914
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 915
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 916
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 917
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 918
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_51

    const/4 v1, 0x1

    .line 919
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 920
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 922
    :cond_51
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 923
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    if-eqz v1, :cond_5e

    const/4 v1, -0x1

    .line 924
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 925
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 926
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 929
    :cond_5e
    const-string v0, "hger5"

    const-string v1, "12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8c

    .line 932
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8c
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u5931\u8d252_e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hh443e43e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u53d1\u9001\u5931\u8d25_e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 909
    new-instance p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    return-void
.end method
