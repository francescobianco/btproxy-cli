.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplMarshmallow;
.super Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;
.source "BluetoothLeScannerImplMarshmallow.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;-><init>()V

    return-void
.end method


# virtual methods
.method protected toImpl(Landroid/bluetooth/BluetoothAdapter;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;)Landroid/bluetooth/le/ScanSettings;
    .registers 6

    .line 34
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getScanMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareBatchingIfSupported()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 37
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 39
    :cond_20
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareCallbackTypesIfSupported()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 40
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getCallbackType()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getMatchMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getNumOfMatches()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 44
    :cond_3d
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method
