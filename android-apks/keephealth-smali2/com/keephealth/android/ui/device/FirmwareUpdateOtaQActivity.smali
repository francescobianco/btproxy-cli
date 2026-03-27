.class public Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
.implements Lcom/github/gzuliyujiang/filepicker/contract/OnFilePickedListener;


# static fields
.field private static final BLE_UUID_SERVICE:Ljava/lang/String; = "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_READ:Ljava/lang/String; = "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_WRITE:Ljava/lang/String; = "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final DOWN_FAILD:I = 0x0

.field private static final DOWN_UPDATE:I = 0x1

.field private static final FILE_SELECT_CODE:I = 0x0

.field private static final KEY_BLE_UUID_READ:Ljava/lang/String; = "BLE_UUID_READ"

.field private static final KEY_BLE_UUID_SERVICE:Ljava/lang/String; = "BLE_UUID_SERVICE"

.field private static final KEY_BLE_UUID_WRITE:Ljava/lang/String; = "BLE_UUID_WRITE"

.field private static final KEY_BLUE_TYPE_SELECTED:Ljava/lang/String; = "BLUE_TYPE_SELECTED"

.field private static final KEY_EDR_UUID_READ:Ljava/lang/String; = "EDR_UUID_READ"

.field private static final KEY_EDR_UUID_SERVICE:Ljava/lang/String; = "EDR_UUID_SERVICE"

.field private static final KEY_EDR_UUID_WRITE:Ljava/lang/String; = "EDR_UUID_WRITE"

.field private static final KEY_OTA_ALL_FILE_PERMISSION:Ljava/lang/String; = "OTA_ALL_FILE_PERMISSION"

.field private static final KEY_OTA_FILE_NAME:Ljava/lang/String; = "OTA_FILE_NAME"

.field private static final KEY_OTA_FILE_SELECTED:Ljava/lang/String; = "OTA_FILE_SELECTED"

.field private static final KEY_SPP_UUID:Ljava/lang/String; = "SPP_UUID"

.field private static final MSG_INFO:I = 0xc

.field private static final MSG_PROGRESS:I = 0xb

.field private static final MSG_SUCCESS:I = 0xd

.field private static final PERMISSION_REQUEST_COARSE_LOCATION:I = 0x1

.field private static final PERMISSION_REQUEST_READ_EXTERNAL_STORAGE:I = 0x2

.field private static final PERMISSION_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x3

.field private static final REQUEST_MANAGE_EXTERNAL_STORAGE_CODE:I = 0x5

.field private static final REQUEST_PERMISSION_CODE:I = 0x4

.field private static final SPP_UUID:Ljava/lang/String; = "00006666-0000-1000-8000-00805F9B34FB"

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

.field private downUrl:Ljava/lang/String;

.field private e1:Ljava/lang/Exception;

.field private entry:Lcom/keephealth/android/model/bean/DeviceEntry;

.field private fileName:Ljava/lang/String;

.field private isBandWidthTestStarted:Z

.field private isConnectPairSuccess:Z

.field private isReconnect:Z

.field private isStressOneBin:Z

.field private isStressTest:Z

.field private isUpdateComplete:Z

.field private loadFile:Z

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

.field private mAdapterBounded:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

.field private mAdapterScan:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

.field private mAudioDataPSN:I

.field private mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

.field private mBoundedDialog:Landroid/app/AlertDialog;

.field private mBtnBandWidthStartStop:Landroid/widget/Button;

.field private mBtnBounded:Landroid/widget/Button;

.field private mBtnPrepare:Landroid/widget/Button;

.field private mBtnRemoteInfo:Landroid/widget/Button;

.field private mBtnScan:Landroid/widget/Button;

.field private mBtnSelectFile:Landroid/widget/Button;

.field private mBtnSort:Landroid/widget/Button;

.field private mBtnStartStop:Landroid/widget/Button;

.field private mBtnStress:Landroid/widget/Button;

.field private mBtnStressOneBin:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/DeviceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mEditTextUUIDBLERead:Landroid/widget/EditText;

.field private mEditTextUUIDBLEService:Landroid/widget/EditText;

.field private mEditTextUUIDBLEWrite:Landroid/widget/EditText;

.field private mEditTextUUIDSPP:Landroid/widget/EditText;

.field private mEditUUIDDone:Landroid/widget/Button;

.field private mFileNameTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHandler2:Landroid/os/Handler;

.field private mInfoHandler:Landroid/os/Handler;

.field private mLinearLayoutBLE:Landroid/widget/LinearLayout;

.field private mLinearLayoutSPP:Landroid/widget/LinearLayout;

.field private mOTAFileSelected:Ljava/lang/String;

.field private mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

