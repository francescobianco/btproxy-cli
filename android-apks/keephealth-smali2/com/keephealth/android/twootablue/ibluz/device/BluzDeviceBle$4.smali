.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluzDeviceBle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method clearDeviceCache()Z
    .registers 7

    const-string v0, "\u6e05\u7f13\u5b58\u5f02\u5e38:"

    .line 356
    const-class v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v1

    .line 357
    :try_start_5
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 358
    const-string v0, "ffr3ddf5t"

    const-string v2, "mBluetoothGatt == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_53

    return v3

    .line 362
    :cond_17
    :try_start_17
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string v4, "refresh"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 364
    iget-object v4, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v4}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 365
    const-string v4, "ffr3ddf5t"

    const-string v5, "\u6e05\u7f13\u5b58\u6210\u529f"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3c} :catch_3e
    .catchall {:try_start_17 .. :try_end_3c} :catchall_53

    .line 366
    :try_start_3c
    monitor-exit v1

    return v2

    :catch_3e
    move-exception v2

    .line 369
    const-string v4, "ffr3ddf5t"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_51
    monitor-exit v1

    return v3

    :catchall_53
    move-exception v0

    .line 372
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_53

    throw v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 348
    const-string p1, "ggrr9"

    const-string v0, "ble_onCharacteristicChanged..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$800(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    if-nez p3, :cond_7

    .line 330
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$600(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_7
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "status:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggrr9"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1a

    const/16 p1, 0xd

    if-ne p3, p1, :cond_1f

    .line 340
    :cond_1a
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_1f
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 9

    .line 231
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newState_bluz:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  status_bluz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drer4re"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status-ota:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   newState-ota:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drer4re5"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_47

    if-ne p3, v1, :cond_47

    goto :goto_79

    .line 237
    :cond_47
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    .line 238
    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object v4, v4, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    const-string v3, "rtrtu5"

    const-string v4, "\u8fde\u63a5\u5931\u8d25"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->clearDeviceCache()Z

    const/16 v3, 0x12d

    .line 241
    invoke-static {v3}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/16 v3, 0x12e

    .line 242
    invoke-static {v3}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 243
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    if-nez p2, :cond_72

    if-nez p3, :cond_72

    goto :goto_77

    :cond_72
    const/16 p2, 0x312

    .line 247
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 249
    :goto_77
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    :goto_79
    if-ne p3, v1, :cond_99

    .line 252
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-ne p1, p2, :cond_98

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    goto :goto_98

    .line 256
    :cond_8e
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_d3

    :cond_98
    :goto_98
    return-void

    :cond_99
    if-nez p3, :cond_bc

    .line 259
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_ac

    .line 260
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 262
    :cond_ac
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->clearDeviceCache()Z

    .line 263
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 277
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d3

    .line 279
    :cond_bc
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 280
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->clearDeviceCache()Z

    .line 281
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 286
    :cond_d3
    :goto_d3
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iput-boolean v2, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnecting:Z

    return-void
.end method

.method public onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V
    .registers 6

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 6

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ota_uuid:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ffr3ddf5ft"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_9f

    .line 385
    const-string p1, "Meizu"

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const/16 p3, 0x14

    if-eqz p1, :cond_35

    .line 388
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->setWriteMaxLength(I)V

    goto :goto_85

    .line 389
    :cond_35
    const-string p1, "Xiaomi"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    const-string p1, "Mi-4c"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 391
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_85

    .line 392
    :cond_53
    const-string p1, "QiKU"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "8692-M02"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 394
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_85

    .line 396
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 397
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    const/16 p3, 0x200

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    :goto_85
    const-wide/16 v0, 0x1f4

    .line 403
    :try_start_87
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p1

    .line 405
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 409
    :goto_8f
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    const-string p1, "ggrr4"

    const-string p2, "onDescriptorWrite_success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 5

    if-nez p3, :cond_5

    add-int/lit8 p2, p2, -0x5

    goto :goto_7

    :cond_5
    const/16 p2, 0x14

    .line 296
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mtu_finalMtu111:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "  mWriteBuffer:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
    invoke-static {p3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ggrr9"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->setWriteMaxLength(I)V

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mtu_finalMtu222:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .registers 5

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    if-nez p2, :cond_10

    .line 321
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->findServiceAndCharacteristic(Landroid/bluetooth/BluetoothGatt;)V
    invoke-static {p2, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGatt;)V

    :cond_10
    return-void
.end method
