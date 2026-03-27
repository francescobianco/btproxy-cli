.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerImplJB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$000(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveRestInterval:J
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanInterval:J
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$200(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_46

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$000(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$300(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$300(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$400(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveRestInterval:J
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_46
    return-void
.end method
