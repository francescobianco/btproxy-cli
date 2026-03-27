.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;
.super Landroid/bluetooth/le/ScanCallback;
.source "FirmwareUpdateOtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V
    .registers 2

    .line 801
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 871
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .registers 2

    .line 876
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 9

    .line 805
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    if-eqz p2, :cond_1eb

    .line 806
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1eb

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1eb

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1eb

    .line 808
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u56fa\u4ef6\u5347\u7ea7\u91cd\u8fde\u540d\u79f0 =="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    if-eqz p1, :cond_1e6

    .line 810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 811
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u56fa\u4ef6\u5347\u7ea7\u91cd\u8fde\u540d\u79f0device_name =="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    if-eqz p1, :cond_1e0

    .line 813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result.getDevice().getName():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5r5r5r"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TSAMPLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a3

    goto :goto_aa

    .line 858
    :cond_a3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanResuleNull(Landroid/bluetooth/le/ScanResult;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Landroid/bluetooth/le/ScanResult;)V

    goto/16 :goto_1eb

    .line 816
    :cond_aa
    :goto_aa
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_1eb

    .line 817
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1eb

    .line 818
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isCanScan:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z

    move-result v0

    if-nez v0, :cond_1eb

    .line 819
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isCanScan:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 820
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-boolean v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    .line 821
    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 822
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 823
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    .line 824
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    if-eqz v3, :cond_f2

    .line 825
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/BLEDevice;->setmBytes([B)V

    .line 827
    :cond_f2
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 828
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->refreshScanner()Z

    .line 829
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->stopScanLe()V
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    .line 831
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 832
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 833
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->closeGatt()V

    .line 834
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance v4, Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v5

    iget p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-direct {v4, v0, v5, p1}, Lcom/keephealth/android/util/ota/Device;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device;

    .line 835
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ota/Device;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ota/Device;->setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V

    .line 836
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iput-boolean v2, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    .line 838
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnectSuccess:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$702(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 839
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v3, v1, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v4, v3, v2

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v2, v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 841
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v1, v1, [Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v3, v1, v2

    const/16 v3, 0x13

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 843
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2402(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 844
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance v0, Lcom/keephealth/android/util/telinkota/GattConnection;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/telinkota/GattConnection;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$802(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/GattConnection;)Lcom/keephealth/android/util/telinkota/GattConnection;

    .line 845
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->CONN_CB:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->setConnectionCallback(Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;)V

    .line 846
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/telinkota/GattConnection;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 847
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    new-instance p2, Lcom/keephealth/android/util/telinkota/OtaController;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/keephealth/android/util/telinkota/OtaController;-><init>(Lcom/keephealth/android/util/telinkota/GattConnection;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$902(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/OtaController;)Lcom/keephealth/android/util/telinkota/OtaController;

    .line 848
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->OTA_CB:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/telinkota/OtaController;->setOtaCallback(Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;)V

    .line 849
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1eb

    .line 850
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 851
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 852
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1eb

    .line 861
    :cond_1e0
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanResuleNull(Landroid/bluetooth/le/ScanResult;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Landroid/bluetooth/le/ScanResult;)V

    goto :goto_1eb

    .line 864
    :cond_1e6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanResuleNull(Landroid/bluetooth/le/ScanResult;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Landroid/bluetooth/le/ScanResult;)V

    :cond_1eb
    :goto_1eb
    return-void
.end method
