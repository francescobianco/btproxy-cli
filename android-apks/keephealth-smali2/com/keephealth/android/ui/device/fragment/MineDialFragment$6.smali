.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MineDialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)V
    .registers 3

    .line 568
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->val$position:I

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$1$com-keephealth-android-ui-device-fragment-MineDialFragment$6()V
    .registers 4

    .line 598
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 599
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 601
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 602
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 603
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 604
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "run:2 \u53d1\u9001\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 606
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    :cond_41
    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-fragment-MineDialFragment$6(I)V
    .registers 4

    .line 572
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 573
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 574
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 577
    :cond_34
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 579
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 580
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 581
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 582
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 584
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)I

    move-result v0

    if-ltz v0, :cond_72

    .line 585
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->notifyItemChanged(I)V

    .line 587
    :cond_72
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->notifyItemChanged(I)V

    .line 588
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I

    .line 589
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 590
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_91
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 597
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 571
    iget p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;->val$position:I

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;I)V

    invoke-static {v0}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
