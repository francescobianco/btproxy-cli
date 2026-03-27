.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;
.super Ljava/lang/Object;
.source "BleManagerOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 361
    const-string v0, "bluetooth le scanning..."

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 363
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$102(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 366
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 367
    instance-of v4, v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v4, :cond_2a

    .line 368
    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    invoke-direct {v4, v3, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 370
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 373
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    invoke-direct {v2, v3, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7a
    return-void
.end method
