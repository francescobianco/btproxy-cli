.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
.source "FirmwareUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->setConnectListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V
    .registers 4

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u94fe\u63a5\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 427
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 428
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 429
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    return-void
.end method

.method public onDeviceConnected()V
    .registers 2

    .line 399
    const-string v0, "\u5df2\u94fe\u63a5\u8bbe\u5907"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceConnecting()V
    .registers 2

    .line 394
    const-string v0, "\u6b63\u5728\u94fe\u63a5\u8bbe\u5907"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceDisconnected()V
    .registers 1

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V
    .registers 6

    .line 408
    const-string p1, "\u5df2\u94fe\u63a5\u8bbe\u5907"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 410
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->outActivity:Z

    .line 411
    new-instance p1, Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mDfuDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;-><init>(Ljava/lang/String;)V

    const-string v1, "DfuTarg"

    .line 412
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setDeviceName(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setKeepBond(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->saveFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->fileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setZip(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    .line 415
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_57

    .line 416
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setForeground(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    .line 417
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setDisableNotification(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    .line 419
    :cond_57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    const-class v1, Lcom/keephealth/android/ui/device/activity/DfuService;

    invoke-virtual {p1, v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->start(Landroid/content/Context;Ljava/lang/Class;)Lno/nordicsemi/android/dfu/DfuServiceController;

    return-void
.end method