.field private mOTAStatus:I

.field private mOTAVersion:Ljava/lang/String;

.field private mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

.field private mOnDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090461
    .end annotation
.end field

.field private mProgressBarScan:Landroid/widget/ProgressBar;

.field private mRGType:Landroid/widget/RadioGroup;

.field private mRadioButtonBLE:Landroid/widget/RadioButton;

.field private mRadioButtonEDR:Landroid/widget/RadioButton;

.field private mRadioButtonSPP:Landroid/widget/RadioButton;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteStatus:Lcom/keephealth/android/twootablue/ota/RemoteStatus;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScanCount:I

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mStartTime:J

.field private mStressCurrent:Ljava/lang/String;

.field private mStressDevice:Landroid/bluetooth/BluetoothDevice;

.field private mStressHandler:Landroid/os/Handler;

.field private mStressIndex:I

.field private mStressReconnectCallback:Ljava/lang/Runnable;

.field private mStressTimesTextView:Landroid/widget/TextView;

.field private mTextViewAudioData:Landroid/widget/TextView;

.field private mTextViewAudioLen:Landroid/widget/TextView;

.field private mTextViewAudioPSN:Landroid/widget/TextView;

.field private mTextViewDeviceName:Landroid/widget/TextView;

.field private mTextViewStatus:Landroid/widget/TextView;

.field private mTextviewSpendTime:Landroid/widget/TextView;

.field private mViewDialog:Landroid/view/View;

.field private mViewDialogBounded:Landroid/view/View;

