.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaActivity.java"

# interfaces
.implements Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;


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

    .line 1099
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDisconnected$0$com-keephealth-android-ui-device-activity-FirmwareUpdateOtaActivity$14()V
    .registers 3

    .line 1116
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    .line 1117
    const-string v0, "tttre4"

    const-string v1, "888"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnected(Lcom/keephealth/android/util/ota/Device;)V
    .registers 3

    .line 1102
    const-string p1, "gtf5"

    const-string v0, "onConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(Lcom/keephealth/android/util/ota/Device;)V
    .registers 4

    .line 1107
    const-string p1, "gf3e3"

    const-string v0, "onDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DeviceUpdate;->setForceUpdate(Z)V

    .line 1109
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DeviceUpdate;->setUpdate(Z)V

    .line 1110
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 1111
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 1112
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    .line 1113
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 1114
    new-instance p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;)V

    const/16 v1, 0xbb8

    invoke-static {p1, v1}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    .line 1119
    const-string p1, "tttre4"

    const-string v1, "AppApplication.isOtaUpdate== false   666"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    return-void
.end method

.method public onOtaStateChanged(Lcom/keephealth/android/util/ota/Device;I)V
    .registers 9

    if-eqz p1, :cond_d5

    .line 1182
    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->getOtaProgress()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "tttre4"

    if-ge v0, v1, :cond_33

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "state:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "device.getOtaProgress():"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->getOtaProgress()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_33
    const-string v0, "c60_fail_ota"

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eqz p2, :cond_92

    const/4 v5, 0x1

    if-eq p2, v5, :cond_62

    if-eq p2, v1, :cond_41

    goto/16 :goto_d5

    .line 1193
    :cond_41
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z
    invoke-static {p2, v5}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 1195
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->getOtaProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1196
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1197
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    goto :goto_d5

    .line 1201
    :cond_62
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    const-string p2, "ota complete"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1202
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1203
    const-string p1, "AppApplication.isOtaUpdate== false   777"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1205
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1206
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 1207
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 1208
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_d5

    .line 1212
    :cond_92
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    const-string p2, "ota failure"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1213
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updaterTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$3300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1214
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1215
    const-string p1, "AppApplication.isOtaUpdate== false   888"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1217
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1218
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 1219
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 1220
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    .line 1221
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_d5
    :goto_d5
    return-void
.end method

.method public onServicesDiscovered(Lcom/keephealth/android/util/ota/Device;Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/util/ota/Device;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 1125
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1127
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "rtrtu5"

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 1128
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1129
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1130
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "characteristic.getUuid():"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    goto :goto_14

    .line 1138
    :cond_5d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "services:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  serviceUUID:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "  device.SERVICE_UUID:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "gfgf433"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_8f

    .line 1140
    sput-object p2, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    .line 1142
    :cond_8f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->saveFileName:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->fileName:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1146
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->readFirmware(Ljava/lang/String;)[B
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_e2

    .line 1148
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const-string p2, "firmware null"

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    return-void

    .line 1151
    :cond_e2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "path:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u50cf\u8bbe\u5907\u53d1\u9001\u7a7a\u5347\u6587\u4ef6\u2014\u2014firmware:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "gf3e3"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14$1;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14$1;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;[B)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
