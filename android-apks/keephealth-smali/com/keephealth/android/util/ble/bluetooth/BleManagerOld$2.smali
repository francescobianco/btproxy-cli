.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;
.super Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
.source "BleManagerOld.java"


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

    .line 410
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 426
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v2, :cond_a

    .line 427
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onBatchScanResults(Ljava/util/List;)V

    goto :goto_a

    .line 430
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 431
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onBatchScanResults(Ljava/util/List;)V

    :cond_31
    return-void
.end method

.method public onScanFailed(I)V
    .registers 6

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->stopScan()V

    .line 438
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$102(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 439
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 440
    instance-of v3, v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v3, :cond_15

    .line 441
    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    invoke-direct {v3, p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 443
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 446
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 447
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    invoke-direct {v2, p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 449
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_64
    return-void
.end method

.method public onScanResult(ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    .registers 7

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 414
    instance-of v1, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v1, :cond_a

    .line 415
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    goto :goto_a

    .line 418
    :cond_2c
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 419
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getRssi()I

    move-result v1

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    :cond_49
    return-void
.end method
