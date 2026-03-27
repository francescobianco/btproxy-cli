.class public Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;
.super Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;
.source "BluzDeviceSpp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;
    }
.end annotation


# static fields
.field private static final RECONNECT_MAX_TIME:I = 0xa

.field private static final SPP_CONNECT_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "BluzDeviceSpp"


# instance fields
.field private mAutoConnecting:Z

.field private mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private mConnectPopActivity:Z

.field private mConnectionTask:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;

.field private mHandler:Landroid/os/Handler;

.field private mInputStream:Ljava/io/DataInputStream;

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mSppCallback:Ljava/lang/Runnable;

.field private mUUID:Ljava/util/UUID;

.field private reConnectTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;-><init>(Landroid/content/Context;ZZ)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 28
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mOutputStream:Ljava/io/DataOutputStream;

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mInputStream:Ljava/io/DataInputStream;

    .line 30
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mAutoConnecting:Z

    .line 31
    const-string p2, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mUUID:Ljava/util/UUID;

    .line 34
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionTask:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;

    .line 37
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectPopActivity:Z

    .line 39
    iput v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->reConnectTime:I

    .line 100
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/UUID;)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;-><init>(Landroid/content/Context;Z)V

    if-eqz p3, :cond_7

    .line 50
    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mUUID:Ljava/util/UUID;

    :cond_7
    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Ljava/lang/Runnable;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Landroid/os/Handler;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectPopActivity:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectPopActivity:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionTask:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSppFail()V

    return-void
.end method

.method static synthetic access$602(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->reConnectTime:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSPP(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$802(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mAutoConnecting:Z

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSppSuccess()V

    return-void
.end method

.method private connectSPP(Landroid/bluetooth/BluetoothDevice;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 135
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mUUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_af

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC T328w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x3a98

    goto :goto_21

    :cond_1f
    const/16 v0, 0x2710

    :goto_21
    const/4 v1, 0x0

    .line 152
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectPopActivity:Z

    .line 153
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Lenovo S939"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_39

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Lenovo S898t+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 154
    :cond_39
    iput-boolean v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectPopActivity:Z

    .line 157
    :cond_3b
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;

    int-to-long v5, v0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 161
    :try_start_48
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 162
    iput v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->reConnectTime:I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_ae

    :catch_50
    move-exception v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u84dd\u7259\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluzDeviceSpp error"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mContext:Landroid/content/Context;

    const-string v2, "is_dialog_showing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    const-string v2, "dialog_showing"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nick_dialog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_87
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 170
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    if-nez v0, :cond_ae

    .line 172
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->reConnectTime:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_ae

    const-wide/16 v0, 0x3e8

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 174
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->reConnectTime:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->reConnectTime:I

    .line 175
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSPP(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_a4} :catch_aa
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_a4} :catch_ae
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_a4} :catch_a5

    goto :goto_ae

    :catch_a5
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_ae

    :catch_aa
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :catch_ae
    :cond_ae
    :goto_ae
    return-void

    .line 138
    :catch_af
    :try_start_af
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b4} :catch_b5

    return-void

    :catch_b5
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private connectSppFail()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0xa

    .line 263
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->disconnect(I)V

    const/16 v0, 0xe

    .line 264
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->updateConnectionState(I)V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method private declared-synchronized connectSppSuccess()V
    .registers 3

    monitor-enter p0

    .line 280
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mInputStream:Ljava/io/DataInputStream;

    .line 281
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mOutputStream:Ljava/io/DataOutputStream;

    .line 282
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->cancelDiscovery()V

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/16 v0, 0xb

    .line 285
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->updateConnectionState(I)V

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    if-eqz v0, :cond_32

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 289
    :cond_32
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3c
    .catchall {:try_start_1 .. :try_end_39} :catchall_3a

    goto :goto_40

    :catchall_3a
    move-exception v0

    goto :goto_42

    :catch_3c
    move-exception v0

    .line 291
    :try_start_3d
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->handleException(Ljava/lang/Exception;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    .line 293
    :goto_40
    monitor-exit p0

    return-void

    :goto_42
    monitor-exit p0

    throw v0
.end method

.method private knockDoor()V
    .registers 3

    const/16 v0, 0x8

    .line 270
    new-array v0, v0, [B

    fill-array-data v0, :array_12

    const/4 v1, 0x2

    .line 272
    :try_start_8
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->write([BI)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void

    nop

    :array_12
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data
.end method


# virtual methods
.method public connect()V
    .registers 3

    .line 88
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->connect()V

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mAutoConnecting:Z

    if-eqz v0, :cond_c

    goto :goto_25

    :cond_c
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mAutoConnecting:Z

    const/16 v0, 0xc

    .line 95
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->updateConnectionState(I)V

    .line 96
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionTask:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;

    .line 97
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_25
    :goto_25
    return-void
.end method

.method public disconnect(I)V
    .registers 5

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 228
    :try_start_5
    const-string p1, "BluzDeviceSpp"

    const-string v1, "close"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mInputStream:Ljava/io/DataInputStream;

    if-eqz p1, :cond_13

    .line 230
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 233
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mOutputStream:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_1f

    .line 234
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 238
    :cond_1f
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_27
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    goto :goto_2b

    :catchall_25
    move-exception p1

    goto :goto_3f

    :catch_27
    move-exception p1

    .line 240
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 242
    :goto_2b
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 245
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_42

    .line 246
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_42

    .line 242
    :goto_3f
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 243
    throw p1

    .line 250
    :cond_42
    :goto_42
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnecting:Z

    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 256
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public getBoundedDevices()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 299
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 300
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_29

    .line 301
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 302
    :cond_29
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    return-object v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public write([BI)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    const-string p2, "BluzDeviceSpp"

    invoke-static {p2, p1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->printHexBuffer(Ljava/lang/String;[B)V

    .line 58
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method
