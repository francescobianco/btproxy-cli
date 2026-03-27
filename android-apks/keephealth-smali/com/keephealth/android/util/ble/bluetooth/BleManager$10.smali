.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;
.super Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field length:I

.field length2:I

.field protected mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 1821
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;-><init>()V

    const/4 p1, 0x0

    .line 2625
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    return-void
.end method

.method static synthetic lambda$onConnectionStateChange$1()V
    .registers 1

    .line 1908
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_9

    .line 1909
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_9
    return-void
.end method

.method private readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 2369
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_11

    .line 2370
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 2371
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    if-eqz v0, :cond_11

    .line 2372
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->write([B)V

    :cond_11
    return-void
.end method

.method private writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 2525
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_18

    .line 2526
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2528
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->next()V

    goto :goto_18

    .line 2530
    :cond_12
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v0, 0x2

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristic(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)V

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method synthetic lambda$onConnectionStateChange$0$com-keephealth-android-util-ble-bluetooth-BleManager$10()V
    .registers 4

    .line 1896
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1897
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_a

    .line 1898
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnected()V

    goto :goto_a

    .line 1901
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1902
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnected()V

    :cond_31
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$2$com-keephealth-android-util-ble-bluetooth-BleManager$10()V
    .registers 4

    .line 1930
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1931
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_a

    .line 1932
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    goto :goto_a

    .line 1935
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1936
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    :cond_31
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$3$com-keephealth-android-util-ble-bluetooth-BleManager$10(I)V
    .registers 7

    .line 1978
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1979
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    const-string v3, "Error on connection state change."

    const/4 v4, 0x1

    if-eqz v2, :cond_27

    .line 1980
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v2, p1, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    .line 1984
    :cond_27
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1985
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v2, p1, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_a

    :cond_3e
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$4$com-keephealth-android-util-ble-bluetooth-BleManager$10()V
    .registers 4

    .line 2019
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2020
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_a

    .line 2021
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    goto :goto_a

    .line 2024
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2025
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    :cond_31
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$5$com-keephealth-android-util-ble-bluetooth-BleManager$10()V
    .registers 4

    .line 2057
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2058
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_a

    .line 2059
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    goto :goto_a

    .line 2062
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2063
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    :cond_31
    return-void
.end method

.method synthetic lambda$onReadRemoteRssi$7$com-keephealth-android-util-ble-bluetooth-BleManager$10(I)V
    .registers 5

    .line 2718
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2719
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;

    if-eqz v2, :cond_a

    .line 2720
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;

    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUtils;->getDistance(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;->onSuccess(II)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method synthetic lambda$onServicesDiscovered$6$com-keephealth-android-util-ble-bluetooth-BleManager$10(Landroid/bluetooth/BluetoothGatt;)V
    .registers 14

    .line 2240
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x309

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2241
    instance-of v7, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v7, :cond_a

    .line 2242
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V

    .line 2243
    sput-boolean v6, Lcom/keephealth/android/app/AppApplication;->bleConnectSuccess:Z

    .line 2245
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 2247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGattService;

    .line 2248
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 2249
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v10, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/4 v11, 0x5

    invoke-virtual {v8, v11, v5, v9, v10}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2251
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v10, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/4 v11, 0x6

    invoke-virtual {v8, v11, v6, v9, v10}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2253
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2256
    :cond_62
    iget-object v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-boolean v8, v8, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isPairSuccess:Z

    if-nez v8, :cond_2f

    .line 2257
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 2263
    iget-object v7, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isNeedPair:Z
    invoke-static {v7, v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    goto :goto_2f

    .line 2267
    :cond_7a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v7, v6, [Ljava/util/UUID;

    sget-object v8, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v8, v7, v5

    const/16 v8, 0x8

    invoke-virtual {v1, v8, v6, v2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2269
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD:Ljava/util/UUID;

    new-array v7, v6, [Ljava/util/UUID;

    sget-object v9, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD_READ:Ljava/util/UUID;

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v6, v2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2273
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReconnect(Z)V

    .line 2275
    :try_start_a1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a4
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a4} :catch_a6

    goto/16 :goto_a

    :catch_a6
    move-exception v1

    .line 2277
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 2283
    :cond_ac
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_184

    .line 2284
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V

    .line 2285
    sput-boolean v6, Lcom/keephealth/android/app/AppApplication;->bleConnectSuccess:Z

    .line 2287
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 2289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 2290
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    invoke-virtual {v1, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 2291
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v8, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v5, v7, v8}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2293
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v8, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v6, v7, v8}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2295
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2298
    :cond_fa
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-boolean v1, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isPairSuccess:Z

    if-nez v1, :cond_111

    .line 2299
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    invoke-virtual {v1, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 2300
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isNeedPair:Z
    invoke-static {v1, v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2305
    :cond_111
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$4100()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 2306
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v8, v6, [Ljava/util/UUID;

    sget-object v9, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v9, v8, v5

    invoke-virtual {v1, v6, v6, v7, v8}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2309
    :cond_12e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD:Ljava/util/UUID;

    invoke-virtual {v1, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 2310
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD:Ljava/util/UUID;

    new-array v8, v6, [Ljava/util/UUID;

    sget-object v9, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD_READ:Ljava/util/UUID;

    aput-object v9, v8, v5

    const/4 v9, 0x7

    invoke-virtual {v1, v9, v6, v7, v8}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 2313
    :cond_14a
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onServicesDiscovered: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c7

    .line 2315
    :cond_16a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReconnect(Z)V

    .line 2317
    :try_start_171
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_174
    .catch Ljava/lang/InterruptedException; {:try_start_171 .. :try_end_174} :catch_175

    goto :goto_179

    :catch_175
    move-exception p1

    .line 2319
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2322
    :goto_179
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "discoverService"

    const-string v1, "true"

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    :cond_184
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isNeedPair:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    const-string v0, "isAutoTelp"

    if-nez p1, :cond_1e0

    .line 2326
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2327
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isPairSuccess:Z

    .line 2329
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "firstUnband"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x29a

    if-nez p1, :cond_1d8

    const/16 p1, 0x397

    .line 2333
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2334
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "sevicediscover_1212"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2337
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    if-eqz p1, :cond_1ed

    .line 2338
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_1ed

    .line 2342
    :cond_1d8
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    if-eqz p1, :cond_1ed

    .line 2343
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_1ed

    .line 2348
    :cond_1e0
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1ed
    :goto_1ed
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 14

    .line 2539
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6536\u5230\u539f\u59cb\u6570\u636e:---"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " -- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "drer4re"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2540
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    const/16 v0, 0x14

    .line 2541
    new-array v1, v0, [B

    .line 2542
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v2

    .line 2543
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 2545
    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object v3, v3, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-virtual {v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->isDeviceControl([B)Z

    move-result v3

    .line 2547
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object v4, v4, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-virtual {v4, v2}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->isDeviceControlSport([B)Z

    move-result v4

    .line 2549
    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object v5, v5, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-virtual {v5, v2}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->isDeviceQuitSport([B)Z

    move-result v5

    .line 2550
    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eqz p2, :cond_117

    .line 2552
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    if-eqz v8, :cond_117

    .line 2553
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x13

    const/4 v10, 0x3

    if-le v8, v9, :cond_b9

    .line 2554
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    aget-byte v8, v8, p1

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_b9

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_b9

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v7, :cond_b9

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    const/4 v9, 0x6

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v6, :cond_b9

    .line 2555
    iget-object v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2558
    :cond_b9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    array-length v8, v8

    if-le v8, v10, :cond_f6

    .line 2559
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/util/ByteReceiveBackUtils;->byteEqualReceive([B)Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 2560
    new-array v8, v7, [B

    .line 2561
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    aput-byte v9, v8, v10

    .line 2562
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    aget-byte v9, v9, v7

    aput-byte v9, v8, p1

    .line 2563
    invoke-static {v8, p1, v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->BinToInt([BII)I

    move-result v8

    iput v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length:I

    .line 2564
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    array-length v8, v8

    iput v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length2:I

    goto :goto_100

    .line 2566
    :cond_eb
    iget v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length2:I

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length2:I

    goto :goto_100

    .line 2569
    :cond_f6
    iget v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length2:I

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length2:I

    .line 2571
    :goto_100
    iget v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length:I

    iget v9, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->length2:I

    add-int/lit8 v9, v9, -0x4

    if-ne v8, v9, :cond_117

    .line 2572
    iget-object v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2578
    :cond_117
    sget-boolean v8, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez v8, :cond_11d

    .line 2579
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    :cond_11d
    if-eqz v3, :cond_12b

    .line 2583
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->handlerData([B)V

    goto :goto_185

    :cond_12b
    if-nez v4, :cond_161

    if-eqz v5, :cond_130

    goto :goto_161

    .line 2601
    :cond_130
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object p1

    if-eqz p1, :cond_141

    .line 2602
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 2605
    :cond_141
    :try_start_141
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14b
    :goto_14b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2606
    instance-of v1, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v1, :cond_14b

    .line 2607
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    invoke-virtual {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_160} :catch_185

    goto :goto_14b

    :cond_161
    :goto_161
    if-eqz v4, :cond_17e

    .line 2588
    aget-byte p1, v2, v6

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v7, :cond_174

    .line 2589
    new-instance p1, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 v0, 0x3ff

    invoke-direct {p1, v0, v2}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 2590
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    goto :goto_17e

    .line 2592
    :cond_174
    new-instance p1, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 v0, 0x400

    invoke-direct {p1, v0, v2}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 2593
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    :cond_17e
    :goto_17e
    if-eqz v5, :cond_185

    const/16 p1, 0x402

    .line 2598
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2614
    :catch_185
    :cond_185
    :goto_185
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_194

    .line 2615
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_194

    .line 2616
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_194
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 9

    .line 2380
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    const/4 p1, 0x5

    if-nez p3, :cond_108

    .line 2384
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2600()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_fa

    .line 2385
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p3

    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUtils;->bytes2IntegerList([B)Ljava/util/List;

    move-result-object p3

    .line 2386
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v1, v3

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMin:D
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2702(Lcom/keephealth/android/util/ble/bluetooth/BleManager;D)D

    .line 2387
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, v3

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMax:D
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;D)D

    .line 2388
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    const/4 v1, 0x4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->slaveLatency:I
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2902(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I

    .line 2389
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v0, 0x7

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    const/4 v1, 0x6

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr v0, p3

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connSupervisionTimeout:I
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3002(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I

    .line 2390
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2600()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setUUID(Ljava/util/UUID;)V

    .line 2391
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMin:D
    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setConnIntervalMin(D)V

    .line 2392
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMax:D
    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setConnIntervalMax(D)V

    .line 2393
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    const-string p3, "READ"

    invoke-virtual {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setProperties(Ljava/lang/String;)V

    .line 2394
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->slaveLatency:I
    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setSlaveLatency(I)V

    .line 2395
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connSupervisionTimeout:I
    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setSupervisionTimeout(I)V

    .line 2396
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMax:D
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)D

    move-result-wide v0

    double-to-int p3, v0

    add-int/lit8 p3, p3, 0x32

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->autoQueueInterval:I
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I

    goto :goto_104

    .line 2398
    :cond_fa
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 2414
    :goto_104
    invoke-direct {p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_11f

    :cond_108
    if-ne p3, p1, :cond_115

    .line 2417
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$2;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    goto :goto_11f

    .line 2435
    :cond_115
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 2453
    :goto_11f
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 7

    .line 2458
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    if-nez p3, :cond_9a

    .line 2460
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FirmwareUpdateOtaQActivity.this:---"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "drer4re"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2462
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    const/4 p1, 0x0

    .line 2463
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isWriteSuccess:Z

    if-eqz p2, :cond_66

    .line 2464
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_66

    .line 2465
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte p1, v0, p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_66

    .line 2466
    const-string p1, "courseviewmodel"

    const-string v0, "removeCallbacks444"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_66
    const/16 p1, 0x14

    .line 2471
    new-array v0, p1, [B

    .line 2472
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 2473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u6307\u4ee4\u5230\u624b\u73af==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    .line 2477
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object v1, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->handlerData([B)V

    goto :goto_b2

    :cond_9a
    const/4 p1, 0x5

    if-ne p3, p1, :cond_a8

    .line 2481
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$4;

    invoke-direct {v0, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    goto :goto_b2

    .line 2499
    :cond_a8
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;

    invoke-direct {v0, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 2515
    :goto_b2
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_c5

    .line 2516
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_c5

    if-eqz p3, :cond_c2

    const/16 p1, 0xd

    if-ne p3, p1, :cond_c5

    .line 2518
    :cond_c2
    invoke-direct {p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_c5
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 12

    .line 1827
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 1830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   newState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drer4re5"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mGattCallback-hash------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drer4re"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionStateChange: \u84dd\u7259\u72b6\u6001 -- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLEMANAGER"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 1834
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1835
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1836
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 1837
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClearDevice:Z

    if-nez v2, :cond_3ef

    .line 1838
    const-string v2, "c60_fail_ota"

    const-string v3, "  status:"

    const/4 v4, 0x2

    if-nez p2, :cond_c1

    if-ne p3, v4, :cond_c1

    .line 1839
    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "isRefresh"

    invoke-static {v5, v6, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1840
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8bbe\u5907\u84dd\u7259\u8fde\u63a5\u6210\u529f: newState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1841
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_f8

    .line 1843
    :cond_c1
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    .line 1844
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    .line 1845
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\u8bbe\u5907\u84dd\u7259\u65ad\u5f00\u8fde\u63a5: newState:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1846
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isScanQrActivity:Z

    if-eqz v1, :cond_ea

    .line 1848
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isScanQrActivity:Z

    const/16 v1, 0x132

    .line 1849
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_ea
    const/16 v1, 0x270a

    .line 1851
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1852
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onConnectionStateChangeFirmwareUpdateOtaQActivity.this: \u65ad\u5f00\u8fde\u63a5"

    invoke-static {v1, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    :goto_f8
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrnoTwo:Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_160

    if-ne p3, v4, :cond_160

    .line 1856
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 1858
    :try_start_102
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_14f

    .line 1859
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1860
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1861
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$602(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1862
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2, v5}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$602(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_13b} :catch_13c

    goto :goto_14f

    :catch_13c
    move-exception v2

    .line 1865
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "discoverServiceClear-e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_14f
    :goto_14f
    const/16 v2, 0x2708

    .line 1868
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1869
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    const/16 v5, 0x35

    invoke-static {v2, v5}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    goto :goto_19a

    .line 1872
    :cond_160
    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 1874
    const-string v2, "gf3e3"

    const-string v5, "ble_disconnect..."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x535

    .line 1875
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1877
    :cond_178
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1878
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isClearDevice:Z

    const/16 v2, 0x12d

    .line 1879
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/16 v2, 0x12e

    .line 1880
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1881
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    const/16 v2, 0x3e7

    .line 1882
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1883
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    const/16 v2, 0x2317

    .line 1884
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1885
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeGatt()V

    :goto_19a
    const/4 v2, 0x3

    .line 1887
    const-string v5, "444"

    const-string v6, "connect_1"

    const-string v7, "The BluetoothGatt already exist, set it close() and null."

    if-nez p2, :cond_299

    if-ne p3, v4, :cond_1eb

    .line 1889
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1890
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    .line 1891
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1892
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->stopScan()V

    .line 1894
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_1be

    .line 1895
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 1906
    :cond_1be
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "current"

    invoke-static {p1, p2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1907
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1914
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isReadRssi:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    if-eqz p1, :cond_3ef

    .line 1915
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelReadRssiTimerTask()V

    .line 1916
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiTimerTask()V
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    goto/16 :goto_3ef

    :cond_1eb
    if-nez p3, :cond_24b

    .line 1920
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1921
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 1922
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 1923
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 1924
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1925
    sput v3, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 1926
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2302(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 1929
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 1939
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p2, p3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 1949
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p2, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 1950
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 1952
    :try_start_229
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_22c
    .catch Ljava/lang/NullPointerException; {:try_start_229 .. :try_end_22c} :catch_22c

    .line 1956
    :catch_22c
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 1957
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3ef

    .line 1958
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1960
    :try_start_242
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_247
    .catch Ljava/lang/NullPointerException; {:try_start_242 .. :try_end_247} :catch_247

    .line 1964
    :catch_247
    sput-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_3ef

    .line 1970
    :cond_24b
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1971
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z
    invoke-static {p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 1972
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 1973
    sput v3, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 1974
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 1975
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1977
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 1990
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_3ef

    .line 1991
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1992
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 1993
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 1994
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 1995
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3ef

    .line 1996
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1998
    :try_start_290
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_295
    .catch Ljava/lang/NullPointerException; {:try_start_290 .. :try_end_295} :catch_295

    .line 2002
    :catch_295
    sput-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_3ef

    :cond_299
    const/16 p3, 0x13

    const/4 v4, 0x5

    if-ne p2, p3, :cond_2f5

    .line 2008
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 2009
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2010
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 2011
    sput v3, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 2013
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2014
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 2015
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2302(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2018
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 2028
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_3ef

    .line 2029
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2030
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 2031
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 2032
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 2033
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3ef

    .line 2034
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2036
    :try_start_2ee
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_2f3
    .catch Ljava/lang/NullPointerException; {:try_start_2ee .. :try_end_2f3} :catch_3ef

    goto/16 :goto_3ef

    :cond_2f5
    const/16 p3, 0x8

    if-ne p2, p3, :cond_353

    .line 2045
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 2047
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2048
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 2049
    sput v3, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 2051
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2052
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 2053
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2302(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2056
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 2066
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_3ef

    .line 2067
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2068
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 2069
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 2070
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 2071
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3ef

    .line 2072
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2074
    :try_start_34a
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_34f
    .catch Ljava/lang/NullPointerException; {:try_start_34a .. :try_end_34f} :catch_34f

    .line 2078
    :catch_34f
    sput-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_3ef

    :cond_353
    const/16 v2, 0x16

    if-ne p2, v2, :cond_3a1

    .line 2084
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isPair:Z

    .line 2086
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 2087
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2088
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 2089
    sput v3, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 2090
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2091
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 2093
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_3ef

    .line 2094
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2095
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 2096
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 2097
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 2098
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3ef

    .line 2099
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2101
    :try_start_394
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_399
    .catch Ljava/lang/NullPointerException; {:try_start_394 .. :try_end_399} :catch_399

    .line 2105
    :catch_399
    sput-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2106
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    goto :goto_3ef

    .line 2112
    :cond_3a1
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 2113
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2114
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 2115
    sput v3, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 2116
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2117
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 2119
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_3ef

    .line 2120
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2121
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 2122
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 2123
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 2124
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3ef

    .line 2125
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2127
    :try_start_3db
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_3e0
    .catch Ljava/lang/NullPointerException; {:try_start_3db .. :try_end_3e0} :catch_3e0

    .line 2131
    :catch_3e0
    sput-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2132
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2133
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result p1

    if-eqz p1, :cond_3ef

    .line 2134
    sput v3, Lcom/keephealth/android/app/AppApplication;->bleReceiveDisConnect:I

    :catch_3ef
    :cond_3ef
    :goto_3ef
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 2623
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 6

    .line 2629
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 2632
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3600()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_75

    .line 2633
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->canSendData:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3702(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2636
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 2637
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isNeedPair:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 2639
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->isPairSuccess:Z

    .line 2641
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "firstUnband"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6a

    const/16 p1, 0x397

    .line 2645
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2646
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "onDescriptorWrite_1212"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_6f

    :cond_6a
    const/16 p1, 0x29a

    .line 2649
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2653
    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v0, -0x1

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enablePair:I
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3902(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I

    .line 2656
    :cond_75
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    if-nez p3, :cond_da

    .line 2659
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_da

    .line 2660
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_da

    .line 2664
    const-string p1, "Meizu"

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_cc

    .line 2668
    :cond_91
    const-string p1, "Xiaomi"

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p3, 0x14

    if-eqz p1, :cond_ad

    const-string p1, "Mi-4c"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 2670
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_cc

    .line 2671
    :cond_ad
    const-string p1, "QiKU"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    const-string p1, "8692-M02"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 2673
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_cc

    .line 2675
    :cond_c7
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 2683
    :goto_cc
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$6;

    invoke-direct {p2, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$6;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2704
    :cond_da
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$3400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 2729
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 2730
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_21

    .line 2731
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_21

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    if-eqz p1, :cond_21

    if-nez p3, :cond_16

    add-int/lit8 p2, p2, -0x5

    goto :goto_18

    :cond_16
    const/16 p2, 0x14

    .line 2736
    :goto_18
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    if-eqz p1, :cond_21

    .line 2737
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->setWriteMaxLength(I)V

    :cond_21
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 2715
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    if-nez p3, :cond_f

    .line 2717
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3

    .line 2710
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 8

    .line 2150
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    const/4 v0, 0x0

    .line 2165
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FirmwareUpdateOtaQActivity.this onConnectionStateChange: \u670d\u52a1\u72b6\u6001 -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLEMANAGER"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v1, :cond_25

    return-void

    .line 2170
    :cond_25
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    if-nez v1, :cond_2c

    .line 2171
    invoke-static {}, Lcom/keephealth/android/app/ActivityCollector;->finishAll()V

    .line 2173
    :cond_2c
    const-string v1, "discoverService"

    if-nez p2, :cond_176

    .line 2174
    const-string p2, "success with find services discovered ."

    invoke-static {p2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 2175
    const-string p2, "hfgffr2"

    const-string v2, "\u53d1\u73b0\u670d\u52a1\u6210\u529f.........22222.........."

    invoke-static {p2, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceTrue()V

    .line 2177
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p2

    if-eqz p2, :cond_53

    .line 2178
    sget-object p2, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v2, 0x14

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 2179
    const-string p2, "drer4re"

    const-string v2, "requestMtu---20:"

    invoke-static {p2, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    :cond_53
    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_88

    .line 2182
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_88

    move v2, v0

    .line 2183
    :goto_62
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_88

    .line 2184
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2185
    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->gattService:Landroid/bluetooth/BluetoothGattService;
    invoke-static {v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2502(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 2189
    :cond_88
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->gattService:Landroid/bluetooth/BluetoothGattService;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c0

    .line 2190
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c0

    move v2, v0

    .line 2191
    :goto_9b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c0

    .line 2192
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 2193
    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v4, v3, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 2197
    :cond_c0
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object p2

    const-string v2, "bleReceiveDisConnect"

    invoke-static {p2, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2199
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "true"

    invoke-static {p2, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    sput v0, Lcom/keephealth/android/app/AppApplication;->bleReceiveDisConnect:I

    const/4 p2, 0x1

    .line 2201
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->requestBleSuccess:Z

    .line 2202
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    const-wide/16 v0, 0x28

    .line 2204
    :try_start_e0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e3
    .catch Ljava/lang/InterruptedException; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_e8

    :catch_e4
    move-exception v0

    .line 2206
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2208
    :goto_e8
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z
    invoke-static {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2302(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2214
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_14f

    .line 2219
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_147

    .line 2220
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_147

    .line 2221
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_156

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_156

    .line 2222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_115
    :goto_115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_156

    .line 2223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_115

    .line 2226
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 2228
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iput-boolean p2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isPairSuccess:Z

    goto :goto_115

    .line 2234
    :cond_147
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u8fd8\u6ca1\u6709\u5df2\u914d\u5bf9\u7684\u8fdc\u7a0b\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_156

    .line 2237
    :cond_14f
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u672c\u673a\u6ca1\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2239
    :cond_156
    :goto_156
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;Landroid/bluetooth/BluetoothGatt;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V

    .line 2351
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p2

    if-eqz p2, :cond_170

    const/16 p2, 0x1d8a

    .line 2353
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2354
    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, p2, :cond_170

    return-void

    :cond_170
    const/16 p1, 0x2709

    .line 2358
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_18d

    .line 2360
    :cond_176
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$2302(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 2361
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "false"

    invoke-static {p1, v1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/16 p2, 0x59

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    :goto_18d
    return-void
.end method
