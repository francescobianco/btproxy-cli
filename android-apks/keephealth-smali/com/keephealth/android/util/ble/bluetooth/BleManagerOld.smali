.class public Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;
.super Ljava/lang/Object;
.source "BleManagerOld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;
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

.field private static final PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

.field private static final SERVICE:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "BleManagerOld"


# instance fields
.field private REQUEST_PERMISSION_REQ_CODE:I

.field private autoQueueInterval:I

.field private connIntervalMax:D

.field private connIntervalMin:D

.field private connSupervisionTimeout:I

.field private connectTimeOut:Ljava/lang/Runnable;

.field controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

.field private enableLogger:Z

.field private enableQueueDelay:Z

.field handler:Landroid/os/Handler;

.field private isReadRssi:Z

.field private isScanning:Z

.field private isStopScanAfterConnected:Z

.field private mAutoConnect:Z

.field private mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

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

.field private mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

.field private mServiceDiscovered:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private onDescriptorWrite:Z

.field private queueDelayTime:I

.field private readRssiIntervalMillisecond:I

.field private scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

.field private scanTimeOut:Ljava/lang/Runnable;

.field private slaveLatency:I

.field private writeTimeOut:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    const-string v0, "00001800-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->SERVICE:Ljava/util/UUID;

    .line 121
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    .line 122
    const-string v0, "00002A04-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x378

    .line 124
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->REQUEST_PERMISSION_REQ_CODE:I

    const/16 v0, 0x190

    .line 135
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->autoQueueInterval:I

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    .line 149
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    .line 157
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    const/16 v0, 0x3e8

    .line 160
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiIntervalMillisecond:I

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    .line 358
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;

    .line 410
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    .line 454
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->handler:Landroid/os/Handler;

    .line 553
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connectTimeOut:Ljava/lang/Runnable;

    .line 906
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeTimeOut:Ljava/lang/Runnable;

    .line 1142
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    .line 1691
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    .line 167
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V
    .registers 5

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x378

    .line 124
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->REQUEST_PERMISSION_REQ_CODE:I

    const/16 v0, 0x190

    .line 135
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->autoQueueInterval:I

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    .line 149
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    .line 157
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    const/16 v0, 0x3e8

    .line 160
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiIntervalMillisecond:I

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    .line 358
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;

    .line 410
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    .line 454
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->handler:Landroid/os/Handler;

    .line 553
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connectTimeOut:Ljava/lang/Runnable;

    .line 906
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeTimeOut:Ljava/lang/Runnable;

    .line 1142
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$7;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    .line 1691
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    .line 171
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getQueueDelayTime()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->queueDelayTime:I

    .line 173
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableQueueDelay()Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableQueueDelay:Z

    .line 174
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableLogger()Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/content/Context;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connectTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Ljava/lang/Runnable;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isReadRssi:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiTimerTask()V

    return-void
.end method

.method static synthetic access$1902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->onDescriptorWrite:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    return p0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .registers 1

    .line 86
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readConnectionParameters()V

    return-void
.end method

.method static synthetic access$2400()Ljava/util/UUID;
    .registers 1

    .line 86
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)D
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMin:D

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;D)D
    .registers 3

    .line 86
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMin:D

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)D
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMax:D

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;D)D
    .registers 3

    .line 86
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connIntervalMax:D

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->slaveLatency:I

    return p0
.end method

.method static synthetic access$2702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;I)I
    .registers 2

    .line 86
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->slaveLatency:I

    return p1
.end method

.method static synthetic access$2800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connSupervisionTimeout:I

    return p0
.end method

.method static synthetic access$2802(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;I)I
    .registers 2

    .line 86
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connSupervisionTimeout:I

    return p1
.end method

.method static synthetic access$2900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->autoQueueInterval:I

    return p0
.end method

.method static synthetic access$3002(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;I)I
    .registers 2

    .line 86
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->autoQueueInterval:I

    return p1
.end method

