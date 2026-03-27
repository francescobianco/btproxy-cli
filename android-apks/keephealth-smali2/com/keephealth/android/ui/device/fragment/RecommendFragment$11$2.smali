.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;)V
    .registers 2

    .line 1074
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$0$com-keephealth-android-ui-device-fragment-RecommendFragment$11$2()V
    .registers 5

    .line 1084
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1085
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1086
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    :cond_28
    const/4 v0, 0x0

    .line 1088
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1089
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1090
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 1091
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1092
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    .line 1093
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1094
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1096
    :cond_5e
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1097
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v1, :cond_6b

    const/4 v1, -0x1

    .line 1098
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1099
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1100
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1105
    :cond_6b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1107
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1109
    :cond_8a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u5931\u8d25e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1083
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    return-void
.end method
