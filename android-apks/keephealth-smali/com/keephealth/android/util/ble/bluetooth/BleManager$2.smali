.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 580
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 583
    const-string v0, "bluetooth le scanning..."

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    .line 585
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    .line 586
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    .line 587
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 588
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 589
    instance-of v3, v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v3, :cond_2a

    .line 590
    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 592
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 595
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 596
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    .line 598
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 601
    :cond_7b
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    return-void
.end method