.method static synthetic access$3100(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableQueueDelay:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->queueDelayTime:I

    return p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/bluetooth/BluetoothGatt;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
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

    .line 1739
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1740
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1741
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1743
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1745
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1746
    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1747
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    if-eqz v2, :cond_36

    .line 1750
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_36

    .line 1756
    :cond_48
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->cancelTagList(Ljava/util/List;)V

    :cond_4b
    return-void
.end method

.method private enableIndication(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 12

    .line 701
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0xe9

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_32

    .line 703
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 704
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v0, :cond_e

    .line 705
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v4, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v0, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_e

    .line 710
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v2

    :cond_32
    if-nez p2, :cond_5e

    .line 714
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 715
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v0, :cond_3a

    .line 716
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v4, "characteristic uuid is null."

    invoke-direct {v0, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_3a

    .line 721
    :cond_57
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v2

    .line 724
    :cond_5e
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    .line 725
    const-string v5, "characteristic uuid : "

    if-nez v4, :cond_c6

    .line 726
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

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

    .line 727
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 728
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v4, :cond_8e

    .line 729
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 731
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

    .line 729
    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_8e

    .line 734
    :cond_c0
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v2

    .line 737
    :cond_c6
    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 738
    iget-boolean v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v6, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

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

    .line 739
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-eqz v4, :cond_113

    .line 741
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 742
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeDescriptor(indication), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v6, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    .line 745
    :cond_113
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 746
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v4, :cond_119

    .line 747
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
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

    .line 747
    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_119

    .line 752
    :cond_14b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v2
.end method

.method private enableNotification(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 12

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eenableNotification\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ddeewds"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x5

    const/16 v2, 0xe9

    const/4 v3, 0x0

    if-nez v0, :cond_40

    .line 601
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 602
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v0, :cond_22

    .line 603
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v4, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v0, v2, v1, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_22

    :cond_3f
    return v3

    :cond_40
    if-nez p2, :cond_6c

    .line 612
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_48
    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 613
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v0, :cond_48

    .line 614
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v4, "characteristic uuid is null."

    invoke-direct {v0, v2, v1, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_48

    .line 619
    :cond_65
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    .line 622
    :cond_6c
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    .line 623
    const-string v5, "characteristic uuid : "

    if-nez v4, :cond_d3

    .line 624
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "uuid:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", does not support notification"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9c
    :goto_9c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 626
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v4, :cond_9c

    .line 627
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v1, v7}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 627
    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_9c

    .line 632
    :cond_cc
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    .line 635
    :cond_d3
    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 636
    iget-boolean v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v6, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

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

    .line 637
    sget-object p1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-eqz v4, :cond_120

    .line 639
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 640
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeDescriptor(notification), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v6, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    .line 643
    :cond_120
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_126
    :goto_126
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_158

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 644
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v4, :cond_126

    .line 645
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", does not contain descriptor."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v1, v6}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 645
    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_126

    .line 650
    :cond_158
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3
.end method

.method private static isAndroidMainThread()Z
    .registers 2

    .line 254
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

    .line 1014
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x3

    const/16 v2, 0xe9

    const/4 v3, 0x0

    if-nez v0, :cond_33

    .line 1016
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 1017
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v4, :cond_e

    .line 1018
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    const-string v5, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_e

    .line 1024
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    :cond_33
    if-nez p1, :cond_60

    .line 1028
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 1029
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v4, :cond_3b

    .line 1030
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    const-string v5, "characteristic uuid is null."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_3b

    .line 1036
    :cond_58
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    .line 1040
    :cond_60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_aa

    .line 1042
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 1043
    instance-of v5, v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v5, :cond_6e

    .line 1044
    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "characteristic : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1046
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

    .line 1044
    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_6e

    .line 1050
    :cond_a2
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    .line 1053
    :cond_aa
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method

.method private readConnectionParameters()V
    .registers 4

    .line 1131
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_e

    .line 1132
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v2, "The BluetoothGatt is null, check connection ?"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1135
    :cond_e
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->SERVICE:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readCharacteristicQueue(Ljava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method

.method private readRssiTimerTask()V
    .registers 8

    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimer:Ljava/util/Timer;

    .line 1085
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimerTask:Ljava/util/TimerTask;

    .line 1086
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimer:Ljava/util/Timer;

    .line 1087
    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$6;

    invoke-direct {v2, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$6;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    iput-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimerTask:Ljava/util/TimerTask;

    .line 1095
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimer:Ljava/util/Timer;

    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiIntervalMillisecond:I

    int-to-long v5, v0

    const-wide/16 v3, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 258
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isAndroidMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 259
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_f
    return-void
.end method

.method private writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 10

    .line 928
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x2

    const/16 v2, 0xe9

    const/4 v3, 0x0

    if-nez v0, :cond_33

    .line 930
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 931
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v4, :cond_e

    .line 932
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    const-string v5, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_e

    .line 938
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    :cond_33
    if-nez p1, :cond_60

    .line 942
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 943
    instance-of v4, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v4, :cond_3b

    .line 944
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    const-string v5, "characteristic uuid is null."

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_3b

    .line 949
    :cond_58
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    .line 953
    :cond_60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_aa

    .line 955
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 956
    instance-of v5, v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v5, :cond_6e

    .line 957
    check-cast v4, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "characteristic : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
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

    .line 957
    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_6e

    .line 963
    :cond_a2
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->next(I)V

    return v3

    .line 966
    :cond_aa
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 3

    .line 1693
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    if-eqz v0, :cond_7

    .line 1694
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->addDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    :cond_7
    return-void
.end method

.method addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 287
    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 288
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 292
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method cancelAllTag()V
    .registers 3

    .line 1762
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    .line 1763
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1764
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

    .line 1073
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1074
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1075
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimer:Ljava/util/Timer;

    .line 1077
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    .line 1078
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1079
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mTimerTask:Ljava/util/TimerTask;

    :cond_13
    return-void
.end method

.method cancelTag(Ljava/lang/Object;)V
    .registers 7

    .line 1720
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    .line 1721
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1722
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 1723
    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/LeListener;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_e

    .line 1724
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1727
    :cond_24
    invoke-direct {p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->cancelTagList(Ljava/util/List;)V

    .line 1728
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

    .line 1711
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1712
    :try_start_4
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    .line 1713
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method clearDeviceCache()Z
    .registers 8

    const-string v0, "refresh Device Cache: "

    .line 266
    const-class v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v1

    .line 267
    :try_start_5
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 268
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v4, "please connected bluetooth then clear cache."

    invoke-static {v0, v2, v4}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 269
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_51

    return v3

    .line 272
    :cond_15
    :try_start_15
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string v4, "refresh"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 274
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 275
    iget-boolean v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->i(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_45
    .catchall {:try_start_15 .. :try_end_43} :catchall_51

    .line 276
    :try_start_43
    monitor-exit v1

    return v2

    :catch_45
    move-exception v0

    .line 279
    iget-boolean v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v5, "An exception occured while refreshing device"

    invoke-static {v2, v4, v5, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :cond_4f
    monitor-exit v1

    return v3

    :catchall_51
    move-exception v0

    .line 282
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_51

    throw v0
.end method

.method clearQueue()V
    .registers 3

    .line 1768
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    .line 1769
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->cancelAll()V

    .line 1770
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
    .registers 4

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close_ss:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  mBluetoothGatt:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ffr3ddft"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_32

    .line 1115
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 p1, 0x0

    .line 1116
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    .line 1117
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    .line 1118
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z

    .line 1119
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearQueue()V

    :cond_32
    return-void
.end method

.method connect(ZLcom/keephealth/android/model/bean/BLEDevice;)Z
    .registers 8

    .line 456
    const-string v0, "GGGh3d2"

    const-string v1, "connect_\u8fde\u63a5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mAutoConnect:Z

    const/4 p1, 0x0

    .line 458
    sput p1, Lcom/keephealth/android/app/AppApplication;->outTimeSuccess:I

    .line 459
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x1

    if-nez p2, :cond_37

    .line 461
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 462
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v2, :cond_17

    .line 463
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    const/16 v3, 0xe9

    const-string v4, "bluetoothDevice.connectGatt(..) on a null object reference. check bluetoothDevice object is not null."

    invoke-direct {v2, v3, v0, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_17

    :cond_36
    return p1

    .line 471
    :cond_37
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    if-eqz p2, :cond_72

    .line 472
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth has been connected. connect false."

    invoke-static {p2, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4a
    :goto_4a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 474
    instance-of v3, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v3, :cond_4a

    .line 475
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v3, p1, v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_4a

    .line 479
    :cond_65
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz p2, :cond_71

    .line 480
    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v1, p1, v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    :cond_71
    return p1

    .line 485
    :cond_72
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_89

    .line 486
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v2, "The BluetoothGatt already exist, set it close() and null."

    invoke-static {p2, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 p2, 0x0

    .line 488
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 489
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    .line 491
    :cond_89
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v2, "create new device connection for BluetoothGatt. "

    invoke-static {p2, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a4

    .line 500
    const-string p2, "FFDffr34e"

    const-string v0, "mBluetoothDevice.mDeviceAddress == null"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 503
    :cond_a4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/app/AppApplication;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connectTimeOut:Ljava/lang/Runnable;

    const-wide/32 v1, 0x9c40

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method destroy()V
    .registers 3

    .line 1704
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1705
    :try_start_4
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeNotificationListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    .line 1706
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    .line 1707
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    .line 1708
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

    .line 1716
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method disableBluetooth()Z
    .registers 5

    .line 241
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    .line 242
    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 244
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 245
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 247
    :cond_13
    iget-boolean v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v3, "false. your device has been turn off Bluetooth."

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 248
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_1f
    move-exception v1

    .line 250
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method disconnect(I)V
    .registers 4

    .line 1100
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2f

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disconnect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ffr3ddft"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->cancelReadRssiTimerTask()V

    .line 1103
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/4 p1, 0x0

    .line 1104
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    .line 1105
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    .line 1106
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z

    .line 1107
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->clearQueue()V

    :cond_2f
    return-void
.end method

.method enableBluetooth(Landroid/app/Activity;)Z
    .registers 6

    .line 196
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    .line 197
    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 199
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v3, "false. your device does not support bluetooth. "

    invoke-static {p1, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 200
    monitor-exit v0

    return v2

    .line 202
    :cond_15
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 203
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v3, "false. your device has been turn on bluetooth."

    invoke-static {p1, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 204
    monitor-exit v0

    return v2

    .line 206
    :cond_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 217
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_3c
    move-exception p1

    .line 218
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method enableBluetooth(Landroid/app/Activity;I)Z
    .registers 6

    .line 223
    const-class v0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    monitor-enter v0

    .line 224
    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 226
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v1, "false. your device does not support bluetooth. "

    invoke-static {p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 227
    monitor-exit v0

    return v2

    .line 229
    :cond_15
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 230
    iget-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object p2, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v1, "false. your device has been turn on bluetooth."

    invoke-static {p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 231
    monitor-exit v0

    return v2

    .line 233
    :cond_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_33
    move-exception p1

    .line 236
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method enableIndicationQueue(ZLjava/util/UUID;[Ljava/util/UUID;)V
    .registers 15

    .line 758
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x6

    const/16 v2, 0xe9

    if-nez v0, :cond_2b

    .line 759
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 760
    instance-of p3, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz p3, :cond_d

    .line 761
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v0, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {p3, v2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_d

    :cond_2a
    return-void

    .line 769
    :cond_2b
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 771
    array-length v3, p3

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_c2

    aget-object v5, p3, v4

    .line 772
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    if-nez v6, :cond_77

    .line 774
    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 775
    instance-of v8, v7, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v8, :cond_43

    .line 776
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

    .line 783
    :cond_77
    const-string v6, "ddeews"

    const-string v7, "2222"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newEnableIndicationsRequest(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;)V

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 788
    :cond_8e
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_94
    :goto_94
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 789
    instance-of v0, p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    if-eqz v0, :cond_94

    .line 790
    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can not find service form given service uuid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 790
    invoke-virtual {p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_94

    :cond_c2
    return-void
.end method

.method enableNotificationQueue(ZLjava/util/UUID;[Ljava/util/UUID;)V
    .registers 15

    .line 657
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x5

    const/16 v2, 0xe9

    if-nez v0, :cond_2b

    .line 658
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 659
    instance-of p3, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz p3, :cond_d

    .line 660
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    const-string v0, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {p3, v2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_d

    :cond_2a
    return-void

    .line 667
    :cond_2b
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 669
    array-length v3, p3

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_be

    aget-object v5, p3, v4

    .line 670
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    if-nez v6, :cond_77

    .line 672
    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 673
    instance-of v8, v7, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v8, :cond_43

    .line 674
    check-cast v7, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

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

    invoke-virtual {v7, v8}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_43

    .line 681
    :cond_77
    const-string v5, "ddeews"

    const-string v7, "1111"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-static {p1, v6}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newEnableNotificationsRequest(ZLandroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;)V

    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 686
    :cond_8a
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_90
    :goto_90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 687
    instance-of v0, p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    if-eqz v0, :cond_90

    .line 688
    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can not find service form given service uuid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;-><init>(IILjava/lang/String;)V

    .line 688
    invoke-virtual {p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;)V

    goto :goto_90

    :cond_be
    return-void
.end method

.method getBluetoothDevice()Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 572
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    if-eqz v0, :cond_7

    .line 573
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method getConnParameters()Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    .registers 2

    .line 1139
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnParameters:Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    return-object v0
.end method

.method getConnected()Z
    .registers 2

    .line 583
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    return v0
.end method

.method getServicesDiscovered()Z
    .registers 2

    .line 587
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mServiceDiscovered:Z

    return v0
.end method

.method isBluetoothOpen()Z
    .registers 2

    .line 190
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method isSupportBluetooth()Z
    .registers 2

    .line 184
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

.method synthetic lambda$scan$0$com-keephealth-android-util-ble-bluetooth-BleManagerOld()V
    .registers 6

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 311
    instance-of v3, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v3, :cond_6

    .line 312
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    const/16 v4, 0x3d

    invoke-direct {v3, v4, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    goto :goto_6

    .line 316
    :cond_24
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v0, :cond_32

    .line 317
    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;

    const/16 v3, 0x3e

    invoke-direct {v1, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V

    :cond_32
    return-void
.end method

.method readCharacteristicQueue(Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 10

    .line 974
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x3

    const/16 v2, 0xe9

    if-nez v0, :cond_2b

    .line 975
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

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

    .line 976
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v0, :cond_d

    .line 977
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    const-string v3, "BluetoothGatt object is null. check connect status and onServicesDiscovered."

    invoke-direct {v0, v2, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_d

    :cond_2a
    return-void

    .line 985
    :cond_2b
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 987
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_71

    .line 989
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 990
    instance-of v4, v3, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v4, :cond_3d

    .line 991
    check-cast v3, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can not find characteristic form given characteristic uuid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", where in given service uuid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_3d

    .line 998
    :cond_71
    const-string p1, "ddeews"

    const-string p2, "4444"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newReadRequest(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;)V

    goto :goto_b2

    .line 1002
    :cond_82
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_88
    :goto_88
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1003
    instance-of v3, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    if-eqz v3, :cond_88

    .line 1004
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not find service form given service uuid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->onFailure(Lcom/keephealth/android/util/ble/bluetooth/exception/ReadBleException;)V

    goto :goto_88

    :cond_b2
    :goto_b2
    return-void
.end method

.method readRssi()V
    .registers 2

    .line 1061
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    if-eqz v0, :cond_8

    .line 1062
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiTimerTask()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    .line 1064
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isReadRssi:Z

    :goto_b
    return-void
.end method

.method public removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 3

    .line 1698
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->controllerDataHandler:Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;

    if-eqz v0, :cond_7

    .line 1699
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    :cond_7
    return-void
.end method

.method scan(Ljava/util/List;Ljava/util/List;Ljava/util/List;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 304
    iget-boolean p5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    if-eqz p5, :cond_1a

    .line 305
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object p5

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    invoke-virtual {p5, v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    const/4 p5, 0x0

    .line 307
    iput-boolean p5, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    .line 309
    new-instance p5, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V

    const/16 v0, 0x1388

    invoke-static {p5, v0}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    .line 323
    :cond_1a
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->stopScan()V

    .line 324
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object p5

    .line 325
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 326
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->setScanMode(I)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object v2

    .line 333
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 335
    :cond_55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 336
    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {v2, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p2

    .line 337
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 339
    :cond_76
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/UUID;

    .line 340
    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    .line 341
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p2

    .line 342
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_9f
    if-nez p4, :cond_a3

    const/16 p4, 0x2710

    .line 351
    :cond_a3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bluetooth le scanning..."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;

    int-to-long p3, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    invoke-virtual {p5, v1, v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->startScan(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    return-void
.end method

.method scanning()Z
    .registers 2

    .line 403
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    return v0
.end method

.method public setConfig(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V
    .registers 3

    .line 178
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getQueueDelayTime()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->queueDelayTime:I

    .line 179
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableQueueDelay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableQueueDelay:Z

    .line 180
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;->getEnableLogger()Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    return-void
.end method

.method setConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    .line 594
    :cond_7
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    return-void
.end method

.method setOnLeNotificationListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeNotificationListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;

    return-void
.end method

.method setOnLeReadCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V
    .registers 2

    .line 1057
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeReadCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;

    return-void
.end method

.method setOnLeScanListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    .line 299
    :cond_7
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    return-void
.end method

.method setReadRssiIntervalMillisecond(I)V
    .registers 2

    .line 1069
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->readRssiIntervalMillisecond:I

    return-void
.end method

.method setStopScanAfterConnected(Z)V
    .registers 2

    .line 407
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isStopScanAfterConnected:Z

    return-void
.end method

.method setWriteCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 2

    .line 970
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    return-void
.end method

.method stopScan()V
    .registers 4

    .line 383
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    if-eqz v0, :cond_46

    .line 384
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->isScanning:Z

    .line 387
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 388
    instance-of v2, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v2, :cond_16

    .line 389
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanCompleted()V

    goto :goto_16

    .line 392
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    if-eqz v0, :cond_36

    .line 393
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->onScanCompleted()V

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeScanListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;

    .line 396
    :cond_36
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->enableLogger:Z

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->TAG:Ljava/lang/String;

    const-string v2, "bluetooth le scan has stop."

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleLogger;->d(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V
    .registers 11

    .line 801
    const-string v0, "ddeews"

    const-string v1, "3333_writeCharacteristicQueue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 802
    aget-byte v0, p1, v0

    const/16 v1, 0x43

    const-wide/16 v2, 0x2710

    if-ne v0, v1, :cond_18

    .line 803
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 805
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 807
    :goto_1f
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mConnected:Z

    const/4 v1, 0x2

    const/16 v2, 0xe9

    if-nez v0, :cond_56

    .line 808
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "device is not connect"

    if-eqz p2, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 809
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v0, :cond_2c

    .line 810
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v0, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_2c

    .line 816
    :cond_49
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_55

    .line 817
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    :cond_55
    return-void

    .line 822
    :cond_56
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_8a

    .line 823
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_60
    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "bluetoothGatt is null. check connect status and onServicesDiscovered."

    if-eqz p2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 824
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v0, :cond_60

    .line 825
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v0, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_60

    .line 831
    :cond_7d
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_89

    .line 832
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    :cond_89
    return-void

    :cond_8a
    if-nez p2, :cond_bc

    .line 838
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_92
    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "service uuid is null"

    if-eqz p2, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 839
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v0, :cond_92

    .line 840
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v0, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_92

    .line 845
    :cond_af
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_bb

    .line 846
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    :cond_bb
    return-void

    :cond_bc
    if-nez p3, :cond_f2

    .line 851
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c4
    :goto_c4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "characteristic uuid is null"

    if-eqz p2, :cond_e1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 852
    instance-of v0, p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v0, :cond_c4

    .line 853
    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v0, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_c4

    .line 858
    :cond_e1
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_ed

    .line 859
    new-instance p2, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {p2, v2, v1, p3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    :cond_ed
    const/4 p1, 0x1

    .line 861
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->disconnect(I)V

    return-void

    .line 864
    :cond_f2
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_16d

    .line 866
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_163

    .line 868
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_104
    :goto_104
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, ", where in given service uuid : "

    const-string v4, "can not find characteristic form given characteristic uuid : "

    if-eqz v0, :cond_138

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 869
    instance-of v5, v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v5, :cond_104

    .line 870
    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_104

    .line 876
    :cond_138
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_1be

    .line 877
    const-string p1, "FFDf34"

    const-string v0, "characteristic == null    2222222"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, v1, p2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_1be

    .line 886
    :cond_163
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mRequestQueue:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/Request;->newWriteRequest(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/keephealth/android/util/ble/bluetooth/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$RequestQueue;->addRequest(Lcom/keephealth/android/util/ble/bluetooth/Request;)V

    goto :goto_1be

    .line 889
    :cond_16d
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_173
    :goto_173
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "can not find service from given service uuid : "

    if-eqz p3, :cond_1a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 890
    instance-of v3, p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v3, :cond_173

    .line 891
    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v3, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    .line 891
    invoke-virtual {p3, v3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    goto :goto_173

    .line 897
    :cond_1a1
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz p1, :cond_1be

    .line 898
    new-instance p3, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v2, v1, p2}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    .line 898
    invoke-virtual {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    :cond_1be
    :goto_1be
    return-void
.end method
