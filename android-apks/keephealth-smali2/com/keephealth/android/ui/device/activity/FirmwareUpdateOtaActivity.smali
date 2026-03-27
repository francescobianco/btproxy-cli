.class public Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "FirmwareUpdateOtaActivity.java"


# static fields
.field private static final BL_OTA_STATE_IDLE:I = 0x0

.field private static final BL_OTA_STATE_RECONNECT:I = 0x3

.field private static final BL_OTA_STATE_SEND_FIRST_START:I = 0x1

.field private static final BL_OTA_STATE_START:I = 0x4

.field private static final DOWN_FAILD:I = 0x0

.field private static final DOWN_UPDATE:I = 0x1

.field private static final MAX_BL_RECONNECT:I = 0x3

.field private static final MSG_CONNECTION:I = 0xd

.field private static final MSG_INFO:I = 0xc

.field private static final MSG_MTU_UPDATE:I = 0xe

.field private static final MSG_PROGRESS:I = 0xb

.field private static final SCAN_PERIOD:J = 0x2710L

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0xc8


# instance fields
.field public final CONN_CB:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

.field public final OTA_CB:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

.field private blMac:Ljava/lang/String;

.field private blReconnectRetry:I

.field private blScanReconnectRetry:I

.field private blState:I

.field bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bootloaderDevice:Landroid/bluetooth/BluetoothDevice;

.field connectNumber:I

.field private final connectTimeOut:Ljava/lang/Runnable;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

.field private deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field private deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

.field private downUrl:Ljava/lang/String;

.field private e1:Ljava/lang/Exception;

.field private fileName:Ljava/lang/String;

.field private isBlScanning:Z

.field private isCanScan:Z

.field private isConnectSuccess:Z

.field isConnected:Z

.field isGo1333:Z

.field private isOtaRunning:Z

.field private isReconnect:Z

.field isScanSuccess:Z

.field private isUpdateSuccess:Z

.field private leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private mDevice:Lcom/keephealth/android/util/ota/Device;

.field private mDialog:Landroid/app/Dialog;

.field private mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

.field private mHandler:Landroid/os/Handler;

.field private mInfoHandler:Landroid/os/Handler;

.field private mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090461
    .end annotation
.end field

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private otaRunning:Z

.field private otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

.field outActivity:Z

