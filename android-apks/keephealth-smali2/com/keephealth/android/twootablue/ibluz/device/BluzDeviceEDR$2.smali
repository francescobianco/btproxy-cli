.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluzDeviceEDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCharacteristicChanged: characteristic = ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluzDeiceEDR"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$1100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCharacteristicRead() : characteristic = ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], status = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluzDeiceEDR"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_30

    .line 152
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$900(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_42

    .line 154
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onCharacteristicRead received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCharacteristicWrite: characteristic = ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], status = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluzDeiceEDR"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3c

    const/16 p1, 0xd

    if-ne p3, p1, :cond_29

    goto :goto_3c

    .line 164
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onCharacteristicWrite received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 162
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$1000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :goto_41
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionStateChange() called with: gatt = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], status = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "], newState = ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluzDeiceEDR"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v1, 0x2

    if-ne p3, v1, :cond_52

    .line 89
    iget-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p3

    if-ne p1, p3, :cond_51

    iget-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    iget-object p3, p3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_48

    goto :goto_51

    .line 93
    :cond_48
    const-string p2, "Attempting to start service discovery"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_7c

    :cond_51
    :goto_51
    return-void

    :cond_52
    if-nez p3, :cond_7c

    .line 98
    iget-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p3

    if-ne p1, p3, :cond_76

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_76

    .line 103
    :cond_67
    const-string p1, "Disconnected from GATT server."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7c

    .line 99
    :cond_76
    :goto_76
    const-string p1, "gatt null or device mismatch"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnecting:Z

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onDescriptorRead:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluzDeiceEDR"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 6

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDescriptorWrite() called with: gatt = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], descriptor = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], status = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluzDeiceEDR"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_d7

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "android.os.Build.MANUFACTURER: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string p1, "Meizu"

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const/16 p3, 0x14

    if-eqz p1, :cond_67

    .line 192
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$1200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->setWriteMaxLength(I)V

    goto :goto_c3

    .line 193
    :cond_67
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Xiaomi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    const-string p1, "Mi-4c"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 195
    const-string p1, "mtu:20"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_c3

    .line 197
    :cond_8a
    const-string p1, "QiKU"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a8

    const-string p1, "8692-M02"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 199
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_c3

    .line 201
    :cond_a8
    const-string p1, "nick"

    const-string p3, "mtu:512"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    const/16 p3, 0x200

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    :goto_c3
    const-wide/16 v0, 0x1f4

    .line 209
    :try_start_c5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c8
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_cd

    :catch_c9
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 215
    :goto_cd
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e9

    .line 218
    :cond_d7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDescriptorWrite received:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e9
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMtuChanged() called with: gatt = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], mtu = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], status = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NICK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_33

    add-int/lit8 p2, p2, -0x5

    goto :goto_35

    :cond_33
    const/16 p2, 0x14

    .line 230
    :goto_35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onMtuChanged: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BluzDeiceEDR"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$1200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->setWriteMaxLength(I)V

    return-void
.end method

.method public onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .registers 6

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPhyUpdate txPhy: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " rxPhy: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluzDeiceEDR"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 6

    .line 112
    const-string v0, "onServicesDiscovered"

    const-string v1, "BluzDeiceEDR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eq p1, v0, :cond_10

    return-void

    .line 116
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onServicesDiscovered:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_132

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sService:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$300()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sService:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$300()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_a8

    .line 121
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_50
    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "read characteristic uuid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 125
    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicReadFifo:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$400()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$502(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 127
    const-string p2, "mCharacteristicReadFifo"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 128
    :cond_8f
    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicWriteFifo:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$600()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$702(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 131
    const-string p2, "mCharacteristicWriteFifo"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 135
    :cond_a8
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_144

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_144

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "write fifo type:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "read fifo type:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "write fifi property:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "read fifo property:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->enableCCC(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->access$800(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_144

    .line 144
    :cond_132
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onServicesDiscovered received: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    :goto_144
    return-void
.end method
