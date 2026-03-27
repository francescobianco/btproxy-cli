.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;
.super Landroid/os/AsyncTask;
.source "BluetoothLeScannerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onBatchScanResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Ljava/util/List;)V
    .registers 3

    .line 362
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;->val$results:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 362
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    .line 365
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$700(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;->val$results:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method
