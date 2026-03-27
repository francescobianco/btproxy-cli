.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;
.super Landroid/os/AsyncTask;
.source "BluetoothLeScannerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onFoundOrLost(ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
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

.field final synthetic val$onFound:Z

.field final synthetic val$scanResult:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    .registers 4

    .line 384
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iput-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->val$onFound:Z

    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->val$scanResult:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 384
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 387
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->val$onFound:Z

    const-string v0, "FDDEE3f2"

    if-eqz p1, :cond_18

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$700(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    move-result-object p1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->val$scanResult:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {p1, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;->onScanResult(ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    .line 389
    const-string p1, "2222"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 391
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$700(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    move-result-object p1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->val$scanResult:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {p1, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;->onScanResult(ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    .line 392
    const-string p1, "3333"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const/4 p1, 0x0

    return-object p1
.end method
