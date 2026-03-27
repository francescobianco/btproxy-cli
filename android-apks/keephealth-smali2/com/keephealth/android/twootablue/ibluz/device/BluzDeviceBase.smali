.class public abstract Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;
.super Ljava/lang/Object;
.source "BluzDeviceBase.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
.implements Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;


# static fields
.field private static final DATA_DISCONNECT_INTENT:Ljava/lang/String; = "com.actions.ibluz.data.disconnect"

.field private static final DISCOVERY_TIMEOUT:I = 0x32c8

.field private static final INTENT_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final TAG:Ljava/lang/String; = "BluzDeviceBase"


# instance fields
.field private mAtuoConnect:Z

.field protected mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field protected mConnecting:Z

.field protected mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

.field protected mContext:Landroid/content/Context;

.field protected mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

.field protected mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceRetry:Landroid/bluetooth/BluetoothDevice;

.field protected mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

.field private mDiscoveryTimeoutCallback:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mRegisterReceiver:Z

.field private mRetryCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    .line 38
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 39
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 40
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnecting:Z

    .line 42
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    .line 43
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mAtuoConnect:Z

    .line 45
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRegisterReceiver:Z

    .line 238
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRetryCallback:Ljava/lang/Runnable;

    .line 249
    new-instance v2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryTimeoutCallback:Ljava/lang/Runnable;

    .line 372
    new-instance v2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    iput-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->init(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    .line 38
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 39
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 40
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnecting:Z

    .line 42
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    .line 43
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mAtuoConnect:Z

    .line 45
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRegisterReceiver:Z

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$2;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRetryCallback:Ljava/lang/Runnable;

    .line 249
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryTimeoutCallback:Ljava/lang/Runnable;

    .line 372
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->init(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->isValidType(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Ljava/lang/Runnable;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryTimeoutCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/os/Handler;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->retrieveConnectedDevice()V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Ljava/lang/Runnable;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRetryCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mAtuoConnect:Z

    return p0
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private init(Landroid/content/Context;ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRegisterReceiver:Z

    if-eqz p2, :cond_f

    .line 59
    new-instance p2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-direct {p2, p1, p3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    .line 64
    invoke-virtual {p2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->setListener(Lcom/keephealth/android/twootablue/ibluz/device/IA2dpListener;)V

    .line 67
    :cond_f
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->registerReceiver()V

    return-void
.end method

.method private isValidType(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 363
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    const/4 p1, 0x1

    return p1
.end method

.method private retrieveConnectedDevice()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-eq v0, v1, :cond_a

    return-void

    .line 198
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private retrievePairedDevice()V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 184
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 185
    invoke-direct {p0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->isValidType(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz v2, :cond_10

    const/4 v3, 0x2

    .line 186
    invoke-interface {v2, v1, v3}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_10

    :cond_2b
    return-void
.end method

.method private sendDisconnectIntent()V
    .registers 4

    .line 267
    const-string v0, "3423rew22"

    const-string v1, "sendDisconnectIntent222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.actions.ibluz.data.disconnect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package-name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected cancelDiscovery()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_d
    return-void
.end method

.method protected checkLocationPermission()Z
    .registers 2

    .line 224
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public connect()V
    .registers 7

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    const-string v1, "mDeviceA2dp == null"

    const-string v2, "rtrtu5"

    const/4 v3, 0x0

    if-nez v0, :cond_19

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->sendDisconnectIntent()V

    .line 104
    const-string v0, "3423rew22"

    const-string v4, "sendDisconnectIntent"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 106
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_19
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->getConnectedA2dpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 115
    iget-object v4, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_34

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_4f

    .line 120
    :cond_34
    iget-object v4, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->isAppForeground(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 122
    iput-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 123
    const-string v0, "!Utils.isAppForeground(mContext)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 126
    :cond_44
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->sendDisconnectIntent()V

    .line 129
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    iput-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 131
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 118
    :cond_4f
    :goto_4f
    iput-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 119
    const-string v0, "!Utils.isAppForeground(mContext)XXXXXXXXXXXXXXXXXXXX"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_13

    .line 278
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_22

    .line 283
    :cond_13
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_22

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnecting:Z

    if-eqz v0, :cond_22

    return-void

    :cond_22
    :goto_22
    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnecting:Z

    .line 288
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 290
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->cancelDiscovery()V

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz v0, :cond_39

    .line 292
    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 293
    const-string p1, "ggrr4"

    const-string v0, "mDeviceA2dp.connect(device)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 295
    :cond_39
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->connect()V

    .line 296
    const-string p1, "3423rew22"

    const-string v0, "connect()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void
.end method

.method public disable()Z
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    const/4 v0, 0x4

    .line 303
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->disconnect(I)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz v0, :cond_11

    if-nez p1, :cond_e

    .line 305
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :cond_e
    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    :cond_11
    return-void
.end method

.method public enable()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getBoundedDevices()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedA2dpDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz v0, :cond_1f

    .line 75
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G9308"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/16 v0, 0x1f4

    .line 77
    :try_start_10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 82
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    .registers 1

    return-object p0
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .registers 2

    .line 356
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x6

    .line 357
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->disconnect(I)V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected registerReceiver()V
    .registers 5

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "com.actions.ibluz.data.disconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_28

    .line 142
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2f

    .line 144
    :cond_28
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2f
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRegisterReceiver:Z

    return-void
.end method

.method public release()V
    .registers 2

    .line 343
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->unregisterReceiver()V

    const/4 v0, 0x5

    .line 344
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->disconnect(I)V

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_e

    .line 346
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->cancelDiscovery()V

    .line 350
    :cond_e
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz v0, :cond_15

    .line 351
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->release()V

    :cond_15
    return-void
.end method

.method public retry(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;

    .line 263
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->startDiscovery()V

    return-void
.end method

.method public setAutoConnectDataChanel(Z)V
    .registers 3

    .line 421
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mAtuoConnect:Z

    .line 422
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz v0, :cond_9

    .line 423
    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->setAutoConnectDataChanel(Z)V

    :cond_9
    return-void
.end method

.method public setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    return-void
.end method

.method public setOnDiscoveryListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    return-void
.end method

.method public startDiscovery()V
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->checkLocationPermission()Z

    .line 176
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->cancelDiscovery()V

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method protected unregisterReceiver()V
    .registers 3

    .line 150
    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRegisterReceiver:Z

    if-eqz v0, :cond_e

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRegisterReceiver:Z

    :cond_e
    return-void
.end method

.method protected updateConnectionState(I)V
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mConnecting:Z

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz v0, :cond_f

    .line 316
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_f
    return-void
.end method

.method public updateConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 90
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 91
    invoke-virtual {p0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->updateConnectionState(I)V

    return-void
.end method
