.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MineDialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-fragment-MineDialFragment$2$1(I)V
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 448
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 449
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->hideLoading()V

    .line 450
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 437
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->hideLoading()V

    .line 438
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 439
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->val$position:I

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;I)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
