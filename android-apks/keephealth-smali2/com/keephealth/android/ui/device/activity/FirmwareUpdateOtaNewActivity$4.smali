.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
.source "FirmwareUpdateOtaNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scan(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

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
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 491
    const-string v0, "gfgf433"

    const-string v1, "\u641c\u7d22\u5b8c\u6210..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V
    .registers 4

    .line 496
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

    .line 497
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 498
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->getStatus()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2b

    .line 499
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->onScanCompleted()V

    :cond_2b
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 16

    if-eqz p1, :cond_282

    .line 400
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_282

    .line 401
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

    .line 402
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x2710

    const/16 v4, 0x13

    const/16 v5, 0xf

    const-string v6, "bluetoothDevice:"

    const-string v7, "gf3e4"

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

    .line 403
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

    if-eqz v0, :cond_15b

    .line 404
    :cond_5e
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_282

    .line 405
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_282

    .line 415
    const-string v10, "gfgf433"

    const-string v11, "2222"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
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

    .line 417
    new-instance v7, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v7}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 418
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 419
    iput p2, v7, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    .line 420
    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getBytes()[B

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/keephealth/android/model/bean/BLEDevice;->setmBytes([B)V

    .line 421
    invoke-virtual {v7, p3}, Lcom/keephealth/android/model/bean/BLEDevice;->setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 422
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getScannling()Z

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 425
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 426
    iget-object p2, v7, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 427
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->closeGatt()V

    .line 428
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    new-instance p3, Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v7

    iget v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-direct {p3, p1, v7, v0}, Lcom/keephealth/android/util/ota/Device;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p2, p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device;

    .line 429
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ota/Device;->setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iput-boolean v9, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->outActivity:Z

    .line 433
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isConnectSuccess:Z
    invoke-static {p1, v8}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$702(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z

    .line 434
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array p3, v8, [Ljava/util/UUID;

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v0, p3, v9

    invoke-virtual {p1, v5, v9, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 436
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array p3, v8, [Ljava/util/UUID;

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v0, p3, v9

    invoke-virtual {p1, v4, v9, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 439
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/util/ota/Device;->connect(Landroid/content/Context;I)V

    .line 440
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_282

    .line 446
    :cond_15b
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

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v10, v10, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v10, v10, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_282

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iput-boolean v8, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isGo1333:Z

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 450
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->closeGatt()V

    .line 451
    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 452
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 453
    iput p2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    .line 454
    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/keephealth/android/model/bean/BLEDevice;->setmBytes([B)V

    .line 455
    invoke-virtual {v0, p3}, Lcom/keephealth/android/model/bean/BLEDevice;->setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 457
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 458
    iget-object p3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    .line 459
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    new-instance v0, Lcom/keephealth/android/util/ota/Device;

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v10

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object v11, v11, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget v11, v11, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-direct {v0, p2, v10, v11}, Lcom/keephealth/android/util/ota/Device;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p3, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device;

    .line 460
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/keephealth/android/util/ota/Device;->setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V

    .line 461
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "bluetoothDevice.getName()2\uff1a"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iput-boolean v9, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->outActivity:Z

    .line 465
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array p3, v8, [Ljava/util/UUID;

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v0, p3, v9

    invoke-virtual {p1, v5, v9, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 467
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array p3, v8, [Ljava/util/UUID;

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v0, p3, v9

    invoke-virtual {p1, v4, v9, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 471
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isConnectSuccess:Z
    invoke-static {p1, v9}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$702(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/util/ota/Device;->connect(Landroid/content/Context;I)V

    .line 473
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 474
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_282
    :goto_282
    return-void
.end method
