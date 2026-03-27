.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
.source "FirmwareUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->startDfu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onScanCompleted()V
    .registers 1

    return-void
.end method

.method public onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V
    .registers 4

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u641c\u7d22\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V

    .line 382
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 383
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 384
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 385
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    return-void
.end method

.method public onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 5

    if-eqz p1, :cond_4f

    .line 358
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 359
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DfuTarg"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 360
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mDfuDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 361
    const-string p1, "\u641c\u7d22\u5230\u8bbe\u5907"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 363
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mDfuDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mDfuDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->setConnectListener()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    :cond_4f
    return-void
.end method
