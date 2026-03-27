.class Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
.source "BluetoothLe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field final synthetic val$device:Lcom/keephealth/android/model/bean/BLEDevice;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;Lcom/keephealth/android/model/bean/BLEDevice;)V
    .registers 3

    .line 601
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->val$device:Lcom/keephealth/android/model/bean/BLEDevice;

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

    .line 628
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->val$device:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x2

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanWithAddress(Lcom/keephealth/android/model/bean/BLEDevice;I)V
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;Lcom/keephealth/android/model/bean/BLEDevice;I)V

    return-void
.end method

.method public onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 5

    if-eqz p1, :cond_4f

    .line 605
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 606
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DfuTarg"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 607
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 608
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->val$device:Lcom/keephealth/android/model/bean/BLEDevice;

    iput-object p3, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceDfuName:Ljava/lang/String;

    .line 609
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->val$device:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 p3, 0x23

    invoke-static {p2, p3}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 610
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "device.mDeviceDfuName33:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->val$device:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p3, p3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceDfuName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gff333"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;->val$device:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4f
    return-void
.end method
