.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 594
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

    .line 595
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 596
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 597
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 598
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 599
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 600
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 601
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 602
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100534

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 603
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 605
    :cond_59
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 606
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v0, :cond_66

    .line 607
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    const/4 v0, -0x1

    .line 608
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 609
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 611
    :cond_66
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyItemChanged(I)V

    .line 612
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    .line 613
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
