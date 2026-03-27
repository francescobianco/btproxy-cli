.class public Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;
.super Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;
.source "BluzDeviceA2dp.java"


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "com.actions.ibluz.device.state_change"

.field private static final TAG:Ljava/lang/String; = "BluzDeviceA2dp"


# instance fields
.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHfpService:Landroid/bluetooth/BluetoothHeadset;

.field private mHfpTimeout:Ljava/lang/Runnable;

.field private mInputService:Landroid/bluetooth/BluetoothProfile;

.field private mMethodConnect:Ljava/lang/reflect/Method;

.field private mMethodDisconnect:Ljava/lang/reflect/Method;

.field private mMethodHfpDisconnect:Ljava/lang/reflect/Method;

.field private mMethodInputDisconnect:Ljava/lang/reflect/Method;

.field private mMethodRemoveBound:Ljava/lang/reflect/Method;

.field private mRemoveBound:Z

.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$4;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$4;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpTimeout:Ljava/lang/Runnable;

    .line 46
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->getProfileProxy()V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mRemoveBound:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$4;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$4;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpTimeout:Ljava/lang/Runnable;

    .line 52
    iput-boolean p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mRemoveBound:Z

    .line 53
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->getProfileProxy()V

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->initMethod()V

    return-void
.end method

.method static synthetic access$202(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->initMethodHfp()V

    return-void
.end method

.method static synthetic access$402(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mInputService:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->initMethodInput()V

    return-void
.end method

.method private closeProfileProxy()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_c

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 106
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_18

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 109
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mInputService:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_27

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->getInputDeviceHiddenConstant()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mInputService:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_27
    return-void
.end method

.method public static getInputDeviceHiddenConstant()I
    .registers 6

    .line 345
    const-class v0, Landroid/bluetooth/BluetoothProfile;

    .line 346
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 347
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 348
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 350
    :try_start_22
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INPUT_DEVICE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x0

    .line 351
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

.method private getProfileProxy()V
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$2;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$3;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    .line 98
    invoke-static {}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->getInputDeviceHiddenConstant()I

    move-result v3

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private initMethod()V
    .registers 7

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "connect"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodConnect:Ljava/lang/reflect/Method;

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disconnect"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/bluetooth/BluetoothDevice;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodDisconnect:Ljava/lang/reflect/Method;

    .line 119
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "removeBond"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodRemoveBound:Ljava/lang/reflect/Method;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_3b
    return-void
.end method

.method private initMethodHfp()V
    .registers 6

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disconnect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodHfpDisconnect:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method private initMethodInput()V
    .registers 6

    .line 135
    :try_start_0
    const-string v0, "android.bluetooth.BluetoothInputDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disconnect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodInputDisconnect:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_20

    :catch_17
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_20

    :catch_1c
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_20
    return-void
.end method


# virtual methods
.method protected connectA2DP()Z
    .registers 5

    .line 298
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectA2DP()Z

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    .line 304
    :cond_9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 309
    :try_start_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 310
    invoke-virtual {p0, v2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_13

    .line 313
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodConnect:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    .line 316
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->handleException(Ljava/lang/Exception;)V

    :goto_3c
    return v1
.end method

.method public connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_9

    goto :goto_59

    .line 161
    :cond_9
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 163
    const-string v1, "Coolpad 8690_T00"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_24

    if-eq v0, v3, :cond_24

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_24

    :cond_1e
    if-eqz p2, :cond_59

    .line 184
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->connectA2dpFail()V

    goto :goto_59

    .line 166
    :cond_24
    :goto_24
    iput-boolean v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mProfileWaitForDataConnect:Z

    .line 167
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 169
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-eq p1, v2, :cond_3d

    if-ne p1, v3, :cond_33

    goto :goto_3d

    .line 180
    :cond_33
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59

    .line 172
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 174
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59

    .line 176
    :cond_56
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->readyConnect()V

    :cond_59
    :goto_59
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 271
    :try_start_4
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDisconnectSilence:Z

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mInputService:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_16

    .line 275
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodInputDisconnect:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHfpService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_23

    .line 277
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodHfpDisconnect:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_44

    .line 279
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodDisconnect:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mRemoveBound:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mMethodRemoveBound:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    .line 281
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_44
    const-wide/16 v0, 0x7d0

    .line 284
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$6;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5a
    return-void
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 330
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    const/4 v1, 0x0

    .line 333
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_1a
    return-object v1
.end method

.method protected isA2dpConnected()Z
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mService:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method protected registerReceiver()V
    .registers 5

    .line 191
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->registerReceiver()V

    .line 193
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$5;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "com.actions.ibluz.device.state_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_32

    .line 252
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_39

    .line 254
    :cond_32
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_39
    return-void
.end method

.method protected unregisterReceiver()V
    .registers 3

    .line 260
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->unregisterReceiver()V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->closeProfileProxy()V

    return-void
.end method
