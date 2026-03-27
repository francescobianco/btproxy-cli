.class public Lcom/keephealth/android/util/ble/bluetooth/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;
    }
.end annotation


# static fields
.field private static final CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

.field public static final FLAG_ENTER_UPDATE:I = 0x8b

.field public static final FLAG_GET_NOTICE:I = 0x89

.field public static final FLAG_GET_SLEEP:I = 0x88

.field public static final FLAG_GET_TARGE:I = 0x87

.field public static final FLAG_SEND_CLEAN_DATA:I = 0xa6

.field public static final FLAG_SEND_MESSAGE:I = 0x8a

.field public static final FLAG_SEND_PAIRING:I = 0x8c

.field public static final FLAG_SEND_WEATHER:I = 0xa5

.field public static final FLAG_SEND_WEATHER_THREE:I = 0xc5

.field public static final FLAG_SET_ALARM:I = 0x85

.field public static final FLAG_SET_LONGSIT:I = 0x86

.field public static final FLAG_SET_LONGSIT_NEW:I = 0xc1

.field public static final FLAG_SET_SCREENLIGHT:I = 0xc2

.field public static final FLAG_SET_TIME:I = 0x84

.field public static final FLAT_DEVICE_CONTROL:I = 0x90

.field public static final FLAT_SCHEDULE:I = 0xf0

.field public static final FLAT_SET_USERINFO:I = 0x83

.field public static final FLAT_START_GET_ACTIVITY:I = 0xa3

.field public static final FLAT_START_GET_CURRENT_STEP:I = 0xa0

.field public static final FLAT_START_GET_DEVICE:I = 0x81

.field public static final FLAT_START_GET_DEVICE_STATE:I = 0x82

.field public static final FLAT_START_GET_DRINKWATER:I = 0xae

.field public static final FLAT_START_GET_ECG:I = 0xa2

.field public static final FLAT_START_GET_HEART_RATE:I = 0xa1

.field public static final FLAT_START_GET_HISTORY_STEP:I = 0x2

.field public static final FLAT_START_GET_POWER:I = 0xa7

.field public static final FLAT_START_GET_SPORTMODE:I = 0xaf

.field public static final FLAT_START_GET_TEMP:I = 0xac

.field private static final MSG_CONNECTED:I = 0x1

.field private static final MSG_DISCONNECTED:I = 0x2

.field private static final MSG_FOUND:I = 0x3

.field private static final MSG_SHOW_MESSAGE:I = 0x4

.field private static final PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

.field private static final SERVICE:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "BleManager"

.field public static mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;


# instance fields
.field private CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

.field private CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

.field private CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

.field private REQUEST_PERMISSION_REQ_CODE:I

.field private SERVICE2:Ljava/util/UUID;

.field private autoQueueInterval:I

.field private canSendData:Z

.field characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private connIntervalMax:D

.field private connIntervalMin:D

.field private connSupervisionTimeout:I

.field private connectTimeOut:Ljava/lang/Runnable;

.field controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

.field descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field private enableAdd:I

.field private enableLogger:Z

.field private enablePair:I

.field private enableQueueDelay:Z

.field filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private gattService:Landroid/bluetooth/BluetoothGattService;

.field handler:Landroid/os/Handler;

.field private isCannextSend:Z

.field private isNeedPair:Z

.field isPairSuccess:Z

.field private isReadRssi:Z

.field private isScanning:Z

.field private isStopScanAfterConnected:Z

.field private mAutoConnect:Z

.field protected mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

.field private mConnected:Z

.field protected mConnecting:Z

.field protected mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

.field private mContext:Landroid/content/Context;

.field protected mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

.field protected mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

.field private final mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

.field private mHandler:Landroid/os/Handler;

.field private mListenerList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/keephealth/android/util/ble/bluetooth/LeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

.field private mOnLeNotificationListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

.field private mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

.field private mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

.field private mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

.field mPath:Ljava/lang/String;

.field private mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

.field private mServiceDiscovered:Z

.field mServiceUUID:Ljava/util/UUID;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private onDescriptorWrite:Z

.field private queueDelayTime:I

.field private readRssiIntervalMillisecond:I

.field private requestDataTimeOut:Ljava/lang/Runnable;

.field private scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

.field scanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

.field private scanTimeOut:Ljava/lang/Runnable;

.field scannerCompat:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

.field private sendDataLater:Ljava/lang/Runnable;

.field private slaveLatency:I

.field private startMessage:Z

