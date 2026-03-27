.class public Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;
.super Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;
.source "BluzDeviceA2dpCompat.java"


# static fields
.field private static final CONNECTION_PERIOD:I = 0x5dc

.field private static final MSG_CONNECTION_PRE_HONEYCOMB:I = 0x0

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluzDeviceA2dpCompat"


# instance fields
.field private mConnectionStatePre:I

.field private mHandler:Landroid/os/Handler;

.field private mIBluetooth:Landroid/bluetooth/IBluetooth;

.field private mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mConnectionStatePre:I

    .line 132
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$2;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$2;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;

    .line 31
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->initMethod()V

    .line 32
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->updateConnection()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)Landroid/os/Handler;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initA2dpMethod()V
    .registers 9

    .line 47
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    const-string v1, "bluetooth_a2dp"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 50
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 52
    aget-object v1, v1, v5

    .line 53
    const-string v4, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v5

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 55
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothA2dp;

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4d
    return-void
.end method

.method private initHandler()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private initHeadsetMethod()V
    .registers 9

    .line 64
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    const-string v1, "bluetooth"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 67
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 69
    aget-object v1, v1, v5

    .line 70
    const-string v4, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v5

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetooth;

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4d
    return-void
.end method

.method private initMethod()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->initA2dpMethod()V

    .line 42
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->initHeadsetMethod()V

    return-void
.end method

.method private updateConnection()V
    .registers 7

    const/4 v0, 0x0

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 110
    array-length v2, v1

    if-lez v2, :cond_2d

    .line 111
    array-length v2, v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_26

    move v3, v0

    :goto_e
    if-ge v0, v2, :cond_2c

    :try_start_10
    aget-object v4, v1, v0

    .line 112
    iput-object v4, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x2

    .line 115
    iget v5, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mConnectionStatePre:I

    if-eq v3, v5, :cond_21

    .line 116
    iput v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mConnectionStatePre:I

    .line 117
    invoke-virtual {p0, v3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->updateA2dpConnectionState(I)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_24

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :catch_24
    move-exception v0

    goto :goto_29

    :catch_26
    move-exception v1

    move v3, v0

    move-object v0, v1

    .line 123
    :goto_29
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->handleException(Ljava/lang/Exception;)V

    :cond_2c
    move v0, v3

    .line 126
    :cond_2d
    iget v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mConnectionStatePre:I

    if-eq v0, v1, :cond_36

    .line 127
    iput v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mConnectionStatePre:I

    .line 128
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->updateA2dpConnectionState(I)V

    :cond_36
    return-void
.end method


# virtual methods
.method protected connectA2DP()Z
    .registers 5

    .line 184
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectA2DP()Z

    const/4 v0, 0x0

    .line 188
    :try_start_4
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    const/4 v3, 0x2

    if-eq v1, v3, :cond_18

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    goto :goto_27

    :cond_18
    move v0, v2

    goto :goto_27

    .line 197
    :cond_1a
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothA2dp;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    return v0
.end method

.method public connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mProfileWaitForDataConnect:Z

    .line 93
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    const/4 v0, 0x1

    .line 166
    :try_start_1
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mDisconnectSilence:Z

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->disconnectHeadset(Ljava/lang/String;)Z

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothA2dp;->disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z

    const-wide/16 v0, 0x7d0

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 170
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$3;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 81
    array-length v1, v0

    if-lez v1, :cond_13

    const/4 v1, 0x0

    .line 82
    aget-object v0, v0, v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->handleException(Ljava/lang/Exception;)V

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isA2dpConnected()Z
    .registers 5

    const/4 v0, 0x0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mIBluetoothA2dp:Landroid/bluetooth/IBluetoothA2dp;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_11

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_f

    if-ne v1, v3, :cond_15

    :cond_f
    move v0, v3

    goto :goto_15

    :catch_11
    move-exception v1

    .line 157
    invoke-virtual {p0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->handleException(Ljava/lang/Exception;)V

    :cond_15
    :goto_15
    return v0
.end method

.method public release()V
    .registers 3

    .line 209
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->release()V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
