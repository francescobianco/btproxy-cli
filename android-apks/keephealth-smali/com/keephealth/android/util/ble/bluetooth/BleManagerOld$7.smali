.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;
.super Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
.source "BleManagerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 2

    .line 1142
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onConnectionStateChange$0$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7()V
    .registers 4

    .line 1170
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

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

    .line 1171
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_a

    .line 1172
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnected()V

    goto :goto_a

    .line 1175
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1176
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnected()V

    .line 1177
    const-string v0, "FF5433"

    const-string v1, "mOnLeConnectListener.onDeviceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$1$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7(Landroid/bluetooth/BluetoothGatt;)V
    .registers 3

    .line 1183
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_24

    .line 1184
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1185
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 1186
    const-string p1, "FFDf34e"

    const-string v0, "mBluetoothGatt.discoverServices()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$2$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7()V
    .registers 5

    .line 1209
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "GGGh3d2"

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1210
    instance-of v3, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v3, :cond_a

    .line 1211
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    .line 1212
    const-string v1, "onDeviceDisconnected_3"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1215
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1216
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    .line 1217
    const-string v0, "onDeviceDisconnected_4"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$3$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7(I)V
    .registers 7

    .line 1249
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

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

    .line 1250
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    const-string v3, "Error on connection state change."

    const/4 v4, 0x1

    if-eqz v2, :cond_27

    .line 1251
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v2, p1, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    .line 1255
    :cond_27
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1256
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v2, p1, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_a

    :cond_3e
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$4$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7()V
    .registers 5

    .line 1285
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "GGGh3d2"

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1286
    instance-of v3, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v3, :cond_a

    .line 1287
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    .line 1288
    const-string v1, "onDeviceDisconnected_5"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1291
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1292
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceDisconnected()V

    .line 1293
    const-string v0, "onDeviceDisconnected_6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method synthetic lambda$onReadRemoteRssi$6$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7(I)V
    .registers 5

    .line 1676
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

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

    .line 1677
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;

    if-eqz v2, :cond_a

    .line 1678
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;

    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUtils;->getDistance(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;->onSuccess(II)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method synthetic lambda$onServicesDiscovered$5$com-keephealth-android-util-ble-bluetooth-BleManagerOld$7(Landroid/bluetooth/BluetoothGatt;)V
    .registers 16

    .line 1351
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x309

    const-wide/16 v3, 0x190

    const-string v5, "onServicesDiscovered_enableNotification"

    const-string v6, "fgttg4"

    const-string v7, "FFDf34e"

    const-string v8, "hftf35t"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1352
    instance-of v11, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v11, :cond_a

    .line 1353
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V

    .line 1354
    const-string v1, "onServicesDiscovered:"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    sput-boolean v10, Lcom/keephealth/android/app/AppApplication;->bleConnectSuccess:Z

    .line 1357
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 1358
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "services.size:"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_52
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothGattService;

    .line 1361
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "services.get(i).getUuid():"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    sget-object v11, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    invoke-virtual {v7, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1363
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v7

    sget-object v11, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v12, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/16 v13, 0x14

    invoke-virtual {v7, v13, v9, v11, v12}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1365
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v7

    sget-object v11, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v12, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/16 v13, 0x15

    invoke-virtual {v7, v13, v10, v11, v12}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1367
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_52

    .line 1372
    :cond_9e
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v5, v10, [Ljava/util/UUID;

    sget-object v6, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v6, v5, v9

    const/16 v6, 0x16

    invoke-virtual {v1, v6, v10, v2, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1376
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReconnect(Z)V

    .line 1378
    :try_start_b9
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_bc} :catch_be

    goto/16 :goto_a

    :catch_be
    move-exception v1

    .line 1380
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 1385
    :cond_c4
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_174

    .line 1386
    const-string v0, "onnectListener.onServicesDiscovered(gatt):"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V

    .line 1388
    sput-boolean v10, Lcom/keephealth/android/app/AppApplication;->bleConnectSuccess:Z

    .line 1390
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "services.size2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_fa
    :goto_fa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_146

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "services.get(i).getUuid()2:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1396
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/16 v11, 0x17

    invoke-virtual {v0, v11, v9, v1, v7}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1398
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    const/16 v11, 0x18

    invoke-virtual {v0, v11, v10, v1, v7}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1400
    invoke-static {v2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_fa

    .line 1403
    :cond_146
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v1, v10, [Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v2, v1, v9

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v10, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1408
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReconnect(Z)V

    .line 1410
    :try_start_161
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_164
    .catch Ljava/lang/InterruptedException; {:try_start_161 .. :try_end_164} :catch_165

    goto :goto_169

    :catch_165
    move-exception p1

    .line 1412
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1415
    :goto_169
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "discoverService"

    const-string v1, "true"

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_174
    const/16 p1, 0x29a

    .line 1417
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    const/16 p1, 0x397

    .line 1418
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1419
    const-string p1, "ggrd3"

    const-string v0, "EventBusHelper.post(919)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8

    const/16 p1, 0x14

    .line 1576
    new-array v0, p1, [B

    .line 1577
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u73af\u56de\u590d\u6570\u636e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString2([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hh4434ghe"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    iget-object v1, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->isDeviceControl([B)Z

    move-result v1

    .line 1580
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6536\u5230\u624b\u73af\u6570\u636e==="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FF321f2"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez v2, :cond_62

    const/4 v2, 0x0

    .line 1584
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    :cond_62
    if-eqz v1, :cond_70

    .line 1588
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    iget-object p2, p2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->handlerData([B)V

    goto :goto_a1

    .line 1590
    :cond_70
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7a
    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1591
    instance-of v1, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v1, :cond_7a

    .line 1592
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    invoke-virtual {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_7a

    .line 1595
    :cond_90
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object p1

    if-eqz p1, :cond_a1

    .line 1596
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 9

    .line 1431
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    const/4 p1, 0x5

    if-nez p3, :cond_111

    .line 1435
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2400()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "fgttg45"

    if-eqz p3, :cond_101

    .line 1436
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUtils;->bytes2IntegerList([B)Ljava/util/List;

    move-result-object p2

    .line 1437
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v1, v3

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMin:D
    invoke-static {p3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2502(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;D)D

    .line 1438
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, v3

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMax:D
    invoke-static {p3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2602(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;D)D

    .line 1439
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->slaveLatency:I
    invoke-static {p3, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;I)I

    .line 1440
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 p3, 0x7

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit8 p3, p3, 0x10

    const/4 v1, 0x6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p3, p2

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connSupervisionTimeout:I
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2802(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;I)I

    .line 1441
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2400()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setUUID(Ljava/util/UUID;)V

    .line 1442
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMin:D
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setConnIntervalMin(D)V

    .line 1443
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMax:D
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setConnIntervalMax(D)V

    .line 1444
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    const-string p2, "READ"

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setProperties(Ljava/lang/String;)V

    .line 1445
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->slaveLatency:I
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setSlaveLatency(I)V

    .line 1446
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connSupervisionTimeout:I
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->setSupervisionTimeout(I)V

    .line 1447
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMax:D
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)D

    move-result-wide p2

    double-to-int p2, p2

    add-int/lit8 p2, p2, 0x32

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->autoQueueInterval:I
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3002(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;I)I

    .line 1448
    const-string p1, "11111111"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_128

    .line 1450
    :cond_101
    const-string p1, "222222222"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    goto :goto_128

    :cond_111
    if-ne p3, p1, :cond_11e

    .line 1469
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    goto :goto_128

    .line 1487
    :cond_11e
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$3;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    .line 1505
    :goto_128
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 6

    .line 1509
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1510
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "status:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  characteristic.getValue():"

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

    const-string v0, "FFDf34e"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_80

    .line 1512
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 p1, 0x14

    .line 1513
    new-array p1, p1, [B

    .line 1514
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p3

    invoke-static {p3, p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 1515
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u6570\u636e\u6210\u529f:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "hh4434ghe"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u53d1\u9001\u6307\u4ee4\u5230\u624b\u73af==="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_98

    :cond_80
    const/4 p1, 0x5

    if-ne p3, p1, :cond_8e

    .line 1532
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    goto :goto_98

    .line 1552
    :cond_8e
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$5;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    .line 1571
    :goto_98
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 13

    .line 1147
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 1149
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearQueue()V

    .line 1150
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffr3ddft"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v0, "444"

    const-string v1, "connect_1"

    const/4 v2, 0x0

    const-string v3, "The BluetoothGatt already exist, set it close() and null."

    const/16 v4, 0x3e7

    const-string v5, "GGGh3d2"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_197

    const/4 v8, 0x2

    if-ne p3, v8, :cond_b3

    const/16 p2, 0x315

    .line 1154
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1156
    sget-object p2, Lcom/keephealth/android/app/AppApplication;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz p2, :cond_57

    .line 1157
    sget-object p2, Lcom/keephealth/android/app/AppApplication;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 p3, 0x26

    invoke-static {p2, p3}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 1159
    :cond_57
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    .line 1160
    const-string p2, "isBluetoothOpen_m"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    sput-boolean v6, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1162
    const-string p2, "device connect success!"

    invoke-static {p2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1163
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p2

    if-eqz p2, :cond_70

    .line 1165
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {p2, v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1167
    :cond_70
    const-string p2, "FDD3232"

    const-string p3, "true_1"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->stopScan()V

    .line 1169
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    .line 1180
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "current"

    invoke-static {p2, p3, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1182
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1191
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isReadRssi:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result p1

    if-eqz p1, :cond_266

    .line 1192
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->cancelReadRssiTimerTask()V

    .line 1193
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiTimerTask()V
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    goto/16 :goto_266

    :cond_b3
    if-nez p3, :cond_139

    .line 1196
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->onDescriptorWrite:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1197
    const-string p2, "device disconnect."

    invoke-static {p2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1198
    const-string p2, "FFDf34ef"

    const-string p3, "mConnected = false"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 1200
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1201
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1202
    sput v6, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 1203
    const-string p2, "isBluetoothOpen_d"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2002(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    const/16 p2, 0x29a

    .line 1206
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1207
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1208
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    .line 1220
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p2, p3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 1229
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_266

    .line 1230
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_125

    .line 1231
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result p2

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2200()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1233
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 1235
    :cond_125
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1236
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1, v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->close(I)V

    .line 1237
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearQueue()V

    .line 1238
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearDeviceCache()Z

    goto/16 :goto_266

    .line 1241
    :cond_139
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->onDescriptorWrite:Z
    invoke-static {p3, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1242
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 1243
    sput v6, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 1244
    const-string p3, "isBluetoothOpen_e"

    invoke-static {v5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {p3, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1246
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1247
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1248
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    .line 1261
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_266

    .line 1262
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_183

    .line 1263
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result p2

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2200()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1265
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 1267
    :cond_183
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1268
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1, v8}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->close(I)V

    .line 1269
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearQueue()V

    .line 1270
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearDeviceCache()Z

    goto/16 :goto_266

    :cond_197
    const/16 p3, 0x13

    if-ne p2, p3, :cond_205

    .line 1274
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->onDescriptorWrite:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1275
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 1276
    sput v6, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 1277
    const-string p2, "isBluetoothOpen_f"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1280
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1281
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2002(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1283
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1284
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    .line 1296
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_266

    .line 1297
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_1f1

    .line 1298
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result p2

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2200()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1299
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1300
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 1302
    :cond_1f1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1303
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->close(I)V

    .line 1304
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearQueue()V

    .line 1305
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearDeviceCache()Z

    goto :goto_266

    .line 1308
    :cond_205
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->onDescriptorWrite:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1309
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 1310
    sput v6, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 1311
    const-string p2, "isBluetoothOpen_g"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1313
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    .line 1314
    invoke-static {v4}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1315
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p2, :cond_266

    .line 1316
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_24a

    .line 1317
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z

    move-result p2

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2200()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1319
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 1320
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {p2, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1322
    :cond_24a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1323
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->close(I)V

    .line 1324
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearQueue()V

    .line 1325
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearDeviceCache()Z

    .line 1327
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connect(ZLcom/keephealth/android/model/bean/BLEDevice;)Z

    :cond_266
    :goto_266
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 1644
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 1649
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 1650
    const-string p1, "hftf33"

    const-string p2, "onDescriptorWrite"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 p2, 0x1

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->onDescriptorWrite:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1663
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$3200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 1687
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 1673
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    if-nez p3, :cond_f

    .line 1675
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;I)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3

    .line 1668
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 6

    .line 1334
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service_discover:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFDf34e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v0, "discoverService"

    const/4 v1, 0x0

    if-nez p2, :cond_56

    .line 1337
    const-string p2, "success with find services discovered ."

    invoke-static {p2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1338
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "true"

    invoke-static {p2, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceTrue()V

    .line 1340
    sput v1, Lcom/keephealth/android/app/AppApplication;->bleReceiveDisConnect:I

    const/4 p2, 0x1

    .line 1341
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->requestBleSuccess:Z

    .line 1342
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z
    invoke-static {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    const-wide/16 v0, 0x28

    .line 1344
    :try_start_39
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    .line 1346
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1348
    :goto_41
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z
    invoke-static {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2002(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1349
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readConnectionParameters()V
    invoke-static {p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    .line 1350
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;Landroid/bluetooth/BluetoothGatt;)V

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V

    goto :goto_69

    .line 1423
    :cond_56
    const-string p1, "failure find services discovered."

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1424
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$2002(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z

    .line 1425
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "false"

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return-void
.end method
