.class public abstract Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
.super Lcom/keephealth/android/util/ble/bluetooth/LeListener;
.source "OnLeScanListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTag()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract onBatchScanResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onScanCompleted()V
.end method

.method public abstract onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V
.end method

.method public abstract onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)V
    .registers 2

    .line 34
    invoke-super {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->setTag(Ljava/lang/Object;)V

    return-void
.end method
