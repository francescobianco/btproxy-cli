.class public Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;
.super Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;
.source "BluzDeviceEDR.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final MSG_CONNECTED:I = 0x1

.field private static final MSG_DISCONNECTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluzDeiceEDR"

.field private static sCharacteristicReadFifo:Ljava/util/UUID;

.field private static sCharacteristicWriteFifo:Ljava/util/UUID;

.field private static sClientCharacteristicConfiguration:Ljava/util/UUID;

.field private static sService:Ljava/util/UUID;


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mConnectCallback:Ljava/lang/Runnable;

.field private mDeviceEdr:Landroid/bluetooth/BluetoothDevice;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mHandler:Landroid/os/Handler;

.field private mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

.field private mScanCallback:Ljava/lang/Runnable;

.field private mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sClientCharacteristicConfiguration:Ljava/util/UUID;

    .line 34
    const-string v0, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sService:Ljava/util/UUID;

    .line 35
    const-string v0, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicWriteFifo:Ljava/util/UUID;

    .line 36
    const-string v0, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicReadFifo:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;-><init>(Landroid/content/Context;Ljava/util/Map;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;ZZ)V"
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1, p3, p4}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;-><init>(Landroid/content/Context;ZZ)V

    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceEdr:Landroid/bluetooth/BluetoothDevice;

    .line 49
    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 50
    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 54
    new-instance p3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;

    invoke-direct {p3, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance p3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;

    invoke-direct {p3, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$2;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 526
    new-instance p3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$5;

    invoke-direct {p3, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$5;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mScanCallback:Ljava/lang/Runnable;

    .line 534
    new-instance p3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$6;

    invoke-direct {p3, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$6;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    iput-object p3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectCallback:Ljava/lang/Runnable;

    .line 283
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->init(Landroid/content/Context;)V

    .line 284
    const-string p1, "nick"

    const-string p3, "BluzDeviceEDR 4"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_35

    .line 286
    invoke-direct {p0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->setUUID(Ljava/util/Map;)V

    :cond_35
    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->connectEdrSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGatt;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->writeCharacteristic()V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->connectEdrFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/os/Handler;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/UUID;
    .registers 1

    .line 29
    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sService:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .registers 1

    .line 29
    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicReadFifo:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$600()Ljava/util/UUID;
    .registers 1

    .line 29
    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicWriteFifo:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->enableCCC(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method private connectEdr()V
    .registers 6

    .line 486
    const-string v0, "connectEDR"

    const-string v1, "BluzDeiceEDR"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    .line 487
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->updateConnectionState(I)V

    .line 488
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mScanCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceEdr:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mBluetoothGatt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private connectEdrFail()V
    .registers 3

    .line 515
    const-string v0, "BluzDeiceEDR"

    const-string v1, "EDR connect fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0xe

    .line 518
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->updateConnectionState(I)V

    const/16 v0, 0xb

    .line 519
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->disconnect(I)V

    const/4 v0, 0x0

    .line 521
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnecting:Z

    return-void
.end method

.method private declared-synchronized connectEdrSuccess()V
    .registers 5

    const-string v0, "connectEdr exception: "

    const-string v1, "EDR connected\uff1a"

    monitor-enter p0

    .line 501
    :try_start_5
    const-string v2, "BluzDeiceEDR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 503
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0xb

    .line 504
    invoke-virtual {p0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->updateConnectionState(I)V

    .line 505
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    if-eqz v1, :cond_4d

    .line 506
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onConnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_37
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    goto :goto_4d

    :catchall_35
    move-exception v0

    goto :goto_4f

    :catch_37
    move-exception v1

    .line 509
    :try_start_38
    const-string v2, "BluzDeiceEDR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->handleException(Ljava/lang/Exception;)V
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_35

    .line 512
    :cond_4d
    :goto_4d
    monitor-exit p0

    return-void

    :goto_4f
    monitor-exit p0

    throw v0
.end method

.method private enableCCC(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 242
    const-string v0, "BluzDeiceEDR"

    const-string v1, "enableCCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 244
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 246
    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sClientCharacteristicConfiguration:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    .line 248
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 295
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 296
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 298
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-direct {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 299
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$3;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    invoke-direct {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    return-void
.end method

.method private readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_14

    .line 254
    const-string v0, "BluzDeiceEDR"

    const-string v1, "readCharacteristicSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->write([B)V

    :cond_14
    return-void
.end method

.method private readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_13

    .line 274
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->add(I)V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->write([B)V

    :cond_13
    return-void
.end method

.method private setUUID(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUUID\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluzDeiceEDR"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_bc

    .line 450
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 452
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 453
    const-string v5, "keyConfigurationUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 454
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sClientCharacteristicConfiguration:Ljava/util/UUID;

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setUUID keyConfiurationUUID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 456
    :cond_56
    const-string v5, "keyServiceUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 457
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sService:Ljava/util/UUID;

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setUUID keyServiceUUID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 459
    :cond_77
    const-string v5, "keyReadCharacteristicUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 460
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicReadFifo:Ljava/util/UUID;

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setUUID keyReadCharacteristicUUID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 462
    :cond_98
    const-string v5, "keyWriteCharacteristicUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 463
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->sCharacteristicWriteFifo:Ljava/util/UUID;

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setUUID keyWriteCharacteristicUUID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    :cond_bc
    return-void
.end method

.method private writeCharacteristic()V
    .registers 3

    .line 432
    const-string v0, "writeCharacteristic"

    const-string v1, "BluzDeiceEDR"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_20

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->getBuffer()[B

    move-result-object v0

    .line 436
    invoke-static {v1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->printHexBuffer(Ljava/lang/String;[B)V

    .line 438
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 439
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_20
    return-void
.end method

.method private writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_15

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->next()V

    goto :goto_15

    .line 267
    :cond_12
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->writeCharacteristic()V

    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public closeNotify()V
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_27

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x0

    const-string v2, "BluzDeiceEDR"

    if-eqz v0, :cond_17

    .line 312
    const-string v0, "closeNotify: read close"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 315
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_27

    .line 316
    const-string v0, "closeNotify: write close"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    :cond_27
    return-void
.end method

.method public connect()V
    .registers 3

    .line 474
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->connect()V

    .line 475
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_f

    .line 476
    const-string v0, "edr"

    const-string v1, "edr == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 480
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceEdr:Landroid/bluetooth/BluetoothDevice;

    .line 481
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->connectEdr()V

    return-void
.end method

.method public disconnect(I)V
    .registers 6

    .line 327
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_4f

    .line 328
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    const/4 v0, 0x0

    const-string v1, "BluzDeiceEDR"

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_23

    .line 329
    const-string p1, "handleMessage: mConnectionListener"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x4

    invoke-interface {p1, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    .line 331
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/16 p1, 0xd

    .line 332
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->updateConnectionState(I)V

    .line 334
    :cond_23
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->closeNotify()V

    .line 335
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 336
    const-string p1, "mBluetoothGatt.disconnect()"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 338
    const-string p1, "mBluetoothGatt.close()"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 340
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-direct {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 341
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$4;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V

    invoke-direct {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 350
    :cond_4f
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz p1, :cond_65

    .line 351
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_62

    :cond_60
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    :goto_62
    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    :cond_65
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 424
    const-string v0, "BluzDeiceEDR"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mScanCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mConnectCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    .line 411
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 412
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 413
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 414
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 415
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_26
    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 392
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 393
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->read([BII)I

    .line 394
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer len:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";byteoffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";byteCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluzDeiceEDR"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public readInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 376
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 377
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->read([BII)I

    .line 378
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 384
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 385
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->read([BII)I

    .line 386
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public retry(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 399
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public write([BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->add([B)Z

    move-result p2

    if-nez p2, :cond_20

    .line 359
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "write: too much command, dump:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluzDeiceEDR"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method
