.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaNewActivity.java"

# interfaces
.implements Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;
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

    .line 576
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDisconnected$0$com-keephealth-android-ui-device-activity-FirmwareUpdateOtaNewActivity$8()V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    .line 594
    const-string v0, "tttre4"

    const-string v1, "888"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnected(Lcom/keephealth/android/util/ota/Device;)V
    .registers 3

    .line 579
    const-string p1, "ggrrt6"

    const-string v0, "onConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(Lcom/keephealth/android/util/ota/Device;)V
    .registers 4

    .line 584
    const-string p1, "ggrrt6"

    const-string v0, "onDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DeviceUpdate;->setForceUpdate(Z)V

    .line 586
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DeviceUpdate;->setUpdate(Z)V

    .line 587
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 588
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 589
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->finish()V

    .line 590
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 591
    new-instance p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;)V

    const/16 v1, 0xbb8

    invoke-static {p1, v1}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    .line 596
    const-string p1, "tttre4"

    const-string v1, "AppApplication.isOtaUpdate== false   666"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    return-void
.end method

.method public onOtaStateChanged(Lcom/keephealth/android/util/ota/Device;I)V
    .registers 9

    const/4 v0, 0x2

    .line 658
    const-string v1, "tttre4"

    if-eqz p1, :cond_33

    .line 659
    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->getOtaProgress()I

    move-result v2

    if-ge v2, v0, :cond_33

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device.getOtaProgress():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->getOtaProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_33
    const-string v2, "c60_fail_ota"

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eqz p2, :cond_92

    const/4 v5, 0x1

    if-eq p2, v5, :cond_62

    if-eq p2, v0, :cond_41

    goto/16 :goto_c1

    .line 668
    :cond_41
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z
    invoke-static {p2, v5}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z

    .line 670
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->getOtaProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 671
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 672
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    goto :goto_c1

    .line 676
    :cond_62
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    const-string p2, "ota complete"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 677
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 678
    const-string p1, "AppApplication.isOtaUpdate== false   777"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 680
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 681
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z

    .line 682
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->sendNumber:I
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;I)I

    .line 683
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_c1

    .line 687
    :cond_92
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    const-string p2, "ota failure"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 688
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 689
    const-string p1, "AppApplication.isOtaUpdate== false   888"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 691
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 692
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->isReconnect:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Z)Z

    .line 693
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->sendNumber:I
    invoke-static {p1, v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;I)I

    .line 694
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_c1
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

    .line 602
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 604
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

    .line 605
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

    .line 606
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/util/ota/Device;->CHARACTERISTIC_UUID_WRITE:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 607
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

    .line 608
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    goto :goto_14

    .line 615
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

    .line 617
    sput-object p2, Lcom/keephealth/android/util/ota/Device;->SERVICE_UUID:Ljava/util/UUID;

    .line 619
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

    .line 620
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->saveFileName:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->fileName:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 623
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->readFirmware(Ljava/lang/String;)[B
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_e2

    .line 625
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;

    const-string p2, "firmware null"

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity;Ljava/lang/String;)V

    return-void

    .line 628
    :cond_e2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "path:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
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

    .line 630
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8$1;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaNewActivity$8;[B)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
