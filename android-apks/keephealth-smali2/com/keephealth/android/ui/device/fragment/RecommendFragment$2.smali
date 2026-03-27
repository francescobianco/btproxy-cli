.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->onStatusClick(Landroid/view/View;II)V
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

    .line 422
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$1$com-keephealth-android-ui-device-fragment-RecommendFragment$2()V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 449
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 450
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100534

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 452
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 454
    :cond_27
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 455
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v0, :cond_39

    .line 456
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    const/4 v0, -0x1

    .line 457
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 458
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 461
    :cond_39
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-fragment-RecommendFragment$2()V
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 427
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 429
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 430
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 431
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 432
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 433
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v0, :cond_33

    const/4 v0, -0x1

    .line 434
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 435
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 436
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 438
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 440
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 447
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 425
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
