.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "FirmwareUpdateOtaQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->updateDfu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-FirmwareUpdateOtaQActivity$9()V
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->startDfu()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 5

    .line 578
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gfgf433"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 582
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v1, 0x2e

    invoke-static {p1, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    const/4 p1, 0x0

    .line 583
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 584
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 585
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    .line 586
    const-string p1, "888"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 571
    const-string p1, "gfgf433"

    const-string v0, "startDfu_2"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 573
    new-instance p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;)V

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    return-void
.end method
