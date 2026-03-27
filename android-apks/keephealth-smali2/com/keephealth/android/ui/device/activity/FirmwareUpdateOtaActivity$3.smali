.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "FirmwareUpdateOtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updateDfu(I)V
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

    .line 360
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 5

    .line 372
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 373
    const-string p1, "\u5f53\u524d\u9875\u9762 FirmwareUpdateOtaActivity: \u8fdb\u5165\u7a7a\u5347\u5347\u7ea7\u5931\u8d25"

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 376
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v1, 0xd

    invoke-static {p1, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 377
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 378
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 379
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 363
    const-string p1, "ggrrt6"

    const-string v0, "startDfu"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "c60_fail_ota"

    invoke-static {p1, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 365
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 366
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    return-void
.end method