.field private needPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionArray:[Ljava/lang/String;

.field progressRate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090473
    .end annotation
.end field

.field saveFileName:Ljava/lang/String;

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

.field private updaterTimeOut:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 108
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/16 v0, 0x9

    .line 120
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "android.permission.INTERNET"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "android.permission.READ_PHONE_STATE"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "android.permission.BLUETOOTH_SCAN"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->permissionArray:[Ljava/lang/String;

    .line 193
    iput v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAStatus:I

    .line 195
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isBandWidthTestStarted:Z

    .line 196
    iput v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAudioDataPSN:I

    .line 211
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z

    .line 213
    iput v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressIndex:I

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;

    .line 215
    iput v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I

    .line 216
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressOneBin:Z

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->saveFileName:Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$1;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$3;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRunnable:Ljava/lang/Runnable;

    .line 420
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$4;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler2:Landroid/os/Handler;

    .line 431
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$5;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    .line 452
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$6;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->updaterTimeOut:Ljava/lang/Runnable;

    .line 695
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;

    .line 696
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$10;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;

    .line 964
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$12;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;

    .line 1469
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1502
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$24;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOnDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    .line 1669
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler2:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 1

    .line 108
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->startDfu()V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 1

    .line 108
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initBluzDevice()V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isConnectPairSuccess:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isConnectPairSuccess:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;J)J
    .registers 3

    .line 108
    iput-wide p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextviewSpendTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressOneBin:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 108
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getStressOTAFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mFileNameTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressTimesTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I
    .registers 1

    .line 108
    iget p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I

    return p0
.end method

.method static synthetic access$2902(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I
    .registers 2

    .line 108
    iput p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I

    return p1
.end method

.method static synthetic access$2908(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I
    .registers 3

    .line 108
    iget v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JJI)V
    .registers 6

    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadUpdateRate(JJI)V

    return-void
.end method

.method static synthetic access$3300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I
    .registers 1

    .line 108
    iget p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressIndex:I

    return p0
.end method

.method static synthetic access$3400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioPSN:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioLen:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JJI)V
    .registers 6

    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadRate(JJI)V

    return-void
.end method

.method static synthetic access$4000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioData:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I
    .registers 1

    .line 108
    iget p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAudioDataPSN:I

    return p0
.end method

.method static synthetic access$4102(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I
    .registers 2

    .line 108
    iput p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAudioDataPSN:I

    return p1
.end method

.method static synthetic access$4200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/content/Context;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBounded:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V
    .registers 2

    .line 108
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->checkChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 1

    .line 108
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->onSort()V

    return-void
.end method

.method static synthetic access$4800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBoundedDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->loadFile:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBarScan:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonSPP:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/model/bean/DeviceEntry;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)Lcom/keephealth/android/model/bean/DeviceEntry;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isReconnect:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewDeviceName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBandWidthStartStop:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6002(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I
    .registers 2

    .line 108
    iput p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAStatus:I

    return p1
.end method

.method static synthetic access$6202(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isBandWidthTestStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->updaterTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private askForAllFilePermission()V
    .registers 4

    const/4 v0, 0x0

    .line 1881
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "OTA_ALL_FILE_PERMISSION"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 1884
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_33

    .line 1886
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1888
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2b
    const/4 v0, 0x1

    .line 1890
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method private checkChanged(Ljava/lang/String;)V
    .registers 5

    .line 1228
    const-string v0, "BLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    const-string v1, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    const-string v2, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    if-eqz p1, :cond_27

    .line 1229
    const-string p1, "BLE_UUID_SERVICE"

    invoke-static {p0, p1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1230
    const-string p1, "BLE_UUID_READ"

    invoke-static {p0, p1, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1231
    const-string p1, "BLE_UUID_WRITE"

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3f

    .line 1233
    :cond_27
    const-string p1, "EDR_UUID_SERVICE"

    invoke-static {p0, p1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1234
    const-string p1, "EDR_UUID_READ"

    invoke-static {p0, p1, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1235
    const-string p1, "EDR_UUID_WRITE"

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_3f
    return-void
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->loadFile:Z

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u8f7d\u8def\u5f84:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grder33"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 329
    :cond_27
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->fileName:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 332
    :cond_63
    new-instance v1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 341
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$2;->start()V

    return-void
.end method

.method private downLoadRate(JJI)V
    .registers 14

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "gfgf433"

    invoke-static {v0, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p5, p1, p3

    .line 524
    const-string v0, "KB"

    const-wide/16 v1, 0x400

    const-string v3, "\uff1a"

    const v4, 0x7f100208

    const-string v5, "%"

    const-wide/16 v6, 0x64

    if-ltz p5, :cond_86

    .line 525
    iget-object p5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v6

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {p5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 526
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->progressRate:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long v1, p3, v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p5, 0x7f10020c

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    new-instance p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3, p4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;J)V

    const/16 p2, 0x1f4

    invoke-static {p1, p2}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    goto :goto_db

    .line 534
    :cond_86
    iget-object p5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v6

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {p5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 535
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->progressRate:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long/2addr p3, v1

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100209

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_db
    return-void
.end method

.method private downLoadUpdateRate(JJI)V
    .registers 15

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "gfdd43"

    invoke-static {v0, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p5, p1, p3

    .line 542
    const-string v0, "KB"

    const-wide/16 v1, 0x400

    const-string v3, "\uff1a"

    const v4, 0x7f100208

    const-string v5, "%"

    const-wide/16 v6, 0x64

    if-ltz p5, :cond_8d

    .line 543
    iget-object p5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->updaterTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p5, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 544
    iget-object p5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v6

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {p5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 545
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->progressRate:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long v1, p3, v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p5, 0x7f10020c

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    new-instance p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3, p4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;J)V

    const/16 p2, 0x1f4

    invoke-static {p1, p2}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    goto :goto_e2

    .line 556
    :cond_8d
    iget-object p5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    mul-long/2addr p1, v6

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {p5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 557
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->progressRate:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    div-long/2addr p3, v1

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100209

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e2
    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadUrl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 355
    :try_start_16
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_a7
    .catchall {:try_start_16 .. :try_end_21} :catchall_a3

    const/16 v3, 0x2710

    .line 357
    :try_start_23
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4e20

    .line 358
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 359
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 360
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8b

    .line 364
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3b} :catch_9d
    .catchall {:try_start_23 .. :try_end_3b} :catchall_98

    .line 365
    :try_start_3b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_88
    .catchall {:try_start_3b .. :try_end_40} :catchall_85

    const/16 p2, 0x800

    .line 366
    :try_start_42
    new-array p2, p2, [B
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_44} :catch_83
    .catchall {:try_start_42 .. :try_end_44} :catchall_81

    move v2, v0

    move v6, v2

    .line 368
    :cond_46
    :goto_46
    :try_start_46
    invoke-virtual {v4, p2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_6d

    .line 369
    invoke-virtual {v5, p2, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v2, v7

    const/4 v7, 0x1

    if-eqz v6, :cond_59

    mul-int/lit8 v8, v2, 0x64

    .line 371
    div-int/2addr v8, v3

    sub-int/2addr v8, v7

    if-le v8, v6, :cond_46

    :cond_59
    add-int/lit8 v6, v6, 0x1

    .line 373
    iget-object v8, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 374
    iput v7, v8, Landroid/os/Message;->what:I

    .line 375
    iput v2, v8, Landroid/os/Message;->arg1:I

    .line 376
    iput v3, v8, Landroid/os/Message;->arg2:I

    .line 377
    iget-object v7, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6c} :catch_7c
    .catchall {:try_start_46 .. :try_end_6c} :catchall_81

    goto :goto_46

    :cond_6d
    if-eqz p1, :cond_72

    .line 386
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_72
    if-eqz v4, :cond_77

    .line 389
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_77
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_d8

    :catch_7c
    move-exception p2

    move v9, v2

    move-object v2, p1

    move p1, v9

    goto :goto_ab

    :catchall_81
    move-exception p2

    goto :goto_9b

    :catch_83
    move-exception p2

    goto :goto_a0

    :catchall_85
    move-exception p2

    move-object v5, v2

    goto :goto_9b

    :catch_88
    move-exception p2

    move-object v5, v2

    goto :goto_a0

    .line 361
    :cond_8b
    :try_start_8b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    new-instance p2, Ljava/lang/Exception;

    const-string v3, "fail!"

    invoke-direct {p2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_98} :catch_9d
    .catchall {:try_start_8b .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p2

    move-object v4, v2

    move-object v5, v4

    :goto_9b
    move-object v2, p1

    goto :goto_db

    :catch_9d
    move-exception p2

    move-object v4, v2

    move-object v5, v4

    :goto_a0
    move-object v2, p1

    move p1, v0

    goto :goto_ab

    :catchall_a3
    move-exception p2

    move-object v4, v2

    move-object v5, v4

    goto :goto_db

    :catch_a7
    move-exception p2

    move p1, v0

    move-object v4, v2

    move-object v5, v4

    .line 381
    :goto_ab
    :try_start_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DOWN_FAILD:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->e1:Ljava/lang/Exception;

    .line 383
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c8
    .catchall {:try_start_ab .. :try_end_c8} :catchall_da

    if-eqz v2, :cond_cd

    .line 386
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_cd
    if-eqz v4, :cond_d2

    .line 389
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_d2
    if-eqz v5, :cond_d7

    .line 392
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_d7
    move v2, p1

    :goto_d8
    int-to-long p1, v2

    return-wide p1

    :catchall_da
    move-exception p2

    :goto_db
    if-eqz v2, :cond_e0

    .line 386
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e0
    if-eqz v4, :cond_e5

    .line 389
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_e5
    if-eqz v5, :cond_ea

    .line 392
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 394
    :cond_ea
    throw p2
.end method

.method private getPathDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2f

    .line 1858
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1859
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPathFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x2f

    .line 1831
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    .line 1832
    const-string v2, ""

    if-ne v0, v1, :cond_c

    return-object v2

    .line 1834
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-ge v1, v0, :cond_15

    return-object v2

    .line 1837
    :cond_15
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStressOTAFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1438
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1439
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 4

    if-eqz p2, :cond_18

    if-nez p1, :cond_5

    goto :goto_18

    .line 1069
    :cond_5
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_10

    return-void

    .line 1073
    :cond_10
    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_18
    :goto_18
    return-void
.end method

.method private initBluzDevice()V
    .registers 6

    .line 1291
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    if-eqz v0, :cond_7

    .line 1292
    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->release()V

    .line 1294
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v0, :cond_13

    .line 1295
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->cancel()V

    .line 1296
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->release()V

    .line 1299
    :cond_13
    const-string v0, "BLUE_TYPE_SELECTED"

    const-string v1, "SPP"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1329
    const-string v0, "BLE_UUID_SERVICE"

    const-string v1, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1330
    const-string v1, "BLE_UUID_READ"

    const-string v2, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1331
    const-string v2, "BLE_UUID_WRITE"

    const-string v3, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1334
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1335
    const-string v4, "keyServiceUUID"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    const-string v0, "keyReadCharacteristicUUID"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const-string v0, "keyWriteCharacteristicUUID"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1338
    invoke-static {v3, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->setUUID(Ljava/util/Map;Z)V

    .line 1339
    const-string v1, "BLE"

    invoke-static {p0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->getDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 1349
    invoke-interface {v1, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setAutoConnectDataChanel(Z)V

    .line 1351
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOnDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setOnDiscoveryListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;)V

    .line 1352
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V

    return-void
.end method

.method private initBoundedListView()Landroid/view/View;
    .registers 6

    const v0, 0x7f0c00cb

    const/4 v1, 0x0

    .line 1272
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09009f

    .line 1274
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1275
    new-instance v2, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$20;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$20;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090355

    .line 1282
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1284
    new-instance v2, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapterBounded:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    .line 1285
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method private initDeviceListView()Landroid/view/View;
    .registers 5

    const v0, 0x7f0c00ea

    const/4 v1, 0x0

    .line 1243
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090472

    .line 1245
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBarScan:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 1246
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v1, 0x7f0900b5

    .line 1247
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnSort:Landroid/widget/Button;

    .line 1248
    new-instance v2, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$19;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$19;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090355

    .line 1263
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1264
    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1265
    new-instance v2, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapterScan:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    .line 1266
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method private initUI()V
    .registers 10

    .line 1077
    const-string v0, "SPP_UUID"

    const-string v1, "00006666-0000-1000-8000-00805F9B34FB"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f090482

    .line 1079
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonSPP:Landroid/widget/RadioButton;

    const v1, 0x7f090481

    .line 1080
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;

    const v1, 0x7f090488

    .line 1081
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonEDR:Landroid/widget/RadioButton;

    .line 1083
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    const-string v2, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    const-string v3, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    const-string v4, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    if-eqz v1, :cond_52

    .line 1084
    const-string v1, "BLE_UUID_SERVICE"

    invoke-static {p0, v1, v4}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1085
    const-string v4, "BLE_UUID_READ"

    invoke-static {p0, v4, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1086
    const-string v4, "BLE_UUID_WRITE"

    invoke-static {p0, v4, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_6a

    .line 1088
    :cond_52
    const-string v1, "EDR_UUID_SERVICE"

    invoke-static {p0, v1, v4}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1089
    const-string v4, "EDR_UUID_READ"

    invoke-static {p0, v4, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1090
    const-string v4, "EDR_UUID_WRITE"

    invoke-static {p0, v4, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1093
    :goto_6a
    const-string v4, "BLUE_TYPE_SELECTED"

    const-string v5, "SPP"

    invoke-static {p0, v4, v5}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const v7, 0x7f09034d

    .line 1095
    invoke-virtual {p0, v7}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutSPP:Landroid/widget/LinearLayout;

    const v7, 0x7f09034b

    .line 1096
    invoke-virtual {p0, v7}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mLinearLayoutBLE:Landroid/widget/LinearLayout;

    .line 1100
    const-string v7, "BLE"

    invoke-static {p0, v4, v7}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1101
    invoke-direct {p0, v7}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->checkChanged(Ljava/lang/String;)V

    const v4, 0x7f09009d

    .line 1103
    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBounded:Landroid/widget/Button;

    .line 1104
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090777

    .line 1106
    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v8, 0x7f09015d

    .line 1108
    invoke-virtual {p0, v8}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDSPP:Landroid/widget/EditText;

    .line 1109
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDSPP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f09015f

    .line 1112
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDBLEService:Landroid/widget/EditText;

    .line 1113
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDBLEService:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f09015e

    .line 1116
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDBLERead:Landroid/widget/EditText;

    .line 1117
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDBLERead:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f090160

    .line 1120
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDBLEWrite:Landroid/widget/EditText;

    .line 1121
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDBLEWrite:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0904cf

    .line 1124
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRGType:Landroid/widget/RadioGroup;

    .line 1125
    new-instance v1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;

    invoke-direct {v1, p0, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$18;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1164
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_115

    .line 1165
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonSPP:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_126

    .line 1166
    :cond_115
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 1167
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_126

    .line 1169
    :cond_121
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonEDR:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_126
    const v0, 0x7f0900cd

    .line 1172
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditUUIDDone:Landroid/widget/Button;

    .line 1173
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905d9

    .line 1175
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewDeviceName:Landroid/widget/TextView;

    .line 1176
    const-string v1, "\u8bf7\u5148\u626b\u63cf\u5e76\u8fde\u63a5\u8bbe\u5907"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0905db

    .line 1178
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;

    .line 1179
    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f09009c

    .line 1182
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnScan:Landroid/widget/Button;

    .line 1183
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b2

    .line 1185
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnSelectFile:Landroid/widget/Button;

    .line 1186
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900aa

    .line 1189
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;

    .line 1190
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0900ad

    .line 1193
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;

    .line 1194
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0900b7

    .line 1197
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;

    .line 1198
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0900b8

    .line 1201
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;

    .line 1202
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0900b9

    .line 1205
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;

    .line 1206
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0905d8

    .line 1209
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioPSN:Landroid/widget/TextView;

    const v0, 0x7f0905d7

    .line 1210
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioLen:Landroid/widget/TextView;

    const v0, 0x7f0905d6

    .line 1211
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewAudioData:Landroid/widget/TextView;

    .line 1212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900cb

    .line 1214
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBandWidthStartStop:Landroid/widget/Button;

    .line 1215
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBandWidthStartStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0905e8

    .line 1218
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextviewSpendTime:Landroid/widget/TextView;

    const v0, 0x7f090185

    .line 1219
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mFileNameTextView:Landroid/widget/TextView;

    .line 1220
    const-string v0, "OTA_FILE_NAME"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1221
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0905a7

    .line 1223
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressTimesTextView:Landroid/widget/TextView;

    return-void
.end method

.method private initXLog()V
    .registers 1

    return-void
.end method

.method private onSort()V
    .registers 3

    .line 1895
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$26;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$26;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1913
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    if-eqz v0, :cond_11

    .line 1914
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    :cond_11
    return-void
.end method

.method private showAutoOtaDoneDialog()V
    .registers 4

    .line 1919
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0069

    .line 1921
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1922
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1923
    const-string v1, "\u6d4b\u8bd5\u5b8c\u6210\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1924
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1925
    new-instance v1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$27;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$27;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1933
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showBoundedDialog()V
    .registers 3

    .line 1380
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBoundedDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2f

    .line 1381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1384
    const-string v1, "\u5df2\u914d\u5bf9\u84dd\u7259\u5217\u8868"

    .line 1385
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0069

    .line 1386
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mViewDialogBounded:Landroid/view/View;

    .line 1387
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1388
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1389
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBoundedDialog:Landroid/app/AlertDialog;

    .line 1391
    new-instance v1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$22;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$22;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1399
    :cond_2f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBoundedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1400
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBoundedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_3c
    return-void
.end method

.method private showFileChooser()V
    .registers 4

    .line 1405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1406
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1407
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1409
    :try_start_12
    const-string v2, "Select a File to Upload"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_25

    .line 1412
    :catch_1c
    const-string v0, "Please install a File Manager."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_25
    return-void
.end method

.method private showScannerDialog()V
    .registers 3

    .line 1356
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2a

    .line 1357
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1360
    const-string v1, "\u70b9\u51fb\u8bbe\u5907\u8fde\u63a5\u84dd\u7259"

    .line 1361
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0069

    .line 1362
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mViewDialog:Landroid/view/View;

    .line 1363
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1364
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanDialog:Landroid/app/AlertDialog;

    .line 1366
    new-instance v1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$21;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$21;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1374
    :cond_2a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1375
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_37
    return-void
.end method

.method private startDfu()V
    .registers 16

    .line 592
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDfu_bleDevice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_159

    const/4 v2, 0x7

    const/4 v3, 0x1

    .line 595
    invoke-virtual {v0, v3, v2}, Lcom/keephealth/android/model/bean/BLEDevice;->setDfu(ZI)V

    .line 596
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 597
    const-string v0, "update_comple"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 598
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initBluzDevice()V

    .line 600
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 601
    iget-object v4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v4, v4, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 602
    new-instance v4, Lcom/keephealth/android/model/bean/DeviceEntry;

    invoke-direct {v4, v0, v2}, Lcom/keephealth/android/model/bean/DeviceEntry;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    iput-object v4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 603
    const-string v2, "mPath:"

    const-string v4, "rtft8"

    const/4 v5, 0x0

    const/16 v6, 0x21

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x5

    const/4 v10, 0x2

    const-string v11, "3423rew22"

    const-string v12, "/"

    if-eqz v0, :cond_f7

    .line 605
    iget-object v13, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v13, v13, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 606
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    const-string v0, "mDeviceList.add(entry)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v0, "\u5f00\u59cb\u8fde\u63a5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v0, "drer4re"

    const-string v1, "sdk  reconnect  222"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    goto/16 :goto_159

    .line 613
    :cond_94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 615
    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 616
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 617
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    .line 618
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 619
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    .line 620
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_cc

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e1

    .line 624
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_e1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v0, "mDeviceAddress !="

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    .line 632
    :cond_f7
    const-string v0, "device == null"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 636
    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 637
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 638
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    .line 639
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 640
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    .line 641
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    .line 642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_134

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_149

    .line 645
    :cond_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_159
    :goto_159
    return-void
.end method

.method private stressNextOTAFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1418
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1419
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1420
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1422
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1423
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1425
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1426
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1428
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateDfu()V
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 565
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->progressRate:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 567
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 568
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$9;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method


# virtual methods
.method public askMultiplePermission()V
    .registers 6

    .line 1807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->needPermission:Ljava/util/List;

    .line 1809
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->permissionArray:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 1810
    invoke-virtual {p0, p0, v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->checkIsAskPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1811
    iget-object v4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->needPermission:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1814
    :cond_1d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->needPermission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 1816
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1821
    const-string v0, "\u4f7f\u7528\u84dd\u7259\u9700\u8981\u6253\u5f00\u5b9a\u4f4d\u6743\u9650\uff01"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_46

    .line 1823
    :cond_34
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->needPermission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public checkIsAskPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1799
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0096

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 9

    .line 467
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 468
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x6a

    const-string v2, "gfgf433"

    if-eq v0, v1, :cond_ab

    const/16 p1, 0x12e

    const-wide/16 v3, 0x4e20

    if-eq v0, p1, :cond_7d

    const/16 p1, 0x312

    if-eq v0, p1, :cond_4b

    const/16 p1, 0x270a

    if-eq v0, p1, :cond_1d

    goto/16 :goto_fb

    .line 510
    :cond_1d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_fb

    .line 511
    const-string p1, "\u5173\u95ed\u84dd\u7259"

    const-string v0, "\u65ad\u5f00\u94fe\u63a5"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100207

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 514
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    .line 515
    const-string p1, "777"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fb

    .line 496
    :cond_4b
    const-string p1, "rtrtu5"

    const-string v0, "ota\u5347\u7ea7\u8d85\u65f6"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z

    if-eqz p1, :cond_64

    .line 498
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$8;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    .line 505
    :cond_64
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    .line 507
    :goto_67
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "666:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fb

    .line 480
    :cond_7d
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isReconnect:Z

    if-eqz p1, :cond_fb

    .line 481
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z

    if-eqz p1, :cond_93

    .line 482
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$7;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_96

    .line 489
    :cond_93
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    .line 491
    :goto_96
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "555 :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    .line 470
    :cond_ab
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get_data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->updaterTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v1

    div-int/2addr v0, v1

    const/16 v1, 0x63

    if-ge v0, v1, :cond_ec

    .line 474
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->updaterTimeOut:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    :cond_ec
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    int-to-long v4, p1

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadUpdateRate(JJI)V

    :cond_fb
    :goto_fb
    return-void
.end method

.method protected initView()V
    .registers 5

    .line 274
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const/4 v0, 0x0

    .line 275
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    const/4 v1, 0x1

    .line 276
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 277
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SDKDemo/Device_update/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->saveFileName:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10020e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_4c

    .line 283
    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v1, v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_51

    .line 285
    :cond_4c
    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    :goto_51
    iput-object p0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mContext:Landroid/content/Context;

    .line 289
    const-string v1, "BluetoothOTA"

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initUI()V

    .line 292
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initXLog()V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;

    .line 296
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initDeviceListView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mViewDialog:Landroid/view/View;

    .line 297
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->initBoundedListView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mViewDialogBounded:Landroid/view/View;

    .line 302
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 303
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->deviceUpdate:Lcom/keephealth/android/model/bean/DeviceUpdate;

    .line 304
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceUpdate;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downUrl:Ljava/lang/String;

    .line 305
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isReconnect:Z

    .line 306
    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadFile(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$downLoadRate$0$com-keephealth-android-ui-device-FirmwareUpdateOtaQActivity(J)V
    .registers 7

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

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

    .line 531
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->updateDfu()V

    return-void
.end method

.method synthetic lambda$downLoadUpdateRate$1$com-keephealth-android-ui-device-FirmwareUpdateOtaQActivity(J)V
    .registers 7

    .line 549
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

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

    .line 550
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 551
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->progressRate:Landroid/widget/TextView;

    const-string p2, "0%"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->tvTips2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100204

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 553
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    return-void
.end method

.method synthetic lambda$startDfu$2$com-keephealth-android-ui-device-FirmwareUpdateOtaQActivity()V
    .registers 3

    .line 610
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    if-eqz p1, :cond_3

    goto :goto_42

    :cond_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_42

    .line 1448
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1449
    invoke-static {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->getFileRealNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1451
    invoke-static {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->getFilePathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1453
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1b

    goto :goto_2b

    .line 1457
    :cond_1b
    const-string v0, "OTA_FILE_SELECTED"

    invoke-static {p0, v0, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1458
    const-string v0, "OTA_FILE_NAME"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1459
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 1454
    :cond_2b
    :goto_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e0\u6cd5\u83b7\u53d6\u6587\u4ef6\u8def\u5f84\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1455
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1465
    :cond_42
    :goto_42
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAudioDataReceived(II[B)V
    .registers 5

    .line 997
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$13;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;II[B)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 261
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v0, :cond_13

    .line 262
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->showToast(Ljava/lang/String;)V

    goto :goto_16

    .line 264
    :cond_13
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    :goto_16
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 676
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 677
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    .line 678
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v1, :cond_d

    .line 679
    invoke-virtual {v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->release()V

    .line 681
    :cond_d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    if-eqz v1, :cond_14

    .line 682
    invoke-interface {v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->release()V

    .line 684
    :cond_14
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mHandler2:Landroid/os/Handler;

    if-eqz v1, :cond_1d

    .line 685
    iget-object v2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 688
    :cond_1d
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isConnectPairSuccess:Z

    .line 689
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 690
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;

    :cond_28
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-eq p2, p3, :cond_5

    return v0

    .line 724
    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 725
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->isUuidValid(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_20

    .line 726
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mContext:Landroid/content/Context;

    const-string p2, "\u8f93\u5165\u7684UUID\u4e0d\u7b26\u5408\u89c4\u8303\uff0c\u8bf7\u786e\u8ba4\u540e\u91cd\u65b0\u8f93\u5165\uff01"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    .line 730
    :cond_20
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const-string p3, "EDR_UUID_SERVICE"

    packed-switch p1, :pswitch_data_6e

    goto :goto_65

    .line 752
    :pswitch_2a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 753
    const-string p1, "BLE_UUID_WRITE"

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 755
    :cond_38
    invoke-static {p0, p3, p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 736
    :pswitch_3c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 737
    const-string p1, "BLE_UUID_SERVICE"

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 739
    :cond_4a
    invoke-static {p0, p3, p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 744
    :pswitch_4e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRadioButtonBLE:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 745
    const-string p1, "BLE_UUID_READ"

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 747
    :cond_5c
    invoke-static {p0, p3, p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 732
    :pswitch_60
    const-string p1, "SPP_UUID"

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    :goto_65
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mEditTextUUIDSPP:Landroid/widget/EditText;

    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->hideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x7f09015d
        :pswitch_60
        :pswitch_4e
        :pswitch_3c
        :pswitch_2a
    .end packed-switch
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    .line 1059
    new-instance p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$17;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$17;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFilePick(Landroid/view/View;)V
    .registers 4

    .line 1864
    new-instance p1, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;

    invoke-direct {p1, p0}, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;-><init>(Landroid/content/Context;)V

    .line 1865
    const-string v0, "OTA_FILE_SELECTED"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1866
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1867
    new-instance v0, Ljava/io/File;

    const-string v1, "sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;->setRootDir(Ljava/io/File;)V

    goto :goto_2c

    .line 1869
    :cond_20
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getPathDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;->setRootDir(Ljava/io/File;)V

    :goto_2c
    const/4 v0, 0x0

    .line 1870
    invoke-virtual {p1, v0}, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;->setLoadAsync(Z)V

    .line 1871
    invoke-virtual {p1, v0}, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;->setShowUpDir(Z)Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;

    const/4 v0, 0x1

    .line 1873
    invoke-virtual {p1, v0}, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;->setExplorerMode(I)V

    .line 1874
    invoke-virtual {p1, p0}, Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;->setOnFilePickedListener(Lcom/github/gzuliyujiang/filepicker/contract/OnFilePickedListener;)V

    .line 1875
    new-instance v0, Lcom/github/gzuliyujiang/filepicker/FilePicker;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/filepicker/FilePicker;-><init>(Landroid/app/Activity;)V

    .line 1876
    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/filepicker/FilePicker;->setExplorerConfig(Lcom/github/gzuliyujiang/filepicker/ExplorerConfig;)V

    .line 1877
    invoke-virtual {v0}, Lcom/github/gzuliyujiang/filepicker/FilePicker;->show()V

    return-void
.end method

.method public onFilePicked(Ljava/io/File;)V
    .registers 4

    .line 1844
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1845
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getPathFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_20

    .line 1847
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_11

    goto :goto_20

    .line 1851
    :cond_11
    const-string v1, "OTA_FILE_SELECTED"

    invoke-static {p0, v1, p1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1852
    const-string p1, "OTA_FILE_NAME"

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1853
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mFileNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public onProgress(II)V
    .registers 5

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "progress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hger3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    new-instance v1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$15;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
    .registers 2

    .line 1020
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mRemoteStatus:Lcom/keephealth/android/twootablue/ota/RemoteStatus;

    .line 1022
    new-instance p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$14;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$14;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 656
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 657
    array-length p2, p3

    if-gtz p2, :cond_7

    return-void

    :cond_7
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_12

    const/4 p2, 0x2

    if-eq p1, p2, :cond_f

    goto :goto_14

    .line 667
    :cond_f
    aget p1, p3, v0

    goto :goto_14

    .line 662
    :cond_12
    aget p1, p3, v0

    :goto_14
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 241
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    return-void
.end method

.method public onStatus(I)V
    .registers 4

    .line 767
    iput p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAStatus:I

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWriteBytes(I)V
    .registers 5

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1046
    new-instance v2, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$16;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JI)V

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 2

    .line 319
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsFail(I)V

    const/4 p1, 0x0

    .line 320
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 3

    .line 310
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsSuccess(I)V

    .line 311
    const-string p1, "grder33"

    const-string v0, "requestPermissionsSuccess..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 312
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    const/4 p1, 0x0

    .line 313
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isReconnect:Z

    .line 314
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadFile(Ljava/lang/String;)V

    return-void
.end method
