.class public Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;
.super Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;
.source "BluzDeviceBle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$MyTimerTask;
    }
.end annotation


# static fields
.field private static CHARACTERISTIC_READ_FIFO:Ljava/util/UUID; = null

.field private static CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID; = null

.field private static CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID; = null

.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final MSG_CONNECTED:I = 0x1

.field private static final MSG_DISCONNECTED:I = 0x2

.field private static final MSG_FOUND:I = 0x3

.field private static final MSG_SHOW_MESSAGE:I = 0x4

.field private static final SCAN_TIMEOUT:I = 0x7530

.field private static SERVICE:Ljava/util/UUID; = null

.field private static final TAG:Ljava/lang/String; = "BluzDeviceBle"


# instance fields
.field connectTimeout:Ljava/lang/Runnable;

.field descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field private mBleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mConnectCallback:Ljava/lang/Runnable;

.field private mDeviceBle:Landroid/bluetooth/BluetoothDevice;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mHandler:Landroid/os/Handler;

.field private mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

.field private mScanCallback:Ljava/lang/Runnable;

.field private mTimer:Ljava/util/Timer;

.field private mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

.field private simpleScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 64
    const-string v0, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->SERVICE:Ljava/util/UUID;

    .line 65
    const-string v0, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    .line 66
    const-string v0, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;-><init>(Landroid/content/Context;ZZ)V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceBle:Landroid/bluetooth/BluetoothDevice;

    .line 186
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 514
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$5;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$5;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mScanCallback:Ljava/lang/Runnable;

    .line 521
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectCallback:Ljava/lang/Runnable;

    .line 533
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$7;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$7;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->simpleScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    .line 607
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectTimeout:Ljava/lang/Runnable;

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mContext:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 85
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 87
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-direct {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 88
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    invoke-direct {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 3
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

    .line 114
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_8

    .line 116
    invoke-virtual {p0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->setUUID(Ljava/util/Map;)V

    :cond_8
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

    .line 121
    invoke-direct {p0, p1, p3, p4}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;-><init>(Landroid/content/Context;ZZ)V

    if-eqz p2, :cond_8

    .line 123
    invoke-virtual {p0, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->setUUID(Ljava/util/Map;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 4

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;-><init>(Landroid/content/Context;ZZ)V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceBle:Landroid/bluetooth/BluetoothDevice;

    .line 186
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$3;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$4;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 514
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$5;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$5;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mScanCallback:Ljava/lang/Runnable;

    .line 521
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectCallback:Ljava/lang/Runnable;

    .line 533
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$7;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$7;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->simpleScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    .line 607
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;

    invoke-direct {p1, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectTimeout:Ljava/lang/Runnable;

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mContext:Landroid/content/Context;

    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 101
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 103
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-direct {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 104
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    new-instance p2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$2;

    invoke-direct {p2, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$2;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    invoke-direct {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;I)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->writeCharacteristic(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectBleSuccess()V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectBleFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/bluetooth/BluetoothGatt;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/os/Handler;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGatt;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->findServiceAndCharacteristic(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Ljava/lang/Runnable;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method private connectBle()V
    .registers 9

    .line 616
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    if-nez v0, :cond_70

    const/4 v0, 0x1

    .line 617
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    .line 618
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0xc

    .line 619
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->updateConnectionState(I)V

    .line 621
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mScanCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 622
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 623
    const-string v0, "rtrtu5"

    const-string v1, "connectBle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 625
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/app/AppApplication;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3e

    .line 626
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/app/AppApplication;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceBle:Landroid/bluetooth/BluetoothDevice;

    .line 628
    :cond_3e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5b

    .line 629
    const-string v0, "drer4re5"

    const-string v1, "connectBle222-----sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceBle:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_69

    .line 632
    :cond_5b
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceBle:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 636
    :goto_69
    const-string v0, "ggrr4"

    const-string v1, "\u8fde\u63a5\u6267\u884c\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void
.end method

.method private connectBleFail()V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0xe

    .line 643
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->updateConnectionState(I)V

    const/16 v0, 0x8

    .line 644
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->disconnect(I)V

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnecting:Z

    return-void
.end method

.method private declared-synchronized connectBleSuccess()V
    .registers 3

    monitor-enter p0

    .line 651
    :try_start_1
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    .line 652
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0xb

    .line 653
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->updateConnectionState(I)V

    .line 654
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    if-eqz v0, :cond_23

    .line 655
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onConnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1f
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_23

    :catchall_1d
    move-exception v0

    goto :goto_25

    :catch_1f
    move-exception v0

    .line 658
    :try_start_20
    invoke-virtual {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->handleException(Ljava/lang/Exception;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    .line 660
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :goto_25
    monitor-exit p0

    throw v0
.end method

.method private enableCCC(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V
    .registers 8

    .line 449
    const-string v0, "ggrr4"

    const-string v1, "ggrr9"

    .line 0
    const-string v2, "descriptor:"

    const/4 v3, 0x2

    .line 449
    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 451
    :try_start_a
    const-string v3, "3423rew22"

    const-string v4, "setCharacteristicNotification_"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 452
    invoke-virtual {p2, p1, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 453
    sget-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_30

    goto :goto_43

    :catch_30
    move-exception v2

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_43
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "properties:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v2, v2, 0x10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :try_start_69
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 462
    const-string p1, "descriptor.setValue_success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_76

    goto :goto_89

    :catch_76
    move-exception p1

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "descriptor_e2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_89
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    return-void
.end method

.method private findServiceAndCharacteristic(Landroid/bluetooth/BluetoothGatt;)V
    .registers 9

    .line 471
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ggrr9"

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 473
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v3

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "service.getUuid():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v4, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->SERVICE:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 476
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 477
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "characteristics_uuid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v5, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 480
    iput-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_44

    .line 481
    :cond_75
    sget-object v5, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const/4 v4, 0x1

    .line 482
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 483
    iput-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_44

    .line 489
    :cond_84
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_b9

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCharacteristicWriteFifo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->enableCCC(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    :cond_b9
    return-void
.end method

.method private readCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 496
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_14

    .line 497
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 499
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->write([B)V

    .line 500
    const-string p1, "ggrr9"

    const-string v0, "readCharacteristicSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method private readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 505
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_32

    .line 506
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readIndicator:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrr9"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    array-length v2, p1

    invoke-virtual {v0, v2}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->add(I)V

    .line 509
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->write([B)V

    .line 510
    const-string p1, "readIndicator"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method private writeCharacteristic(I)V
    .registers 6

    .line 419
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_5d

    .line 420
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->getBuffer()[B

    move-result-object v0

    .line 421
    const-string v1, "BluzDeviceBle"

    invoke-static {v1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->printHexBuffer(Ljava/lang/String;[B)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buffer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ggrr9"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mCharacteristicReadFifo:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBluetoothGatt.writeCharacteristic(mCharacteristicReadFifo)   c:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_5d
    return-void
.end method

.method private writeCharacteristicSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeCharacteristicSuccess_start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mCharacteristicReadFifo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrr9"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mWriteBuffer:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_5c

    .line 435
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 437
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->next()V

    .line 438
    const-string p1, "writeCharacteristicSuccess.isEnd()"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 440
    :cond_53
    const-string p1, "writeCharacteristicSuccess.isEnd()_no"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 441
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->writeCharacteristic(I)V

    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method protected cancelDiscovery()V
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz v0, :cond_9

    .line 579
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onDiscoveryFinished()V

    .line 581
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mScanCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 582
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;

    if-eqz v0, :cond_1a

    .line 583
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;->stopBleScan()V

    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;

    :cond_1a
    return-void
.end method

.method public closeNotify()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_15

    .line 130
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 133
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_15

    .line 134
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    :cond_15
    return-void
.end method

.method public connect()V
    .registers 2

    .line 599
    invoke-super {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->connect()V

    .line 600
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_8

    return-void

    .line 604
    :cond_8
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceBle:Landroid/bluetooth/BluetoothDevice;

    .line 605
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectBle()V

    return-void
.end method

.method public disconnect(I)V
    .registers 5

    .line 665
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_3d

    .line 666
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1b

    .line 668
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, p1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;->onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    .line 669
    iput-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/16 p1, 0xd

    .line 670
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->updateConnectionState(I)V

    .line 672
    :cond_1b
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->closeNotify()V

    .line 673
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 675
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 676
    iput-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 677
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-direct {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 678
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$9;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$9;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    invoke-direct {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 687
    :cond_3d
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz p1, :cond_53

    .line 688
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_50

    :cond_4e
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    :goto_50
    invoke-virtual {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    :cond_53
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

    .line 701
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 702
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 703
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

    .line 704
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_29

    .line 705
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 706
    :cond_29
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 177
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->read([BII)I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "read:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ggrr9"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

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

    .line 159
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->read([BII)I

    .line 161
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readInt:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ggrr9"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
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

    .line 168
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->read([BII)I

    .line 170
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readShort:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ggrr9"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public retry(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 593
    const-string v0, "drer4re"

    const-string v1, "retry_connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public setUUID(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 725
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mapSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ggrr9"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_83

    .line 729
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 730
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 731
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v5, "keyConfigurationUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 734
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    goto :goto_80

    .line 736
    :cond_60
    const-string v5, "keyServiceUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 737
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->SERVICE:Ljava/util/UUID;

    goto :goto_80

    .line 743
    :cond_6b
    const-string v5, "keyReadCharacteristicUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 744
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

    goto :goto_80

    .line 746
    :cond_76
    const-string v5, "keyWriteCharacteristicUUID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 747
    sput-object v3, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    :cond_80
    :goto_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_83
    return-void
.end method

.method public startDiscovery()V
    .registers 5

    .line 549
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->checkLocationPermission()Z

    .line 551
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->cancelDiscovery()V

    .line 552
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mTimer:Ljava/util/Timer;

    .line 553
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$MyTimerTask;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$MyTimerTask;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V

    .line 554
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 556
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;

    if-nez v0, :cond_28

    .line 557
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->simpleScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;-><init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;

    .line 559
    :cond_28
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mBleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;->startBleScan()V

    .line 561
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz v0, :cond_36

    .line 562
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onDiscoveryStarted()V

    :cond_36
    return-void
.end method

.method public write([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->add([B)Z

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mWriteBuffer.add(buffer):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "   length:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ggrr9"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
