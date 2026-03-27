.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "FirmwareUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->updateDfu()V
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

    .line 263
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-FirmwareUpdateActivity$3()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->startDfu()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8fdb\u5165\u5347\u7ea7\u6a21\u5f0f\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 288
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 289
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->finish()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    const/16 v0, 0x14

    .line 266
    new-array v0, v0, [B

    .line 267
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 268
    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_58

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;->access$300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v4, v3, p1

    const/16 v4, 0xe

    invoke-virtual {v0, v4, p1, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 273
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v2, v2, [Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v3, v2, p1

    const/16 v3, 0x13

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 276
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 277
    new-instance p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity$3;)V

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    :cond_58
    return-void
.end method
