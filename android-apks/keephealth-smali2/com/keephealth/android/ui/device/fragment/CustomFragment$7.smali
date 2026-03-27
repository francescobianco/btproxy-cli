.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendQ32DialToDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

.field final synthetic val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 3

    .line 797
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 821
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 822
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 825
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 827
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 800
    new-array v0, v0, [B

    .line 801
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 v1, 0x0

    .line 802
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_54

    .line 804
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 805
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fu...............:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hh4434e"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7$1;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_54
    return-void
.end method
