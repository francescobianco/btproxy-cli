.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;
.super Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 646
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

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

    .line 682
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

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

    .line 683
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v2, :cond_a

    .line 684
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onBatchScanResults(Ljava/util/List;)V

    goto :goto_a

    .line 687
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 688
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onBatchScanResults(Ljava/util/List;)V

    :cond_31
    return-void
.end method

.method public onScanFailed(I)V
    .registers 6

    .line 694
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->stopScan()V

    .line 695
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 696
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

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

    .line 697
    instance-of v3, v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v3, :cond_15

    .line 698
    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    invoke-direct {v3, p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 700
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 703
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 704
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    invoke-direct {v2, p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 706
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_64
    return-void
.end method

.method public onScanResult(ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    .registers 8

    .line 650
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_a
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 651
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v2, :cond_a

    if-eqz p2, :cond_a

    .line 653
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 655
    :try_start_28
    const-string v2, "DEE33r4D"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetoothDevice.getName()1\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callbackType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_63} :catch_a

    goto :goto_a

    .line 664
    :cond_64
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object p1

    const-string v0, "tttre4"

    if-eqz p1, :cond_a6

    if-eqz p2, :cond_ab

    .line 666
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_ab

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object p1

    if-eqz p1, :cond_ab

    .line 668
    :try_start_7c
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_91} :catch_92

    goto :goto_ab

    :catch_92
    move-exception p1

    .line 670
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mOnLeScanListener == null_e:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 675
    :cond_a6
    const-string p1, "mOnLeScanListener == null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    :goto_ab
    return-void
.end method
