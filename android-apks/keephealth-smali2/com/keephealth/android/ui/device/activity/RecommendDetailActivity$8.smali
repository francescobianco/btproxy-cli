.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;
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

    .line 655
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 659
    const-string v0, "3423rew22\u539f\u59cb22"

    const-string v1, "requestFaild_blemanager_writeTimeOut"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 660
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 661
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 662
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 663
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_38

    .line 664
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 665
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    const/4 v1, 0x1

    .line 666
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 667
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 669
    :cond_38
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 671
    const-string v1, "hger5"

    const-string v2, "6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    if-eqz v1, :cond_5e

    const/4 v1, -0x1

    .line 676
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 677
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 679
    :cond_5e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    return-void
.end method
