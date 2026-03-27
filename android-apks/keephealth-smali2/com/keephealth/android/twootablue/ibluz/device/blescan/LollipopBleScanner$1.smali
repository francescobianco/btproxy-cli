.class Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "LollipopBleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;)Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    move-result-object v0

    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->newInstance(I)Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V

    :cond_13
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 5

    .line 29
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 30
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 31
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;)Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    :cond_22
    return-void
.end method