.field private pers:[Ljava/lang/String;

.field progressRate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090473
    .end annotation
.end field

.field private final progressTimeOut:Ljava/lang/Runnable;

.field private saveFileName:Ljava/lang/String;

.field private final scanTimeOut:Ljava/lang/Runnable;

.field private sendNumber:I

.field private time1333:J

.field tvTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f6
    .end annotation
.end field

.field tvTips2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f8
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field update_comple:Z

.field private update_type:Ljava/lang/String;

.field private updaterTimeOut:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->saveFileName:Ljava/lang/String;

    const/4 v0, 0x2

    .line 82
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->pers:[Ljava/lang/String;

    .line 100
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blState:I

    .line 284
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    .line 432
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->otaRunning:Z

    .line 433
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnected:Z

    .line 614
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isOtaRunning:Z

    .line 615
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->CONN_CB:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    .line 801
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 925
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->OTA_CB:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    .line 959
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;

    .line 998
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    .line 1052
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressTimeOut:Ljava/lang/Runnable;

    .line 1074
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$13;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$13;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updaterTimeOut:Ljava/lang/Runnable;

    .line 1099
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$14;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    .line 1227
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    .line 1355
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blReconnectRetry:I

    .line 1356
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    .line 1363
    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;JJ)V
    .registers 5

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downLoadRate(JJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)I
    .registers 1

    .line 78
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    return p0
.end method

.method static synthetic access$1302(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    return p1
.end method

.method static synthetic access$1308(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)I
    .registers 3

    .line 78
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    return v0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I

    return p1
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scan(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/os/Handler;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isOtaRunning:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isOtaRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blReconnectRetry:I

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->stopScanLe()V

    return-void
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;ILjava/lang/String;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updateBlState(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanBlDevice(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/BluetoothLeScanner;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/ScanCallback;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Landroid/bluetooth/le/ScanSettings;
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->buildDefaultScanSettings()Landroid/bluetooth/le/ScanSettings;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isCanScan:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isCanScan:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Landroid/bluetooth/le/ScanResult;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanResuleNull(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blState:I

    return p1
.end method

.method static synthetic access$3300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updaterTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/model/bean/DeviceUpdate;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->saveFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)[B
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->readFirmware(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ota/Device;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    return-object p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnectSuccess:Z

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    return-object p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/GattConnection;)Lcom/keephealth/android/util/telinkota/GattConnection;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    return-object p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/OtaController;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;

    return-object p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Lcom/keephealth/android/util/telinkota/OtaController;)Lcom/keephealth/android/util/telinkota/OtaController;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;

    return-object p1
.end method

.method private buildDefaultScanSettings()Landroid/bluetooth/le/ScanSettings;
    .registers 4

    .line 786
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 787
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 788
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 790
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 791
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    const/4 v1, 0x3

    .line 792
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 794
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2a

    const/4 v1, 0x0

    .line 796
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;

    const/16 v1, 0xff

    .line 797
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setPhy(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 799
    :cond_2a
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method private connectBlDevice()V
    .registers 3

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect bootloader device - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updateBlState(ILjava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bootloaderDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/GattConnection;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 917
    const-string v0, "ggrrt6"

    const-string v1, "connect_5:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    .line 208
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->fileName:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 213
    :cond_4c
    new-instance v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 223
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$1;->start()V

    return-void
.end method

.method private downLoadRate(JJ)V
    .registers 14

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "totalSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  updateTotalSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->firmwarePath:Ljava/lang/String;

    cmp-long v0, p1, p3

    .line 310
    const-string v1, "KB"

    const-wide/16 v2, 0x400

    const-string v4, "\uff1a"

    const v5, 0x7f100208

    const-string v6, "%"

    const-wide/16 v7, 0x64

    if-ltz v0, :cond_a9

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v7

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 312
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressRate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long v2, p3, v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10020c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    new-instance p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3, p4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;J)V

    const/16 p2, 0x1f4

    invoke-static {p1, p2}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    goto :goto_fe

    .line 320
    :cond_a9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v7

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 321
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressRate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long/2addr p3, v2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100209

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_fe
    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FirmwareUpdateOtaActivity: \u4e0b\u8f7d\u5931\u8d25\u5347\u7ea7\u5931\u8d25: \u670d\u52a1\u5668\u9519\u8bef\u7801: "

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 237
    :try_start_18
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_bd
    .catchall {:try_start_18 .. :try_end_23} :catchall_b9

    const/16 v3, 0x2710

    .line 239
    :try_start_25
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4e20

    .line 240
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 241
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 242
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8d

    .line 247
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_b3
    .catchall {:try_start_25 .. :try_end_3d} :catchall_ae

    .line 248
    :try_start_3d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_8a
    .catchall {:try_start_3d .. :try_end_42} :catchall_87

    const/16 p2, 0x800

    .line 249
    :try_start_44
    new-array p2, p2, [B
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_46} :catch_85
    .catchall {:try_start_44 .. :try_end_46} :catchall_83

    move v2, v1

    move v5, v2

    .line 251
    :cond_48
    :goto_48
    :try_start_48
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_6f

    .line 252
    invoke-virtual {v4, p2, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v2, v6

    const/4 v6, 0x1

    if-eqz v5, :cond_5b

    mul-int/lit8 v7, v2, 0x64

    .line 254
    div-int/2addr v7, v3

    sub-int/2addr v7, v6

    if-le v7, v5, :cond_48

    :cond_5b
    add-int/lit8 v5, v5, 0x1

    .line 256
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 257
    iput v6, v7, Landroid/os/Message;->what:I

    .line 258
    iput v2, v7, Landroid/os/Message;->arg1:I

    .line 259
    iput v3, v7, Landroid/os/Message;->arg2:I

    .line 260
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6e} :catch_7e
    .catchall {:try_start_48 .. :try_end_6e} :catchall_83

    goto :goto_48

    :cond_6f
    if-eqz p1, :cond_74

    .line 269
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_74
    if-eqz v0, :cond_79

    .line 272
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 275
    :cond_79
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_f2

    :catch_7e
    move-exception p2

    move v8, v2

    move-object v2, p1

    move p1, v8

    goto :goto_c1

    :catchall_83
    move-exception p2

    goto :goto_b1

    :catch_85
    move-exception p2

    goto :goto_b6

    :catchall_87
    move-exception p2

    move-object v4, v2

    goto :goto_b1

    :catch_8a
    move-exception p2

    move-object v4, v2

    goto :goto_b6

    .line 243
    :cond_8d
    :try_start_8d
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 245
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "fail!"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_ae} :catch_b3
    .catchall {:try_start_8d .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception p2

    move-object v0, v2

    move-object v4, v0

    :goto_b1
    move-object v2, p1

    goto :goto_f5

    :catch_b3
    move-exception p2

    move-object v0, v2

    move-object v4, v0

    :goto_b6
    move-object v2, p1

    move p1, v1

    goto :goto_c1

    :catchall_b9
    move-exception p2

    move-object v0, v2

    move-object v4, v0

    goto :goto_f5

    :catch_bd
    move-exception p2

    move p1, v1

    move-object v0, v2

    move-object v4, v0

    .line 264
    :goto_c1
    :try_start_c1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirmwareUpdateOtaActivity: \u4e0b\u8f7d\u5931\u8d25\u5347\u7ea7\u5931\u8d25:  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 265
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->e1:Ljava/lang/Exception;

    .line 266
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_e2
    .catchall {:try_start_c1 .. :try_end_e2} :catchall_f4

    if-eqz v2, :cond_e7

    .line 269
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e7
    if-eqz v0, :cond_ec

    .line 272
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_ec
    if-eqz v4, :cond_f1

    .line 275
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_f1
    move v2, p1

    :goto_f2
    int-to-long p1, v2

    return-wide p1

    :catchall_f4
    move-exception p2

    :goto_f5
    if-eqz v2, :cond_fa

    .line 269
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_fa
    if-eqz v0, :cond_ff

    .line 272
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_ff
    if-eqz v4, :cond_104

    .line 275
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_104
    throw p2
.end method

.method private getBootloaderDevice()V
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, ""

    const-string v2, ":"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/Arrays;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, -0x3f

    .line 191
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    const/4 v3, 0x1

    .line 192
    aput-byte v1, v0, v3

    const/4 v1, 0x5

    .line 194
    aget-byte v4, v0, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 195
    invoke-static {v0, v2}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blMac:Ljava/lang/String;

    return-void
.end method

.method private isBlMode()Z
    .registers 2

    .line 923
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    iget-boolean v0, v0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->bootloaderModeEnable:Z

    return v0
.end method

.method private readFirmware(Ljava/lang/String;)[B
    .registers 4

    .line 1303
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 1306
    new-array p1, p1, [B

    .line 1307
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 1308
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrtu5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private scan(I)V
    .registers 6

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scan_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 445
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    const/4 v0, 0x2

    .line 449
    new-array v0, v0, [Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_PAIR:Ljava/util/UUID;

    aput-object v1, v0, p1

    .line 450
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 451
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;[Ljava/util/UUID;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanBlDevice(I)V
    .registers 10

    .line 710
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    if-eqz v0, :cond_94

    .line 711
    iget-object v4, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v4, :cond_94

    .line 712
    iget-object v4, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v5, "TA1J01N5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v5, "TA2J01N5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 713
    :cond_21
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 714
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 716
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5df2\u914d\u5bf9\u8bbe\u5907: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BLE"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v6, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 723
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->closeGatt()V

    .line 724
    new-instance p1, Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v4

    iget v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-direct {p1, v5, v4, v0}, Lcom/keephealth/android/util/ota/Device;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    .line 725
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ota/Device;->setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V

    .line 726
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    const/4 p1, 0x1

    .line 728
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnectSuccess:Z

    .line 729
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;

    invoke-direct {v0, p0, v5}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 755
    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "scanBlDevice...a:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggrrt6"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 757
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isCanScan:Z

    .line 758
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    .line 759
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_dc

    .line 760
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2ee0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 764
    :try_start_c8
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V
    :try_end_cf
    .catch Ljava/lang/IllegalStateException; {:try_start_c8 .. :try_end_cf} :catch_cf

    .line 768
    :catch_cf
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->refreshScanner()Z

    .line 769
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_dc
    return-void
.end method

.method private scanResuleNull(Landroid/bluetooth/le/ScanResult;)V
    .registers 8

    .line 882
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_a5

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_a5

    .line 883
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 884
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isCanScan:Z

    if-nez v0, :cond_a5

    const/4 v0, 0x1

    .line 885
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isCanScan:Z

    .line 886
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    .line 887
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isGo1333:Z

    .line 888
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->refreshScanner()Z

    .line 889
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->stopScanLe()V

    .line 890
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->closeGatt()V

    const/4 v1, 0x0

    .line 891
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    .line 893
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v4, v0, [Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v5, v4, v1

    const/16 v5, 0xf

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 895
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v0, v0, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v4, v0, v1

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v1, v3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 898
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isConnectSuccess:Z

    .line 899
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_80

    .line 900
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 901
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 902
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 904
    :cond_80
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z

    .line 905
    new-instance v0, Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/telinkota/GattConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    .line 906
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->CONN_CB:Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/GattConnection;->setConnectionCallback(Lcom/keephealth/android/util/telinkota/GattConnection$ConnectionCallback;)V

    .line 907
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/telinkota/GattConnection;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 908
    new-instance p1, Lcom/keephealth/android/util/telinkota/OtaController;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    invoke-direct {p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;-><init>(Lcom/keephealth/android/util/telinkota/GattConnection;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mOtaController:Lcom/keephealth/android/util/telinkota/OtaController;

    .line 909
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->OTA_CB:Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->setOtaCallback(Lcom/keephealth/android/util/telinkota/OtaController$GattOtaCallback;)V

    :cond_a5
    return-void
.end method

.method private startDfu(I)V
    .registers 8

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDfu...a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setDfu(ZI)V

    .line 392
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 393
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 402
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 403
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bleDevice.getmBytes():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bleDevice.mRssi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rtrtu5"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v2, Lcom/keephealth/android/util/ota/Device;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/BLEDevice;->getmBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget v5, v5, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-direct {v2, p1, v4, v5}, Lcom/keephealth/android/util/ota/Device;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    .line 406
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceCallback:Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/util/ota/Device;->setDeviceStateCallback(Lcom/keephealth/android/util/ota/Device$DeviceStateCallback;)V

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "bluetoothDevice:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    .line 410
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v3, v1, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v4, v3, v0

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 412
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v3, v1, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v4, v3, v0

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 416
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mDevice:Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {p1, p0, v1}, Lcom/keephealth/android/util/ota/Device;->connect(Landroid/content/Context;I)V

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopScanLe()V
    .registers 3

    .line 1516
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_15

    .line 1517
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1519
    :try_start_e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method private updateBlState(ILjava/lang/String;)V
    .registers 3

    .line 957
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blState:I

    return-void
.end method

.method private updateDfu(I)V
    .registers 6

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDfu_b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 331
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_26

    .line 332
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    :cond_26
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 335
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressRate:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 338
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update_type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->update_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v1, "c60_fail_ota"

    invoke-static {p0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->update_comple:Z

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update_comple:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->update_comple:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hfgffr2"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->update_comple:Z

    if-eqz v1, :cond_aa

    .line 348
    const-string v1, "!TextUtils.isEmpty(type) && type.equals(\"mainactivitynew\")"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 351
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 352
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 354
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanBlDevice(I)V

    goto :goto_c1

    .line 359
    :cond_aa
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_c1
    :goto_c1
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0094

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 7

    .line 1233
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 1234
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x12e

    const v1, 0x7f100207

    const/4 v2, 0x0

    const-string v3, "\u65ad\u5f00\u94fe\u63a5"

    const-string v4, "\u5173\u95ed\u84dd\u7259"

    if-eq p1, v0, :cond_ac

    const/16 v0, 0x535

    if-eq p1, v0, :cond_5f

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_4f

    const/16 v0, 0x270a

    if-eq p1, v0, :cond_21

    goto/16 :goto_d1

    .line 1289
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_d1

    .line 1290
    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    .line 1292
    const-string p1, "\u5f53\u524d\u9875\u9762 FirmwareUpdateOtaActivity: \u65ad\u5f00\u8fde\u63a5\u5347\u7ea7\u5931\u8d25"

    invoke-static {v2, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1293
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updaterTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1294
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 1295
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    goto/16 :goto_d1

    .line 1255
    :cond_4f
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$15;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$15;-><init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d1

    .line 1236
    :cond_5f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->time1333:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-lez p1, :cond_a5

    .line 1237
    const-string p1, "1333"

    const-string v0, "ggrrt6"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string p1, "c60_fail_ota"

    invoke-static {p0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "c60_fail_ota:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a5

    .line 1241
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a5

    .line 1243
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-eqz p1, :cond_a2

    const/4 p1, 0x4

    .line 1244
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanBlDevice(I)V

    goto :goto_a5

    .line 1246
    :cond_a2
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    .line 1251
    :cond_a5
    :goto_a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->time1333:J

    goto :goto_d1

    .line 1280
    :cond_ac
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_d1

    .line 1281
    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string p1, "\u5f53\u524d\u9875\u9762 FirmwareUpdateOtaActivity: \u5173\u95ed\u84dd\u7259\u5347\u7ea7\u5931\u8d25"

    invoke-static {v2, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1283
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    .line 1284
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updaterTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1285
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    :cond_d1
    :goto_d1
    return-void
.end method

.method protected initView()V
    .registers 6

    .line 112
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    .line 116
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 117
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "update_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->update_type:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->type:Ljava/lang/String;

    const/4 v1, 0x1

    .line 119
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 120
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/SDKDemo/Device_update/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->saveFileName:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10020e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 124
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->outActivity:Z

    .line 125
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    if-nez v2, :cond_67

    return-void

    .line 129
    :cond_67
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 130
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceUpdate;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downUrl:Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u56fa\u4ef6\u66f4\u65b0url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "downLoadFile:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downLoadFile(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 174
    invoke-static {}, Lcom/keephealth/android/util/telinkota/OtaSettingService;->getInstance()Lcom/keephealth/android/util/telinkota/OtaSettingService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/telinkota/OtaSettingService;->load(Landroid/content/Context;)V

    .line 175
    invoke-static {}, Lcom/keephealth/android/util/telinkota/OtaSettingService;->getInstance()Lcom/keephealth/android/util/telinkota/OtaSettingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/OtaSettingService;->get()Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    return-void
.end method

.method synthetic lambda$downLoadRate$0$com-keephealth-android-ui-device-activity-FirmwareUpdateOtaActivity(J)V
    .registers 7

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->tvTips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100208

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x400

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "KB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 317
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->updateDfu(I)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1529
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v0, :cond_12

    .line 1530
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    const/4 v0, 0x0

    .line 1472
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    .line 1473
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/BLEDevice;->setConnected(Z)V

    .line 1474
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v3, 0x12

    invoke-static {v1, v3}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 1476
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1477
    const-string v1, "tttre4"

    const-string v3, "AppApplication.isOtaUpdate== false   1010"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1479
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2d

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanTimeOut:Ljava/lang/Runnable;

    if-eqz v3, :cond_2d

    .line 1480
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1482
    :cond_2d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_38

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressTimeOut:Ljava/lang/Runnable;

    if-eqz v3, :cond_38

    .line 1483
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1485
    :cond_38
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1487
    :try_start_42
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V
    :try_end_49
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_49} :catch_49

    .line 1492
    :catch_49
    :cond_49
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z

    .line 1493
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    if-eqz v1, :cond_52

    .line 1494
    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/telinkota/GattConnection;->clearAll(Z)V

    .line 1496
    :cond_52
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5e

    .line 1497
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1498
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mHandler:Landroid/os/Handler;

    .line 1500
    :cond_5e
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I

    .line 1501
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v1, :cond_6d

    .line 1502
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "bleReceiveDisConnect"

    invoke-static {v1, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1505
    :cond_6d
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1508
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;

    if-eqz v0, :cond_76

    .line 1509
    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/telinkota/GattConnection;->clearAll(Z)V

    .line 1511
    :cond_76
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->stopScanLe()V

    .line 1512
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 1462
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onStop()V

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onstop:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tttre4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_39

    const/4 v0, 0x1

    .line 1465
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "update_comple"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_39
    return-void
.end method

.method public refreshScanner()Z
    .registers 2

    .line 438
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->leScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public requestPermissionsFail(I)V
    .registers 3

    .line 200
    const-string p1, "tttre4"

    const-string v0, "AppApplication.isOtaUpdate== false   111"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 201
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 3

    .line 180
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsSuccess(I)V

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->downLoadFile(Ljava/lang/String;)V

    .line 183
    const-string v0, "refuse"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public stopScan()V
    .registers 5

    .line 1027
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->stopScanLe()V

    .line 1028
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_55

    const/4 v0, 0x0

    .line 1029
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    .line 1030
    iget-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    if-nez v2, :cond_5f

    .line 1031
    const-string v2, "\u5f53\u524d\u9875\u9762 FirmwareUpdateOtaActivity: \u505c\u6b62\u641c\u7d22\u5347\u7ea7\u5931\u8d25"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V

    .line 1033
    const-string v2, "ggrrt6"

    const-string v3, "\u5931\u8d25555"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1035
    const-string v2, "tttre4"

    const-string v3, "AppApplication.isOtaUpdate== false   888"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1037
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1038
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z

    .line 1039
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I

    .line 1040
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "c60_fail_ota"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1041
    const-string v0, "update_comple"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1042
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    goto :goto_5f

    :cond_55
    add-int/2addr v0, v1

    .line 1045
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I

    .line 1046
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isScanSuccess:Z

    if-nez v0, :cond_5f

    .line 1048
    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->scanBlDevice(I)V

    :cond_5f
    :goto_5f
    return-void
.end method
