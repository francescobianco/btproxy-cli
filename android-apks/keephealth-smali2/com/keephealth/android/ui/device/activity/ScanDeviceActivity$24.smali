.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showDialogPairing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 2

    .line 1125
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1211
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CmdHelper.setPairingcode_to_e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1213
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v0, 0x2

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->failPair(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 1128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
