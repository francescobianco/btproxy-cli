.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;
.super Ljava/lang/Object;
.source "RecommendDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 467
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 470
    const-string v0, "3423rew22\u539f\u59cb222"

    const-string v1, "requestFaild_blemanager_sendTimeOut"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u8868\u76d8...\u53d1\u9001\u8868\u76d8\u8d85\u65f6__sendTimeOut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 472
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 473
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 474
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 475
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 476
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 478
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 479
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100534

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 480
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 481
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 482
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v0, :cond_63

    .line 483
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    const/4 v0, -0x1

    .line 484
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 485
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 487
    :cond_63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 488
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 489
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
