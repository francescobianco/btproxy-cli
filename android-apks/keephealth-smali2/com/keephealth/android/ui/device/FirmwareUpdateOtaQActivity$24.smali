.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 2

    .line 1502
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrtu5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionStateChanged-state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/16 v0, 0xe

    if-ne p2, v0, :cond_58

    .line 1508
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1509
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2902(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I

    .line 1510
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1511
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1515
    :cond_58
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 1516
    iget-object v2, v1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    if-ne v2, p1, :cond_62

    .line 1517
    iput p2, v1, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    .line 1518
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 1519
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    goto :goto_62

    :cond_86
    return-void
.end method

.method public onDiscoveryFinished()V
    .registers 5

    .line 1546
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBarScan:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1547
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 1548
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I

    move-result v0

    if-ne v0, v1, :cond_50

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1549
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_47

    .line 1551
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 1552
    :cond_47
    const-string v0, "drer4re"

    const-string v1, "sdk  reconnect  444"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d0

    .line 1553
    :cond_50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I

    move-result v0

    if-ge v0, v1, :cond_d0

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 1555
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 1556
    iget-object v2, v1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1557
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_d0

    .line 1564
    :cond_ab
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # operator++ for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2908(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I

    .line 1565
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1566
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d0
    :goto_d0
    return-void
.end method

.method public onDiscoveryStarted()V
    .registers 4

    .line 1527
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1528
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1529
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    .line 1530
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    .line 1531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_37

    goto :goto_28

    :cond_37
    const/4 v2, 0x1

    .line 1534
    invoke-virtual {p0, v1, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->onFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_28

    .line 1537
    :cond_3c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1538
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 1540
    :cond_4d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBarScan:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onFound(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 1577
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    .line 1578
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonSPP:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    if-eq v0, v3, :cond_1a

    if-eq v0, v2, :cond_1a

    return-void

    .line 1584
    :cond_1a
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    if-eq v0, v2, :cond_2c

    return-void

    .line 1591
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_125

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3e

    goto/16 :goto_125

    .line 1595
    :cond_3e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_125

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_125

    if-gtz v0, :cond_50

    goto/16 :goto_125

    .line 1603
    :cond_50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 1604
    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    return-void

    .line 1609
    :cond_77
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    new-instance v1, Lcom/keephealth/android/model/bean/DeviceEntry;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2}, Lcom/keephealth/android/model/bean/DeviceEntry;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5502(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)Lcom/keephealth/android/model/bean/DeviceEntry;

    if-eqz p1, :cond_b9

    .line 1610
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_b9

    .line 1612
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1613
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/model/bean/DeviceEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24$1;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;)V

    const/4 v1, 0x0

    const-wide/16 v4, 0x32

    .line 1622
    invoke-virtual {v0, v1, v4, v5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24$1;->sendEmptyMessageDelayed(IJ)Z

    .line 1650
    :cond_b9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 1651
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 1654
    :cond_ca
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 1655
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 1656
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_125

    if-ne p2, v3, :cond_125

    .line 1658
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    invoke-interface {p1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_125

    .line 1660
    const-string p1, "rtrtu5"

    const-string p2, "BluzConnector.connect222"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string p1, "drer4re"

    const-string p2, "sdk  reconnect  111"

    invoke-static {p1, p2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->connect(Landroid/bluetooth/BluetoothDevice;)V

    :catchall_125
    :cond_125
    :goto_125
    return-void
.end method
