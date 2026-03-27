.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
.source "FirmwareUpdateOtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onScanCompleted()V
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 576
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7a

    .line 577
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1302(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 578
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    if-nez v0, :cond_91

    .line 579
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    .line 580
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 581
    const-string v0, "tttre4"

    const-string v2, "AppApplication.isOtaUpdate== false   888"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 583
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 584
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 585
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 586
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "c60_fail_ota"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 587
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "update_comple"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 588
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    goto :goto_91

    .line 591
    :cond_7a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # operator++ for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1308(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)I

    .line 592
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    if-nez v0, :cond_91

    .line 593
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v1, 0x6

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scan(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)V

    .line 596
    :cond_91
    :goto_91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u641c\u7d22\u5b8c\u6210...isScanSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-boolean v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrrt6"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V
    .registers 4

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u626b\u63cf\u9519\u8bef:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ff343"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 603
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->getStatus()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2d

    .line 604
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->onScanCompleted()V

    :cond_2d
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 16

    if-eqz p1, :cond_336

    .line 463
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_336

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluetoothDevice.getName():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gf3e3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x7530

    const/16 v4, 0x13

    const/16 v5, 0xf

    const-string v6, "bluetoothDevice:"

    const-string v7, "ggrrt6"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_4a

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v10, "OTA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 466
    :cond_4a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v10, "TSAMPLE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 467
    :cond_5e
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_336

    .line 468
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_336

    .line 478
    const-string v10, "gfgf433"

    const-string v11, "2222"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "bluetoothDevice.getName()\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-boolean v8, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    .line 481
    new-instance v10, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v10}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 482
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 483
    iput p2, v10, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    .line 484
    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-virtual {v10, p2}, Lcom/keephealth/android/model/bean/BLEDevice;->setmBytes([B)V

    .line 485
    invoke-virtual {v10, p3}, Lcom/keephealth/android/model/bean/BLEDevice;->setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 487
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 489
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 490
    iget-object p3, v10, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 491
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->closeGatt()V

    .line 492
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance v10, Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v11

    iget v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-direct {v10, p2, v11, v0}, Lcom/keephealth/android/util/ota/Device;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p3, v10}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device;

    .line 493
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/keephealth/android/util/ota/Device;->setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V

    .line 494
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-boolean v9, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    .line 497
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnectSuccess:Z
    invoke-static {p2, v8}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$702(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 498
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v0, v8, [Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v1, v0, v9

    invoke-virtual {p2, v5, v9, p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 500
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v0, v8, [Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v1, v0, v9

    invoke-virtual {p2, v4, v9, p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 505
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance p3, Lcom/keephealth/android/util/telinkota/GattConnection;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p3, v0}, Lcom/keephealth/android/util/telinkota/GattConnection;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$802(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/GattConnection;)Lcom/keephealth/android/util/telinkota/GattConnection;

    .line 506
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->CONN_CB:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/telinkota/GattConnection;->setConnectionCallback(Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;)V

    .line 507
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 508
    const-string p1, "connect_2:"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance p2, Lcom/keephealth/android/util/telinkota/OtaController;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/keephealth/android/util/telinkota/OtaController;-><init>(Lcom/keephealth/android/util/telinkota/GattConnection;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$902(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/OtaController;)Lcom/keephealth/android/util/telinkota/OtaController;

    .line 510
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->OTA_CB:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/telinkota/OtaController;->setOtaCallback(Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;)V

    .line 512
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_336

    .line 513
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 514
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_336

    .line 520
    :cond_1c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "  ===  "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v10, v10, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v10, v10, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_336

    .line 522
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-boolean v8, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    .line 523
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-boolean v8, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isGo1333:Z

    .line 524
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 525
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->closeGatt()V

    .line 526
    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 527
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 528
    iput p2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    .line 529
    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/keephealth/android/model/bean/BLEDevice;->setmBytes([B)V

    .line 530
    invoke-virtual {v0, p3}, Lcom/keephealth/android/model/bean/BLEDevice;->setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 532
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 533
    iget-object p3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 536
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "bluetoothDevice.getName()2\uff1a"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-boolean v9, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    .line 540
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v0, v8, [Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v1, v0, v9

    invoke-virtual {p2, v5, v9, p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 542
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v0, v8, [Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v1, v0, v9

    invoke-virtual {p2, v4, v9, p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 546
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnectSuccess:Z
    invoke-static {p2, v9}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$702(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 548
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_2e0

    .line 549
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 550
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    :cond_2e0
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance p3, Lcom/keephealth/android/util/telinkota/GattConnection;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p3, v0}, Lcom/keephealth/android/util/telinkota/GattConnection;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$802(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/GattConnection;)Lcom/keephealth/android/util/telinkota/GattConnection;

    .line 555
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->CONN_CB:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/telinkota/GattConnection;->setConnectionCallback(Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;)V

    .line 556
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 557
    const-string p1, "connect_1:"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance p2, Lcom/keephealth/android/util/telinkota/OtaController;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p3, p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/keephealth/android/util/telinkota/OtaController;-><init>(Lcom/keephealth/android/util/telinkota/GattConnection;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$902(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/OtaController;)Lcom/keephealth/android/util/telinkota/OtaController;

    .line 559
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->OTA_CB:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/telinkota/OtaController;->setOtaCallback(Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;)V

    :cond_336
    :goto_336
    return-void
.end method
