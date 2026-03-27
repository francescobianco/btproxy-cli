.class public abstract Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;
.super Ljava/lang/Object;
.source "BluzDeviceA2dpBase.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/device/IBluzDeviceA2dp;


# static fields
.field private static final A2DP_CONNECT_TIMEOUT:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "BluzDeviceA2dpBase"


# instance fields
.field private mA2dpCallback:Ljava/lang/Runnable;

.field protected mAutoConnect:Z

.field protected mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

.field protected mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

.field protected mDisconnectSilence:Z

.field private mHandler:Landroid/os/Handler;

.field protected mListener:Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;

.field protected mProfileWaitForDataConnect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 29
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    .line 30
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 31
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mListener:Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mProfileWaitForDataConnect:Z

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mAutoConnect:Z

    .line 37
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDisconnectSilence:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$2;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mA2dpCallback:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->registerReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectProfiles()V

    return-void
.end method

.method private connectProfiles()V
    .registers 2

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDisconnectSilence:Z

    .line 113
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->isA2dpConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 114
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1a

    .line 116
    :cond_11
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectA2DP()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 117
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectA2dpFail()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static getPairingVariantConsentHiddenConstant()I
    .registers 6

    .line 241
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 243
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 244
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 246
    :try_start_22
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PAIRING_VARIANT_CONSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x0

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_34

    return v0

    :catch_34
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_37
    const/4 v0, -0x1

    return v0
.end method

.method private pair()V
    .registers 2

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method


# virtual methods
.method protected connect()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mListener:Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;

    if-eqz v0, :cond_7

    .line 124
    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;->connect()V

    :cond_7
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 78
    :cond_3
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 80
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_11

    .line 82
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->pair()V

    goto :goto_24

    :cond_11
    const/16 v0, 0xc

    if-eq p1, v0, :cond_19

    const/16 v0, 0xb

    if-ne p1, v0, :cond_24

    .line 85
    :cond_19
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_21

    .line 86
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    .line 89
    :cond_21
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectProfiles()V

    :cond_24
    :goto_24
    return-void
.end method

.method protected connectA2DP()Z
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mA2dpCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mA2dpCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected connectA2dpFail()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mA2dpCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x4

    .line 130
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->updateConnectionState(I)V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public abstract getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .registers 2

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected abstract isA2dpConnected()Z
.end method

.method protected readyConnect()V
    .registers 3

    .line 216
    monitor-enter p0

    .line 217
    :try_start_1
    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mProfileWaitForDataConnect:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDisconnectSilence:Z

    if-eqz v0, :cond_a

    goto :goto_32

    .line 221
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_10

    .line 223
    monitor-exit p0

    return-void

    :cond_10
    if-eqz v0, :cond_20

    .line 225
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_20

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 226
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connect()V

    goto :goto_2d

    :cond_20
    if-eqz v0, :cond_2d

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_2d

    .line 228
    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mAutoConnect:Z

    if-eqz v0, :cond_2d

    .line 229
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connect()V

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mProfileWaitForDataConnect:Z

    .line 232
    monitor-exit p0

    return-void

    .line 218
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    .line 232
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw v0
.end method

.method protected registerReceiver()V
    .registers 5

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1e

    .line 55
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_25

    .line 57
    :cond_1e
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_25
    return-void
.end method

.method public release()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mA2dpCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->unregisterReceiver()V

    return-void
.end method

.method public setAutoConnectDataChanel(Z)V
    .registers 2

    .line 257
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mAutoConnect:Z

    return-void
.end method

.method public setListener(Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mListener:Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;

    return-void
.end method

.method protected unregisterReceiver()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected updateA2dpConnectionState(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mA2dpCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->updateConnectionState(I)V

    goto :goto_41

    :cond_f
    if-ne p1, v0, :cond_15

    .line 139
    invoke-virtual {p0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->updateConnectionState(I)V

    goto :goto_41

    :cond_15
    const/4 v1, 0x3

    if-eqz p1, :cond_24

    if-ne p1, v1, :cond_1b

    goto :goto_24

    :cond_1b
    const/16 v0, 0xb

    if-ne p1, v0, :cond_41

    const/4 p1, 0x5

    .line 147
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->updateConnectionState(I)V

    goto :goto_41

    .line 141
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mListener:Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_36

    if-eqz p1, :cond_3b

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 142
    :cond_36
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mListener:Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;

    invoke-interface {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;->disconnect(I)V

    :cond_3b
    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 145
    invoke-virtual {p0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->updateConnectionState(I)V

    :cond_41
    :goto_41
    return-void
.end method

.method protected updateConnectionState(I)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mListener:Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;

    if-eqz v0, :cond_9

    .line 153
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->mDeviceCandidate:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_9
    return-void
.end method