.field private writeTimeOut:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 184
    const-string v0, "00001800-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE:Ljava/util/UUID;

    .line 185
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    .line 186
    const-string v0, "00002A04-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x378

    .line 188
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->REQUEST_PERMISSION_REQ_CODE:I

    const/16 v0, 0x190

    .line 199
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->autoQueueInterval:I

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    .line 213
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    .line 221
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Lcom/keephealth/android/util/ble/bluetooth/BleManager$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    .line 222
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    const/16 v0, 0x3e8

    .line 224
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiIntervalMillisecond:I

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    .line 234
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    .line 235
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 236
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnecting:Z

    .line 417
    const-string v0, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE2:Ljava/util/UUID;

    .line 418
    const-string v0, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    .line 419
    const-string v0, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

    .line 446
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 580
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;

    .line 606
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->sendDataLater:Ljava/lang/Runnable;

    .line 646
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    .line 723
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->handler:Landroid/os/Handler;

    .line 1092
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connectTimeOut:Ljava/lang/Runnable;

    .line 1540
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    .line 1548
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;

    .line 1821
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    .line 2754
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    .line 246
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V
    .registers 6

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x378

    .line 188
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->REQUEST_PERMISSION_REQ_CODE:I

    const/16 v0, 0x190

    .line 199
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->autoQueueInterval:I

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    .line 213
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    .line 221
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Lcom/keephealth/android/util/ble/bluetooth/BleManager$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    .line 222
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    const/16 v0, 0x3e8

    .line 224
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiIntervalMillisecond:I

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    .line 234
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    .line 235
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 236
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnecting:Z

    .line 417
    const-string v0, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE2:Ljava/util/UUID;

    .line 418
    const-string v0, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    .line 419
    const-string v0, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

    .line 446
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 580
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;

    .line 606
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->sendDataLater:Ljava/lang/Runnable;

    .line 646
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    .line 723
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->handler:Landroid/os/Handler;

    .line 1092
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connectTimeOut:Ljava/lang/Runnable;

    .line 1540
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$7;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    .line 1548
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;

    .line 1821
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$10;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    .line 2754
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    .line 275
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getQueueDelayTime()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->queueDelayTime:I

    .line 277
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableQueueDelay()Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableQueueDelay:Z

    .line 278
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableLogger()Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

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

    .line 283
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 287
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 288
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-direct {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;-><init>()V

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 289
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    invoke-direct {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    .line 295
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    :cond_33
    if-eqz p2, :cond_38

    .line 298
    invoke-virtual {p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setUUID(Ljava/util/Map;)V

    :cond_38
    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristic(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 151
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connectTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isCannextSend:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Ljava/lang/Runnable;)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isReadRssi:Z

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 1

    .line 151
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiTimerTask()V

    return-void
.end method

.method static synthetic access$2202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->onDescriptorWrite:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/bluetooth/BluetoothGattService;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->gattService:Landroid/bluetooth/BluetoothGattService;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->gattService:Landroid/bluetooth/BluetoothGattService;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/util/UUID;
    .registers 1

    .line 151
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)D
    .registers 3

    .line 151
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMin:D

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/keephealth/android/util/ble/bluetooth/BleManager;D)D
    .registers 3

    .line 151
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMin:D

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)D
    .registers 3

    .line 151
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMax:D

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;D)D
    .registers 3

    .line 151
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connIntervalMax:D

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I
    .registers 1

    .line 151
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->slaveLatency:I

    return p0
.end method

.method static synthetic access$2902(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I
    .registers 2

    .line 151
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->slaveLatency:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I
    .registers 1

    .line 151
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connSupervisionTimeout:I

    return p0
.end method

.method static synthetic access$3002(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I
    .registers 2

    .line 151
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connSupervisionTimeout:I

    return p1
.end method

.method static synthetic access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I
    .registers 1

    .line 151
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->autoQueueInterval:I

    return p0
.end method

.method static synthetic access$3202(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I
    .registers 2

    .line 151
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->autoQueueInterval:I

    return p1
.end method

.method static synthetic access$3300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$3600()Ljava/util/UUID;
    .registers 1

    .line 151
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->canSendData:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->canSendData:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isNeedPair:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isNeedPair:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/keephealth/android/util/ble/bluetooth/BleManager;I)I
    .registers 2

    .line 151
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enablePair:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/UUID;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$4100()Ljava/util/UUID;
    .registers 1

    .line 151
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 3

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableQueueDelay:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)I
    .registers 1

    .line 151
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->queueDelayTime:I

    return p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelTagList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/LeListener;",
            ">;)V"
        }
    .end annotation

    .line 2800
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2801
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2802
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2804
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2806
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2807
    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2808
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    if-eqz v2, :cond_36

    .line 2811
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_36

    .line 2814
    :cond_48
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelTagList(Ljava/util/List;)V

    :cond_4b
    return-void
.end method

