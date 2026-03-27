.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->postCallbackError(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

.field final synthetic val$callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;->val$callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    iput p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;->val$callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;->val$errorCode:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;->onScanFailed(I)V

    return-void
.end method
