.class public Lcom/keephealth/android/util/telinkota/GattConnection;
.super Lcom/keephealth/android/util/telinkota/Peripheral;
.source "GattConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG_GENERAL_ENABLE_NOTIFICATION:I = 0xe

.field private static final TAG_GENERAL_READ:I = 0xb

.field private static final TAG_GENERAL_READ_DESCRIPTOR:I = 0xd

.field private static final TAG_GENERAL_WRITE:I = 0xc

.field private static final TAG_OTA_ENABLE_NOTIFICATION:I = 0xa


# instance fields
.field private mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mServices:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 162
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clearAll(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    .line 69
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/GattConnection;->clear()V

    if-eqz p1, :cond_b

    .line 71
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/GattConnection;->forceDisconnect()V

    :cond_b
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 62
    invoke-interface {v0, v1, p0, v2}, Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;->onConnectionStateChange(ILcom/keephealth/android/util/telinkota/GattConnection;I)V

    .line 64
    :cond_9
    invoke-super {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public enableNotification(Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 6

    .line 137
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 138
    iput-object p1, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    .line 139
    iput-object p2, v0, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 140
    sget-object v1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->ENABLE_NOTIFY:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    const/16 v1, 0xe

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->sendCommand(Lcom/keephealth/android/util/telinkota/Command$Callback;Lcom/keephealth/android/util/telinkota/Command;)Z

    .line 144
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    .line 146
    :cond_1f
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 147
    sget-object v2, Lcom/keephealth/android/util/telinkota/UuidInfo;->CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 148
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 149
    iput-object p1, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    .line 150
    iput-object p2, v0, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    .line 151
    sget-object p1, Lcom/keephealth/android/util/telinkota/UuidInfo;->CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

    iput-object p1, v0, Lcom/keephealth/android/util/telinkota/Command;->descriptorUUID:Ljava/util/UUID;

    .line 152
    sget-object p1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->WRITE_DESCRIPTOR:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object p1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    const/4 p1, 0x2

    .line 153
    new-array p1, p1, [B

    fill-array-data p1, :array_48

    iput-object p1, v0, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->sendCommand(Lcom/keephealth/android/util/telinkota/Command$Callback;Lcom/keephealth/android/util/telinkota/Command;)Z

    :cond_46
    return-void

    nop

    :array_48
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public isNotificationEnable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 3

    .line 131
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onConnect()V
    .registers 1

    .line 77
    invoke-super {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->onConnect()V

    return-void
.end method

.method protected onDisconnect(I)V
    .registers 4

    .line 85
    invoke-super {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onDisconnect(I)V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/GattConnection;->connect()V

    goto :goto_1c

    .line 90
    :cond_15
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    if-eqz v0, :cond_1c

    .line 91
    invoke-interface {v0, v1, p0, p1}, Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;->onConnectionStateChange(ILcom/keephealth/android/util/telinkota/GattConnection;I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/telinkota/Peripheral;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    if-nez p3, :cond_c

    .line 125
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    if-eqz p1, :cond_c

    .line 126
    invoke-interface {p1, p2, p0}, Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;->onMtuChanged(ILcom/keephealth/android/util/telinkota/GattConnection;)V

    :cond_c
    return-void
.end method

.method protected onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .registers 6

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/telinkota/Peripheral;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    .line 116
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "onNotify: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 117
    iget-object p4, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    if-eqz p4, :cond_22

    .line 118
    invoke-interface {p4, p1, p2, p3, p0}, Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/telinkota/GattConnection;)V

    :cond_22
    return-void
.end method

.method protected onServicesDiscovered(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onServicesDiscovered(Ljava/util/List;)V

    const/16 p1, 0x205

    .line 99
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->updateMtu(I)V

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    if-eqz p1, :cond_11

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 101
    invoke-interface {p1, v0, p0, v1}, Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;->onConnectionStateChange(ILcom/keephealth/android/util/telinkota/GattConnection;I)V

    :cond_11
    return-void
.end method

.method public setConnectionCallback(Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/GattConnection;->mConnectionCallback:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    return-void
.end method

.method public updateMtu(I)V
    .registers 4

    .line 106
    invoke-static {}, Lcom/keephealth/android/util/telinkota/Command;->newInstance()Lcom/keephealth/android/util/telinkota/Command;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/keephealth/android/util/telinkota/Command$CommandType;->REQUEST_MTU:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    .line 108
    iput p1, v0, Lcom/keephealth/android/util/telinkota/Command;->mtu:I

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/telinkota/GattConnection;->sendCommand(Lcom/keephealth/android/util/telinkota/Command$Callback;Lcom/keephealth/android/util/telinkota/Command;)Z

    return-void
.end method