.method private enableCCC(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V
    .registers 4

    const/4 v0, 0x2

    .line 452
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    const/4 v0, 0x1

    .line 454
    :try_start_5
    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 455
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_10

    .line 458
    :catch_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    .line 460
    :try_start_13
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 461
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 462
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall:Z

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    .line 463
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall:Z

    .line 464
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return-void
.end method

.method private enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 12

    .line 1306
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0xe9

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_32

    .line 1308
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1309
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v0, :cond_e

    .line 1310
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v4, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v0, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_e

    .line 1315
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v2

    :cond_32
    if-nez p2, :cond_5e

    .line 1319
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1320
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v0, :cond_3a

    .line 1321
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v4, "characteristic uuid is null."

    invoke-direct {v0, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_3a

    .line 1326
    :cond_57
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v2

    .line 1329
    :cond_5e
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    .line 1330
    const-string v5, "characteristic uuid : "

    if-nez v4, :cond_c6

    .line 1331
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "uuid:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", does not support indication"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8e
    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1333
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v4, :cond_8e

    .line 1334
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", does not support indication."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v3, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 1334
    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_8e

    .line 1339
    :cond_c0
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v2

    .line 1342
    :cond_c6
    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1343
    iget-boolean v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v6, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setCharacteristicNotification uuid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v6, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1344
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-eqz v4, :cond_113

    .line 1346
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 1347
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeDescriptor(indication), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v6, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    .line 1350
    :cond_113
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_119
    :goto_119
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1351
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v4, :cond_119

    .line 1352
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", does not contain descriptor."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v3, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 1352
    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_119

    .line 1357
    :cond_14b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v2
.end method

.method private enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 14

    .line 1147
    const-string v0, "isUnbandDeleDevice"

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v2, 0xe9

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez v1, :cond_2e

    .line 1149
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1150
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v0, :cond_10

    .line 1151
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v1, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v0, v2, v3, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_10

    :cond_2d
    return v4

    :cond_2e
    const/4 v5, 0x1

    if-nez p2, :cond_5a

    .line 1160
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1161
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v0, :cond_37

    .line 1162
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v1, "characteristic uuid is null."

    invoke-direct {v0, v2, v3, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_37

    .line 1167
    :cond_54
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    invoke-virtual {p1, v5}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v4

    .line 1170
    :cond_5a
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    .line 1171
    const-string v7, "characteristic uuid : "

    if-nez v6, :cond_c1

    .line 1172
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "uuid:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", does not support notification"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8a
    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1174
    instance-of v1, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v1, :cond_8a

    .line 1175
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v3, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 1175
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_8a

    .line 1180
    :cond_ba
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v4

    :cond_c1
    const/16 v6, 0x8

    .line 1184
    :try_start_c3
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v8

    const-wide/16 v9, 0x1f4

    if-nez v8, :cond_114

    .line 1185
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_eb

    .line 1188
    invoke-virtual {v1, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1189
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    .line 1190
    const-string v5, "tty5rt"

    const-string v8, "AppApplication.isReadNotiOpen = true  1111"

    invoke-static {v5, v8}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_fc

    .line 1193
    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->sendDataLater:Ljava/lang/Runnable;

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_fc

    .line 1196
    :cond_eb
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    .line 1197
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 1198
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1199
    invoke-virtual {p0, v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 1200
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 1201
    invoke-virtual {p0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 1203
    :cond_fc
    :goto_fc
    sget-object v5, Lcom/keephealth/android/app/AppApplication;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v5, :cond_15c

    .line 1204
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_15c

    if-nez v0, :cond_15c

    .line 1207
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v5, 0x22

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    goto :goto_15c

    .line 1214
    :cond_114
    invoke-virtual {v1, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1215
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    if-eqz p1, :cond_15c

    .line 1217
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->sendDataLater:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_122} :catch_123

    goto :goto_15c

    :catch_123
    move-exception v0

    .line 1221
    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "enableNotification: \u5f02\u5e38\u4fe1\u606f: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    .line 1223
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 1224
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1225
    invoke-virtual {p0, v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 1226
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    .line 1227
    invoke-virtual {p0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    .line 1228
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V

    .line 1229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_15c

    const/16 v0, 0x401

    .line 1230
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    const/16 v0, 0x409

    .line 1231
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1235
    :cond_15c
    :goto_15c
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setCharacteristicNotification uuid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string p1, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-eqz p1, :cond_1b1

    .line 1238
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 1239
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "writeDescriptor(notification), "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1240
    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_1b0

    .line 1241
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_1b0
    return v4

    .line 1246
    :cond_1b1
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b7
    :goto_1b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1247
    instance-of v1, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v1, :cond_1b7

    .line 1248
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", does not contain descriptor."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 1248
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_1b7

    .line 1253
    :cond_1e9
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v4
.end method

.method public static getmBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 1

    .line 250
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method private static isAndroidMainThread()Z
    .registers 2

    .line 406
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 10

    .line 1663
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x3

    const/16 v2, 0xe9

    const/4 v3, 0x0

    if-nez v0, :cond_33

    .line 1665
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1666
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v4, :cond_e

    .line 1667
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    const-string v5, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_e

    .line 1673
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v3

    :cond_33
    if-nez p1, :cond_60

    .line 1677
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1678
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v4, :cond_3b

    .line 1679
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    const-string v5, "characteristic uuid is null."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_3b

    .line 1685
    :cond_58
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v3

    .line 1689
    :cond_60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_aa

    .line 1691
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6e
    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1692
    instance-of v5, v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v5, :cond_6e

    .line 1693
    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "characteristic : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", property not support read."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v1, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    .line 1693
    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_6e

    .line 1699
    :cond_a2
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v3

    .line 1702
    :cond_aa
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method

.method private readConnectionParameters()V
    .registers 4

    .line 1809
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_e

    .line 1810
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "The BluetoothGatt is null, check connection ?"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1813
    :cond_e
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readCharacteristicQueue(Ljava/util/UUID;Ljava/util/UUID;I)V

    return-void
.end method

.method private readIndicator(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 2744
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_17

    .line 2745
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 2746
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    if-eqz v0, :cond_17

    .line 2747
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->add(I)V

    .line 2748
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->write([B)V

    :cond_17
    return-void
.end method

.method private readRssiTimerTask()V
    .registers 8

    const/4 v0, 0x0

    .line 1733
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimer:Ljava/util/Timer;

    .line 1734
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimerTask:Ljava/util/TimerTask;

    .line 1735
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimer:Ljava/util/Timer;

    .line 1736
    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager$9;

    invoke-direct {v2, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$9;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    iput-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimerTask:Ljava/util/TimerTask;

    .line 1744
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimer:Ljava/util/Timer;

    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiIntervalMillisecond:I

    int-to-long v5, v0

    const-wide/16 v3, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 410
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isAndroidMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 411
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    .line 413
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_f
    return-void
.end method

.method private writeCharacteristic(I)V
    .registers 4

    .line 256
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_25

    const-wide/16 v0, 0x2

    .line 258
    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 262
    :goto_e
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->getBuffer()[B

    move-result-object p1

    .line 263
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 264
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    .line 268
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_25
    return-void
.end method

.method private writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 10

    .line 1578
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x2

    const/16 v2, 0xe9

    const/4 v3, 0x0

    if-nez v0, :cond_33

    .line 1580
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1581
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v4, :cond_e

    .line 1582
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    const-string v5, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_e

    .line 1588
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v3

    :cond_33
    if-nez p1, :cond_60

    .line 1592
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1593
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v4, :cond_3b

    .line 1594
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    const-string v5, "characteristic uuid is null."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_3b

    .line 1599
    :cond_58
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v3

    .line 1603
    :cond_60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_aa

    .line 1605
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6e
    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1606
    instance-of v5, v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v5, :cond_6e

    .line 1607
    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "characteristic : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", property not support write."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v1, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    .line 1607
    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_6e

    .line 1613
    :cond_a2
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->next(I)V

    return v3

    .line 1616
    :cond_aa
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 3

    .line 2757
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    if-eqz v0, :cond_7

    .line 2758
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->addDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    :cond_7
    return-void
.end method

.method addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z
    .registers 6

    .line 493
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 494
    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 495
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 499
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method cancelAllTag()V
    .registers 3

    .line 2820
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    .line 2821
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2822
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method cancelReadRssiTimerTask()V
    .registers 3

    .line 1722
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1723
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1724
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimer:Ljava/util/Timer;

    .line 1726
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    .line 1727
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1728
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mTimerTask:Ljava/util/TimerTask;

    :cond_13
    return-void
.end method

.method cancelTag(Ljava/lang/Object;)V
    .registers 7

    .line 2788
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    .line 2789
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2790
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 2791
    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_e

    .line 2792
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 2795
    :cond_24
    invoke-direct {p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelTagList(Ljava/util/List;)V

    .line 2796
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method cleanConnectListenner()V
    .registers 3

    .line 2778
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2779
    :try_start_4
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    .line 2780
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method clearDeviceCache(I)Z
    .registers 8

    const-string p1, "refresh Device Cache: "

    .line 473
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    .line 474
    :try_start_5
    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 475
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "please connected bluetooth then clear cache."

    invoke-static {p1, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 476
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_51

    return v2

    .line 479
    :cond_15
    :try_start_15
    const-class v1, Landroid/bluetooth/BluetoothGatt;

    const-string v3, "refresh"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 481
    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 482
    iget-boolean v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->i(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_45
    .catchall {:try_start_15 .. :try_end_43} :catchall_51

    .line 483
    :try_start_43
    monitor-exit v0

    return v1

    :catch_45
    move-exception p1

    .line 486
    iget-boolean v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v4, "An exception occured while refreshing device"

    invoke-static {v1, v3, v4, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    :cond_4f
    monitor-exit v0

    return v2

    :catchall_51
    move-exception p1

    .line 489
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_51

    throw p1
.end method

.method clearQueue()V
    .registers 3

    .line 2826
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    .line 2827
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->cancelAll()V

    .line 2828
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method close(I)V
    .registers 2

    .line 1786
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_1a

    const/4 p1, 0x2

    .line 1787
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 1789
    :try_start_8
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_d} :catch_d

    :catch_d
    const/4 p1, 0x0

    .line 1793
    sput-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    .line 1794
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    .line 1795
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z

    .line 1796
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1797
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    :cond_1a
    return-void
.end method

.method public closeGatt()V
    .registers 2

    .line 1081
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_f

    .line 1083
    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 1084
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    const/4 v0, 0x0

    .line 1088
    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_f
    return-void
.end method

.method public closeNotify()V
    .registers 4

    .line 3054
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1b

    .line 3055
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 3056
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v2, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 3058
    :cond_10
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_1b

    .line 3059
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v2, Lcom/keephealth/android/app/AppApplication;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    :cond_1b
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    return-void
.end method

.method connect(ZLcom/keephealth/android/model/bean/BLEDevice;I)Z
    .registers 8

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect_a-------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drer4re"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mAutoConnect:Z

    const/4 p1, 0x0

    .line 728
    sput p1, Lcom/keephealth/android/app/AppApplication;->outTimeSuccess:I

    .line 729
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x1

    if-nez p2, :cond_46

    .line 731
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_24
    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 732
    instance-of v1, p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v1, :cond_24

    .line 733
    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    const/16 v2, 0xe9

    const-string v3, "bluetoothDevice.connectGatt(..) on a null object reference. check bluetoothDevice object is not null."

    invoke-direct {v1, v2, v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_24

    .line 739
    :cond_43
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    return p1

    .line 742
    :cond_46
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    if-eqz p2, :cond_83

    .line 743
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth has been connected. connect false."

    invoke-static {p2, p3, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_59
    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_74

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 745
    instance-of v2, p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_59

    .line 746
    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v2, p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_59

    .line 750
    :cond_74
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz p2, :cond_80

    .line 751
    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {p3, p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    .line 754
    :cond_80
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    return p1

    .line 757
    :cond_83
    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_9a

    .line 758
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "The BluetoothGatt already exist, set it close() and null."

    invoke-static {p2, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 760
    :try_start_90
    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_95
    .catch Ljava/lang/NullPointerException; {:try_start_90 .. :try_end_95} :catch_95

    :catch_95
    const/4 p2, 0x0

    .line 764
    sput-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 765
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    .line 767
    :cond_9a
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "create new device connection for BluetoothGatt. "

    invoke-static {p2, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b0

    .line 776
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    return p1

    .line 779
    :cond_b0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:BleManager.class  \u5f00\u59cb\u8fde\u63a5\u8bbe\u5907...mac:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  a:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 782
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isNeedPair:Z

    .line 783
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;

    invoke-direct {p3, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1067
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connectTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method public connectToDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    .line 712
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1e

    .line 713
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 717
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_28

    .line 719
    :cond_1e
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    invoke-virtual {p1, v0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    sput-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :goto_28
    return-void
.end method

.method destroy()V
    .registers 3

    .line 2770
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2771
    :try_start_4
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeNotificationListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    .line 2772
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    .line 2773
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    .line 2774
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method destroy(Ljava/lang/Object;)V
    .registers 2

    .line 2784
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method public disable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method disableBluetooth()Z
    .registers 5

    .line 393
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    .line 394
    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 396
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 397
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 399
    :cond_13
    iget-boolean v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "false. your device has been turn off Bluetooth."

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 400
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_1f
    move-exception v1

    .line 402
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method disconnect(I)V
    .registers 2

    .line 1749
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    if-eqz p1, :cond_21

    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    .line 1750
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 1751
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelReadRssiTimerTask()V

    .line 1753
    :try_start_f
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_14} :catch_14

    :catch_14
    const/4 p1, 0x0

    .line 1757
    sput-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    .line 1758
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    .line 1759
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1760
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z

    .line 1761
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    :cond_21
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 2865
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeNotify()V

    const/4 p1, 0x0

    .line 2866
    sput-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2867
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-direct {p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;-><init>()V

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    .line 2868
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$11;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$11;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    invoke-direct {p1, v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    return-void
.end method

.method disreconnect()V
    .registers 2

    .line 1768
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    .line 1769
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    .line 1770
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelReadRssiTimerTask()V

    .line 1772
    :try_start_b
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_10

    :catch_10
    const/4 v0, 0x0

    .line 1775
    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v0, 0x0

    .line 1776
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    .line 1777
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1778
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z

    .line 1779
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    :cond_1d
    return-void
.end method

.method public enable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method enableBluetooth(Landroid/app/Activity;)Z
    .registers 6

    .line 348
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    .line 349
    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 351
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "false. your device does not support bluetooth. "

    invoke-static {p1, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 352
    monitor-exit v0

    return v2

    .line 354
    :cond_15
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 355
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v3, "false. your device has been turn on bluetooth."

    invoke-static {p1, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 356
    monitor-exit v0

    return v2

    .line 358
    :cond_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 369
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_3c
    move-exception p1

    .line 370
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method enableBluetooth(Landroid/app/Activity;I)Z
    .registers 6

    .line 375
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    monitor-enter v0

    .line 376
    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 378
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "false. your device does not support bluetooth. "

    invoke-static {p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 379
    monitor-exit v0

    return v2

    .line 381
    :cond_15
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 382
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v1, "false. your device has been turn on bluetooth."

    invoke-static {p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 383
    monitor-exit v0

    return v2

    .line 385
    :cond_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 387
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_33
    move-exception p1

    .line 388
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method enableIndicationQueue(ZLjava/util/UUID;[Ljava/util/UUID;)V
    .registers 15

    .line 1363
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x6

    const/16 v2, 0xe9

    if-nez v0, :cond_2b

    .line 1364
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1365
    instance-of p3, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz p3, :cond_d

    .line 1366
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v0, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {p3, v2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_d

    :cond_2a
    return-void

    .line 1374
    :cond_2b
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 1376
    array-length v3, p3

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_bc

    aget-object v5, p3, v4

    .line 1377
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    if-nez v6, :cond_77

    .line 1379
    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1380
    instance-of v8, v7, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v8, :cond_43

    .line 1381
    check-cast v7, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v8, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "can not find characteristic form given characteristic uuid : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", where in given service uuid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v1, v9}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_43

    .line 1388
    :cond_77
    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newEnableIndicationsRequest(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;I)V

    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 1392
    :cond_88
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8e
    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_bc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1393
    instance-of v0, p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v0, :cond_8e

    .line 1394
    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can not find service form given service uuid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 1394
    invoke-virtual {p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_8e

    :cond_bc
    return-void
.end method

.method enableNotificationQueue(IZLjava/util/UUID;[Ljava/util/UUID;)V
    .registers 15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 1261
    :cond_6
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enablePair:I

    .line 1263
    :cond_8
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0xe9

    const/4 v1, 0x5

    if-nez p1, :cond_33

    .line 1264
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1265
    instance-of p3, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz p3, :cond_15

    .line 1266
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string p4, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {p3, v0, v1, p4}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_15

    :cond_32
    return-void

    .line 1273
    :cond_33
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 1275
    array-length v2, p4

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_bf

    aget-object v4, p4, v3

    .line 1276
    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    if-nez v5, :cond_7f

    .line 1278
    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4b
    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1279
    instance-of v7, v6, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v7, :cond_4b

    .line 1280
    check-cast v6, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v7, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "can not find characteristic form given characteristic uuid : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", where in given service uuid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v1, v8}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_4b

    .line 1287
    :cond_7f
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    invoke-static {p2, v5}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newEnableNotificationsRequest(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;I)V

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1291
    :cond_8b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_91
    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1292
    instance-of p4, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz p4, :cond_91

    .line 1293
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance p4, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can not find service form given service uuid : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p4, v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 1293
    invoke-virtual {p2, p4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_91

    :cond_bf
    return-void
.end method

.method findServiceAndCharacteristic(Landroid/bluetooth/BluetoothGatt;)V
    .registers 7

    .line 422
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 424
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 425
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE2:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 426
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 427
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 428
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 429
    sput-object v2, Lcom/keephealth/android/app/AppApplication;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_28

    .line 430
    :cond_43
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    .line 431
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 432
    sput-object v2, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_28

    .line 439
    :cond_52
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicWriteFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_5f

    .line 440
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mCharacteristicReadFifo:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableCCC(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    :cond_5f
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

.method getBluetoothDevice()Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 1115
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    if-eqz v0, :cond_7

    .line 1116
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 1122
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method getConnParameters()Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    .registers 2

    .line 1818
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    return-object v0
.end method

.method getConnected()Z
    .registers 2

    .line 1131
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    return v0
.end method

.method public getConnectedA2dpDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    .registers 1

    return-object p0
.end method

.method getServicesDiscovered()Z
    .registers 2

    .line 1135
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceDiscovered:Z

    return v0
.end method

.method isBluetoothOpen()Z
    .registers 2

    .line 337
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isQ32Device(Ljava/lang/String;)Z
    .registers 4

    .line 1071
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q19 MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 1072
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QX01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CH-W501"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 1073
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MK WATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSE 6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 1074
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMAYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CR075"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_63

    :cond_61
    const/4 p1, 0x0

    return p1

    :cond_63
    :goto_63
    const/4 p1, 0x1

    return p1
.end method

.method isScanning(Z)Z
    .registers 2

    .line 1126
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    return p1
.end method

.method isSupportBluetooth()Z
    .registers 2

    .line 331
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method synthetic lambda$scan$0$com-keephealth-android-util-ble-bluetooth-BleManager()V
    .registers 6

    .line 522
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 523
    instance-of v3, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v3, :cond_6

    .line 524
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    const/16 v4, 0x3d

    invoke-direct {v3, v4, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    goto :goto_6

    .line 528
    :cond_24
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v0, :cond_32

    .line 529
    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    const/16 v3, 0x3e

    invoke-direct {v1, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    :cond_32
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2955
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2956
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->read([BII)I

    .line 2957
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

    .line 2931
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2934
    :cond_6
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mReadBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->read([BII)I

    move-result p1

    return p1
.end method

.method readCharacteristicQueue(Ljava/util/UUID;Ljava/util/UUID;I)V
    .registers 10

    .line 1624
    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v0, 0x3

    const/16 v1, 0xe9

    if-nez p3, :cond_2b

    .line 1625
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1626
    instance-of p3, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz p3, :cond_d

    .line 1627
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    const-string v2, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {p3, v1, v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_d

    :cond_2a
    return-void

    .line 1635
    :cond_2b
    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p3

    if-eqz p3, :cond_7c

    .line 1637
    invoke-virtual {p3, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    if-nez p3, :cond_71

    .line 1639
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3d
    :goto_3d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1640
    instance-of v3, v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v3, :cond_3d

    .line 1641
    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not find characteristic form given characteristic uuid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", where in given service uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_3d

    .line 1648
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newReadRequest(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;I)V

    goto :goto_ac

    .line 1651
    :cond_7c
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_82
    :goto_82
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ac

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1652
    instance-of v2, p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v2, :cond_82

    .line 1653
    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can not find service form given service uuid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_82

    :cond_ac
    :goto_ac
    return-void
.end method

.method public readInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 2939
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2940
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->read([BII)I

    .line 2941
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2942
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method readRssi()V
    .registers 2

    .line 1710
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    if-eqz v0, :cond_8

    .line 1711
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiTimerTask()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    .line 1713
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isReadRssi:Z

    :goto_b
    return-void
.end method

.method public readShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2947
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2948
    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->read([BII)I

    .line 2949
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2950
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 4

    .line 2763
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    if-eqz v0, :cond_10

    .line 2764
    const-string v0, "FF433"

    const-string v1, "controllerDataHandler.removeDeviceCallback"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    :cond_10
    return-void
.end method

.method public retry(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    return-void
.end method

.method scan(ILjava/util/List;Ljava/util/List;Ljava/util/List;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;II)V"
        }
    .end annotation

    .line 516
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    if-eqz p1, :cond_17

    .line 517
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object p1

    .line 518
    iget-object p6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    invoke-virtual {p1, p6}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    .line 521
    new-instance p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V

    const/16 p6, 0x1388

    invoke-static {p1, p6}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    .line 535
    :cond_17
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->stopScan()V

    .line 536
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scannerCompat:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    if-nez p1, :cond_24

    .line 537
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scannerCompat:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    .line 539
    :cond_24
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    if-nez p1, :cond_3d

    .line 540
    new-instance p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;

    invoke-direct {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;-><init>()V

    const/4 p6, 0x2

    .line 541
    invoke-virtual {p1, p6}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->setScanMode(I)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;

    move-result-object p1

    const/4 p6, 0x0

    .line 544
    invoke-virtual {p1, p6}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->setUseHardwareBatchingIfSupported(Z)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;

    move-result-object p1

    .line 545
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    .line 547
    :cond_3d
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->filters:Ljava/util/List;

    if-nez p1, :cond_48

    .line 548
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->filters:Ljava/util/List;

    .line 550
    :cond_48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 551
    new-instance p6, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {p6}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {p6, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p2

    .line 552
    iget-object p6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->filters:Ljava/util/List;

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 554
    :cond_6b
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 555
    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {p3, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p2

    .line 556
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->filters:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 558
    :cond_8e
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/UUID;

    .line 559
    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    .line 560
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p2

    .line 561
    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->filters:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    :cond_b9
    if-nez p5, :cond_bd

    const/16 p5, 0x2710

    .line 570
    :cond_bd
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bluetooth le scanning..."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 571
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    .line 572
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 573
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;

    int-to-long p3, p5

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 575
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scannerCompat:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->filters:Ljava/util/List;

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    iget-object p4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    invoke-virtual {p1, p2, p3, p4}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->startScan(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    :cond_f6
    return-void
.end method

.method scanning()Z
    .registers 2

    .line 639
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    return v0
.end method

.method public setAutoConnectDataChanel(Z)V
    .registers 2

    return-void
.end method

.method public setConfig(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V
    .registers 3

    .line 325
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getQueueDelayTime()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->queueDelayTime:I

    .line 326
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableQueueDelay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableQueueDelay:Z

    .line 327
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableLogger()Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    return-void
.end method

.method setConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V
    .registers 3

    .line 1139
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1140
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    .line 1142
    :cond_7
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    return-void
.end method

.method public setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V
    .registers 2

    .line 2899
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    return-void
.end method

.method public setOnDiscoveryListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;)V
    .registers 2

    return-void
.end method

.method setOnLeNotificationListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;)V
    .registers 2

    .line 1302
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeNotificationListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    return-void
.end method

.method setOnLeReadCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V
    .registers 2

    .line 1706
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    return-void
.end method

.method setOnLeScanListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    .line 506
    :cond_7
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    return-void
.end method

.method setReadRssiIntervalMillisecond(I)V
    .registers 2

    .line 1718
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssiIntervalMillisecond:I

    return-void
.end method

.method setStopScanAfterConnected(Z)V
    .registers 2

    .line 643
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isStopScanAfterConnected:Z

    return-void
.end method

.method public setUUID(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 303
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 304
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_4f

    .line 306
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 309
    const-string v4, "keyConfigurationUUID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 310
    iput-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    goto :goto_4c

    .line 311
    :cond_2c
    const-string v4, "keyServiceUUID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 312
    iput-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->SERVICE2:Ljava/util/UUID;

    goto :goto_4c

    .line 313
    :cond_37
    const-string v4, "keyReadCharacteristicUUID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 315
    iput-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_WRITE_FIFO:Ljava/util/UUID;

    goto :goto_4c

    .line 316
    :cond_42
    const-string v4, "keyWriteCharacteristicUUID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 317
    iput-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->CHARACTERISTIC_READ_FIFO:Ljava/util/UUID;

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_4f
    return-void
.end method

.method setWriteCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 2

    .line 1620
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    return-void
.end method

.method public startDiscovery()V
    .registers 1

    return-void
.end method

.method stopScan()V
    .registers 4

    .line 615
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    if-eqz v0, :cond_50

    .line 616
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    const/4 v0, 0x0

    .line 618
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning:Z

    .line 619
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 620
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    if-nez v2, :cond_16

    .line 621
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v2, :cond_16

    .line 622
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanCompleted()V

    goto :goto_16

    .line 626
    :cond_30
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v0, :cond_40

    .line 627
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    if-nez v0, :cond_40

    .line 628
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanCompleted()V

    const/4 v0, 0x0

    .line 629
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    .line 632
    :cond_40
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;

    const-string v2, "bluetooth le scan has stop."

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method public write([BI)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2919
    sget-object p2, Lcom/keephealth/android/app/AppApplication;->mWriteBuffer:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->add([B)Z

    return-void
.end method

.method writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V
    .registers 11

    .line 1406
    const-string v0, "device is not connect"

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceUUID:Ljava/util/UUID;

    .line 1407
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1408
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1409
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    if-eqz v1, :cond_1f

    .line 1410
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    const/4 v1, 0x0

    .line 1412
    aget-byte v1, p1, v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_2f

    .line 1414
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1418
    :cond_2f
    iget-boolean v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z

    const/16 v2, 0xe9

    const/4 v3, 0x2

    if-nez v1, :cond_6b

    .line 1420
    :try_start_36
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1421
    instance-of p3, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p3, :cond_3c

    .line 1422
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p3, v2, v3, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    :try_end_56
    .catch Ljava/util/ConcurrentModificationException; {:try_start_36 .. :try_end_56} :catch_57

    goto :goto_3c

    .line 1431
    :catch_57
    :cond_57
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_63

    .line 1432
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v3, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1435
    :cond_63
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1438
    :cond_6b
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_a6

    .line 1439
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_75
    :goto_75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "bluetoothGatt is null. check connect status and onServicesDiscovered."

    if-eqz p2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1440
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v0, :cond_75

    .line 1441
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v0, v2, v3, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_75

    .line 1447
    :cond_92
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_9e

    .line 1448
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v3, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1451
    :cond_9e
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_a6
    if-nez p2, :cond_df

    .line 1455
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ae
    :goto_ae
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "service uuid is null"

    if-eqz p2, :cond_cb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1456
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v0, :cond_ae

    .line 1457
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v0, v2, v3, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_ae

    .line 1462
    :cond_cb
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_d7

    .line 1463
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v3, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1465
    :cond_d7
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_df
    if-nez p3, :cond_11b

    .line 1469
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e7
    :goto_e7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "characteristic uuid is null"

    if-eqz p2, :cond_104

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1470
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v0, :cond_e7

    .line 1471
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v0, v2, v3, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_e7

    .line 1476
    :cond_104
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_110

    .line 1477
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v3, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1479
    :cond_110
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1480
    invoke-virtual {p0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->disconnect(I)V

    return-void

    .line 1483
    :cond_11b
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mServiceUUID:Ljava/util/UUID;

    if-eqz v0, :cond_247

    .line 1485
    const-string v0, ", where in given service uuid : "

    const-string v1, "can not find characteristic form given characteristic uuid : "

    if-eqz p3, :cond_1e9

    .line 1486
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v4, :cond_189

    .line 1487
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12f
    :goto_12f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1488
    instance-of v5, v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v5, :cond_12f

    .line 1489
    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_12f

    .line 1495
    :cond_15f
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_180

    .line 1496
    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v2, v3, p2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1500
    :cond_180
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_247

    :cond_189
    const/4 v0, 0x1

    .line 1504
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    .line 1505
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1b6

    .line 1507
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ", service not found: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, v3, p2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    return-void

    .line 1513
    :cond_1b6
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1de

    .line 1515
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ", characteristic not found: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, v3, p2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    return-void

    .line 1520
    :cond_1de
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newWriteRequest(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;I)V

    goto :goto_247

    .line 1523
    :cond_1e9
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1ef
    :goto_1ef
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1524
    instance-of v5, v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v5, :cond_1ef

    .line 1525
    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_1ef

    .line 1531
    :cond_21f
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_240

    .line 1532
    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v2, v3, p2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1536
    :cond_240
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->requestDataTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_247
    :goto_247
    return-void
.end method
