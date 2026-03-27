.class public Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "ScanDeviceActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;
.implements Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final ACCESS_FINE_LOCATION_REQUEST_CODE:I = 0x64

.field protected static final ACCESS_FINE_LOCATION_REQUEST_CODE_BACK:I = 0x65

.field protected static final REQUEST_CODE_BLUETOOH:I = 0x66


# instance fields
.field private final STOP_SET_DATA:I

.field private aCon:I

.field private aConnect:I

.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private address:Ljava/lang/String;

.field private af:I

.field aliveActivity:Landroid/app/Activity;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field btnSkip:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b4
    .end annotation
.end field

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private connectTimeOut:Ljava/lang/Runnable;

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field deviceType:I

.field dialog:Landroid/app/Dialog;

.field dialog2:Landroid/app/Dialog;

.field private enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private fromActivity:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private ifSetBle:Z

.field private isClickQ32:Z

.field private isConnectFail:Z

.field private isConnecting:Z

.field isDeviceInfo:Z

.field isDeviceInfo1:Z

.field private isPairSuccess:Z

.field private isScanDevice:Z

.field private isVisible:I

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

.field private mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private mDialog:Landroid/app/Dialog;

.field mDialog2:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mPosition:I

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e1
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private final mRunnableDeviceInfo:Ljava/lang/Runnable;

.field private final mRunnablePair:Ljava/lang/Runnable;

.field private mRunnableScan:Ljava/lang/Runnable;

.field private mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

.field myLocationManager:Landroid/location/LocationManager;

.field private final navigated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private openBle:I

.field private permissionsBluetooth:[Ljava/lang/String;

.field private permissionsBluetoothConnect:[Ljava/lang/String;

.field permissionsBluetooth_connect:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

.field private permissionsLocationBack:[Ljava/lang/String;

.field private pos:I

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private scanAddress:Ljava/lang/String;

.field private scanDeviceBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/ScanDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private scanName:Ljava/lang/String;

.field scanNameBeanList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/ScanNameBean;",
            ">;"
        }
    .end annotation
.end field

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/BLEDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private strScan:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$YxsQSYIdFJeoQJcBjrsIDiteWH4(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showDialogPairing()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 156
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 161
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "android.permission.BLUETOOTH_SCAN"

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetooth_connect:[Ljava/lang/String;

    .line 169
    const-string v1, ""

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    .line 182
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    .line 185
    new-array v0, v4, [Ljava/lang/String;

    aput-object v5, v0, v2

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetooth:[Ljava/lang/String;

    .line 186
    new-array v0, v4, [Ljava/lang/String;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetoothConnect:[Ljava/lang/String;

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableScan:Ljava/lang/Runnable;

    .line 219
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I

    .line 220
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->STOP_SET_DATA:I

    .line 223
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;

    .line 310
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 535
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 572
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    .line 630
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I

    .line 829
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableDeviceInfo:Ljava/lang/Runnable;

    .line 841
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnablePair:Ljava/lang/Runnable;

    .line 850
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo1:Z

    .line 886
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo:Z

    .line 1090
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->navigated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    .line 1589
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnablePair:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I
    .registers 1

    .line 156
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I

    return p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I[B)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getDeviceInfo(I[B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getDeviceInfo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I
    .registers 1

    .line 156
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    return p0
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)I
    .registers 2

    .line 156
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z
    .registers 2

    .line 156
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/String;)V
    .registers 2

    .line 156
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z
    .registers 2

    .line 156
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isClickQ32:Z

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableScan:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableDeviceInfo:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice()V

    return-void
.end method

.method static synthetic access$3300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I[B)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice(I[B)V

    return-void
.end method

.method static synthetic access$3400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->canNavigate()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->navigated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->failPair(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroid/os/Handler;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    return-void
.end method

.method static synthetic access$4102(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnectFail:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z
    .registers 2

    .line 156
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnectFail:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->strScan:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4584(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->strScan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->strScan:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z
    .registers 1

    .line 156
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isScanDevice:Z

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z
    .registers 2

    .line 156
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isScanDevice:Z

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I
    .registers 1

    .line 156
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)I
    .registers 2

    .line 156
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I
    .registers 1

    .line 156
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mPosition:I

    return p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;

    return-object p1
.end method

.method private canNavigate()Z
    .registers 3

    .line 1093
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1094
    :cond_8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private failPair(I)V
    .registers 8

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failPair:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tty5rt"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1220
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    const/16 v0, 0x1b

    const/4 v1, 0x0

    .line 1221
    invoke-static {v1, v0}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 1222
    invoke-static {v1, p0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 1223
    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 1224
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v5, v4, p1

    const/16 v5, 0xb

    invoke-virtual {v0, v5, p1, v2, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1226
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v3, v3, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v4, v3, p1

    invoke-virtual {v0, v5, p1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1229
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1231
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    const/4 v0, 0x4

    .line 1233
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V

    .line 1234
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1235
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    if-eqz v0, :cond_6d

    const/4 v1, -0x1

    .line 1236
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 1237
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1238
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setList(Ljava/util/List;)V

    :cond_6d
    const/4 v0, 0x7

    .line 1240
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    .line 1241
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    return-void
.end method

.method private getBlueRequest(I)V
    .registers 10

    .line 1906
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    const v1, 0x7f100257

    if-nez v0, :cond_73

    .line 1907
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->onComplete()V

    .line 1909
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez p1, :cond_49

    .line 1910
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1911
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda15;-><init>()V

    const v2, 0x7f100193

    .line 1912
    invoke-virtual {p1, v2, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 1915
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda16;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    .line 1916
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 1927
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1929
    :cond_49
    const-string p1, "bluetooth_open_cancel"

    invoke-static {p0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e3

    .line 1932
    :try_start_51
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V
    :try_end_56
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_51 .. :try_end_56} :catch_58

    goto/16 :goto_e3

    :catch_58
    move-exception p1

    .line 1934
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e3

    .line 1938
    :cond_73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_8e

    .line 1939
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetooth:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_86

    const/4 p1, 0x3

    .line 1940
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getScanDevice(I)V

    goto :goto_e3

    .line 1942
    :cond_86
    const-string p1, "ggg343"

    const-string v0, "\u8bf7\u6c42\u6743\u9650..11111."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 1946
    :cond_8e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1947
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocationBack:[Ljava/lang/String;

    if-eqz p1, :cond_a9

    .line 1948
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_a5

    .line 1949
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getScanDevice(I)V

    goto :goto_e3

    .line 1951
    :cond_a5
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getScanDevice(I)V

    goto :goto_e3

    :cond_a9
    const/4 p1, 0x5

    .line 1954
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getScanDevice(I)V

    goto :goto_e3

    :cond_ae
    if-nez p1, :cond_e3

    .line 1958
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_e3

    .line 1959
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10037d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1960
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10047b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda17;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda17;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda18;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda18;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    move-object v2, p0

    .line 1959
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    :cond_e3
    :goto_e3
    return-void
.end method

.method private getDeviceInfo()V
    .registers 6

    const/4 v0, 0x1

    .line 888
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo:Z

    .line 890
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableDeviceInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getDeviceInfo(I[B)V
    .registers 8

    const/4 v0, 0x1

    .line 852
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo1:Z

    .line 854
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_DEVICE:[B

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;

    invoke-direct {v4, p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I[B)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private getScanDevice(I)V
    .registers 4

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kh432"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    .line 1457
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 1459
    :cond_1c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1460
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 1462
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 1463
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 1466
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    if-eqz p1, :cond_3a

    .line 1467
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setList(Ljava/util/List;)V

    goto :goto_4d

    .line 1469
    :cond_3a
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    .line 1470
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1471
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 1473
    :goto_4d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pos:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  showList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gg3d3"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    if-nez p1, :cond_7b

    .line 1475
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scan()V

    goto :goto_92

    .line 1477
    :cond_7b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8f

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_92

    .line 1478
    :cond_8f
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scan()V

    :cond_92
    :goto_92
    return-void
.end method

.method private isOpenBle(I)V
    .registers 5

    .line 1869
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kh432"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->openBle:I

    .line 1871
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_8c

    .line 1872
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1873
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    .line 1874
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1876
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez p1, :cond_65

    .line 1877
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1878
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10017d

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda10;-><init>()V

    const v1, 0x7f100193

    .line 1879
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10017b

    .line 1880
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    const v1, 0x7f100257

    .line 1881
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 1886
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1888
    :cond_65
    const-string p1, "ghfgr54"

    const-string v0, "\u641c\u7d22\u9875\u9762\u6ca1\u6709\u84dd\u7259\u6743\u9650"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :try_start_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V
    :try_end_71
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6c .. :try_end_71} :catch_72

    goto :goto_8b

    :catch_72
    move-exception p1

    .line 1892
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8b
    return-void

    .line 1901
    :cond_8c
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getBlueRequest(I)V

    return-void
.end method

.method static synthetic lambda$getBlueRequest$16(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1913
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$initView$0(Landroidx/activity/result/ActivityResult;)V
    .registers 1

    .line 338
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    return-void
.end method

.method static synthetic lambda$isOpenBle$14(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1879
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private scan()V
    .registers 5

    .line 1247
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1248
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1249
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableScan:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1250
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    const/4 v0, 0x2

    .line 1251
    new-array v0, v0, [Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_PAIR:Ljava/util/UUID;

    aput-object v3, v0, v1

    .line 1252
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanPeriod(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    .line 1253
    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReportDelay(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    .line 1254
    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanWithServiceUUID([Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    const/4 v2, 0x4

    .line 1255
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startScan(ILcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V

    return-void
.end method

.method private searchSystemBlueData(I)V
    .registers 6

    .line 1794
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1795
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCanListExist:Z

    .line 1796
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1834
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1d

    return-void

    .line 1839
    :cond_1d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1840
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 1842
    :cond_28
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method private setGotoDevice()V
    .registers 4

    const/4 v0, 0x0

    .line 1030
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 1031
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v1, "PersonInfoActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 1032
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1033
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$21;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$21;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1047
    sput v1, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    goto :goto_50

    .line 1050
    :cond_1f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v2, "MainActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1051
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1053
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$22;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$22;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_50

    .line 1067
    :cond_38
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v2, "AddMemberActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1068
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1069
    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1084
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->btnSkip:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5d

    .line 1085
    const-string v0, "first"

    invoke-static {p0, v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_5d
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I

    return-void
.end method

.method private setGotoDevice(I[B)V
    .registers 9

    const/16 v0, 0xc3

    .line 925
    const-string v1, "AddMemberActivity"

    const-string v2, "MainActivity"

    const-string v3, "PersonInfoActivity"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_69

    const/4 p1, 0x3

    .line 926
    aget-byte p1, p2, p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_60

    if-ne p1, v5, :cond_15

    goto :goto_60

    .line 929
    :cond_15
    iput-boolean v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 930
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 931
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 932
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$15;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$15;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 943
    sput v5, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    goto :goto_5d

    .line 945
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 946
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 947
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$16;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$16;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5d

    .line 959
    :cond_47
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 960
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 961
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$17;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$17;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 975
    :cond_5d
    :goto_5d
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    goto :goto_b1

    .line 927
    :cond_60
    :goto_60
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b1

    .line 978
    :cond_69
    iput-boolean v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 979
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 980
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 981
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$18;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$18;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 992
    sput v5, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    goto :goto_b1

    .line 994
    :cond_84
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 995
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 996
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$19;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$19;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b1

    .line 1008
    :cond_9b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 1009
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 1010
    new-instance p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$20;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$20;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1026
    :cond_b1
    :goto_b1
    iput v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I

    return-void
.end method

.method private showDialogPairing()V
    .registers 7

    .line 1100
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 1102
    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/DialogHelperNew;->getConfirmDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    :cond_17
    const/4 v0, 0x1

    .line 1104
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1105
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "\u9519\u8bef\u65e5\u5fd7:"

    if-nez v1, :cond_4d

    .line 1106
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;

    const-string v4, "C82"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_6a

    .line 1111
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_34
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_6a

    :catch_35
    move-exception v1

    .line 1113
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 1118
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_52
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_6a

    :catch_53
    move-exception v1

    .line 1120
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :goto_6a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " CmdHelper.setPairingcode_to_start:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v0, v0, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setPairingcode(IIII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v0, v0, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setPairingcode(IIII)[B

    move-result-object v0

    new-instance v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private showScanDialog(I)V
    .registers 8

    .line 1382
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showScanDialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_114

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_114

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_114

    .line 1386
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    if-nez v0, :cond_35

    .line 1387
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    .line 1389
    :cond_35
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00e9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0906fc

    .line 1390
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    const v5, 0x7f0906e4

    if-ne p1, v1, :cond_74

    .line 1392
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    .line 1393
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1394
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f1001f8

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda19;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9d

    .line 1402
    :cond_74
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnectFail:Z

    .line 1403
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    .line 1404
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scan()V

    const/16 p1, 0x1d

    .line 1405
    invoke-static {v3, p1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 1406
    invoke-static {v3, p0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 1407
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f1001c9

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda20;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    :goto_9d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1425
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1426
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1427
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1428
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1429
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1430
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const-string v3, "gfr5rr54"

    if-nez v2, :cond_10f

    .line 1431
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1434
    :try_start_d8
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    if-ne p1, v1, :cond_ef

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_ef

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_e9

    goto :goto_ef

    .line 1437
    :cond_e9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_ee
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_d8 .. :try_end_ee} :catch_f0

    goto :goto_109

    :cond_ef
    :goto_ef
    return-void

    :catch_f0
    move-exception p1

    .line 1439
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :goto_109
    const-string p1, "\u53ef\u89c1\u72b6\u6001"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 1444
    :cond_10f
    const-string p1, "\u4e0d\u53ef\u89c1\u72b6\u6001"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_114
    :goto_114
    return-void
.end method

.method private startDiscovery()V
    .registers 3

    .line 525
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 529
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 532
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method


# virtual methods
.method public getAliveActivity()Landroid/app/Activity;
    .registers 2

    .line 1451
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aliveActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c007c

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 13

    .line 635
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 636
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_286

    const/16 v2, 0x17

    const-string v3, "23_:"

    const-string v4, "gfr5rr54"

    const/16 v5, 0x39

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq p1, v2, :cond_230

    const/16 v2, 0x132

    if-eq p1, v2, :cond_22c

    const/16 v2, 0x397

    if-eq p1, v2, :cond_1df

    const/16 v2, 0x3e7

    if-eq p1, v2, :cond_af

    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_58

    const/16 v2, 0x409

    if-eq p1, v2, :cond_51

    const/16 v2, 0x4bc

    if-eq p1, v2, :cond_46

    packed-switch p1, :pswitch_data_294

    goto/16 :goto_292

    .line 758
    :pswitch_35
    iput-boolean v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 759
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    goto/16 :goto_292

    :pswitch_40
    const/4 p1, 0x5

    .line 762
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto/16 :goto_292

    .line 647
    :cond_46
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    const/16 v0, 0xb

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_292

    .line 644
    :cond_51
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_292

    .line 801
    :cond_58
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I

    .line 802
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-nez p1, :cond_64

    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    if-ne p1, v0, :cond_67

    .line 803
    :cond_64
    invoke-static {v7, v5}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 806
    :cond_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 808
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    if-ne p1, v1, :cond_292

    .line 810
    iput-boolean v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 811
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 812
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-nez p1, :cond_95

    .line 813
    iput-object v7, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 815
    :cond_95
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    if-eqz p1, :cond_9c

    .line 816
    invoke-virtual {p1, v6}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 818
    :cond_9c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 819
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 820
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    if-eqz p1, :cond_aa

    .line 821
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 823
    :cond_aa
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scan()V

    goto/16 :goto_292

    .line 676
    :cond_af
    :pswitch_af
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isClickQ32:Z

    const/4 v2, 0x4

    const/16 v3, 0x13

    const/16 v4, 0x9

    const-wide/16 v9, 0x1f4

    if-eqz p1, :cond_14e

    .line 677
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result p1

    if-eqz p1, :cond_292

    .line 678
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I

    .line 679
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    .line 681
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 682
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$9;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p1, v5, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 689
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_e4

    .line 690
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_e4
    const/16 p1, 0x18

    .line 692
    invoke-static {v7, p1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 693
    invoke-static {v7, p0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 694
    invoke-static {v7}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 695
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v9, v1, [Ljava/util/UUID;

    sget-object v10, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v10, v9, v8

    invoke-virtual {p1, v4, v8, v5, v9}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 697
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v1, v1, [Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v5, v1, v8

    invoke-virtual {p1, v3, v8, v4, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 700
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 701
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_129

    .line 702
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_129

    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    if-eqz p1, :cond_129

    .line 703
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V

    .line 706
    :cond_129
    iput-boolean v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 707
    iput-object v7, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 708
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    if-eqz p1, :cond_149

    .line 709
    const-string p1, "asasa5s"

    const-string v0, "\u8fde\u63a5\u8d85\u65f6_EVENT_TYPE_BLE_DISCONNECT_scan  mAdapter != null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    invoke-virtual {p1, v6}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 711
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 712
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setList(Ljava/util/List;)V

    .line 714
    :cond_149
    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto/16 :goto_292

    .line 717
    :cond_14e
    const-string p1, "GFF32"

    const-string v0, "\u8fde\u63a5\u8d85\u65f6_EVENT_TYPE_BLE_DISCONNECT"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 719
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    .line 720
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 721
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {p1, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_177

    .line 729
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_177
    const/16 p1, 0x19

    .line 731
    invoke-static {v7, p1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 732
    invoke-static {v7, p0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 733
    invoke-static {v7}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 734
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v5, v1, [Ljava/util/UUID;

    sget-object v9, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v9, v5, v8

    invoke-virtual {p1, v4, v8, v0, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 736
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v1, v1, [Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v4, v1, v8

    invoke-virtual {p1, v3, v8, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 739
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 740
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1be

    .line 741
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1c3

    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    if-eqz p1, :cond_1c3

    const/4 p1, 0x7

    .line 742
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V

    goto :goto_1c3

    :cond_1be
    const/16 p1, 0x8

    .line 745
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V

    .line 747
    :cond_1c3
    :goto_1c3
    iput-boolean v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 748
    iput-object v7, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 749
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    if-eqz p1, :cond_1da

    .line 750
    invoke-virtual {p1, v6}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 751
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 752
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setList(Ljava/util/List;)V

    .line 754
    :cond_1da
    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto/16 :goto_292

    .line 650
    :cond_1df
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    .line 651
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 654
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    if-eqz p1, :cond_1ed

    .line 655
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 657
    :cond_1ed
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1f6

    .line 658
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    :cond_1f6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const-string v0, "bleAddress"

    const-string v1, "bleName"

    if-eqz p1, :cond_20c

    .line 661
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_292

    .line 664
    :cond_20c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_292

    .line 665
    new-instance p1, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {p1}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 666
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;

    iput-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 667
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;

    iput-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 668
    iget-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_292

    .line 772
    :cond_22c
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V

    goto :goto_292

    .line 775
    :cond_230
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I

    .line 776
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-nez p1, :cond_23c

    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    if-ne p1, v0, :cond_23f

    .line 777
    :cond_23c
    invoke-static {v7, v5}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 780
    :cond_23f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    if-ne p1, v1, :cond_292

    .line 784
    iput-boolean v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 785
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 786
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-nez p1, :cond_26d

    .line 787
    iput-object v7, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 789
    :cond_26d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    if-eqz p1, :cond_274

    .line 790
    invoke-virtual {p1, v6}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 792
    :cond_274
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->notifyDataSetChanged()V

    .line 793
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 794
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    if-eqz p1, :cond_282

    .line 795
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 797
    :cond_282
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scan()V

    goto :goto_292

    .line 765
    :cond_286
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aCon:I

    if-nez p1, :cond_292

    .line 766
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getBlueRequest(I)V

    .line 767
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aCon:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aCon:I

    :cond_292
    :goto_292
    return-void

    nop

    :pswitch_data_294
    .packed-switch 0x12c
        :pswitch_40
        :pswitch_35
        :pswitch_af
    .end packed-switch
.end method

.method protected initView()V
    .registers 13

    .line 326
    const-string v0, "from"

    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const/4 v1, 0x1

    .line 327
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isScanDeviceActivity:Z

    const/4 v2, 0x0

    .line 329
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 328
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    .line 329
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "isUnbandDeleDevice"

    invoke-static {v4, v5, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 330
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isUnbandDevice:Z

    .line 331
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    .line 332
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 333
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isKeephalthClickAddDevice:Z

    .line 334
    const-string v4, "request_all"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 335
    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v4

    iput-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 346
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_85

    .line 347
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 348
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 351
    invoke-static {p0, v1}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    goto :goto_85

    .line 353
    :cond_53
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10037d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 354
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10047b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100257

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda7;

    invoke-direct {v10, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    new-instance v11, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda8;

    invoke-direct {v11, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    move-object v6, p0

    .line 353
    invoke-static/range {v6 .. v11}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    .line 368
    :cond_85
    :goto_85
    const-string v4, "firstUnband"

    invoke-static {p0, v4, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 369
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    .line 370
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    .line 371
    sput v1, Lcom/keephealth/android/app/AppApplication;->inScanDevice:I

    .line 372
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    .line 373
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10016d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 375
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bgView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->rightImg:Landroid/widget/ImageView;

    const v5, 0x7f0d024c

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :try_start_d4
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_f9

    .line 441
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    if-nez v5, :cond_ed

    return-void

    .line 445
    :cond_ed
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->fromActivity:Ljava/lang/String;

    .line 449
    :cond_f9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v3, "PersonInfoActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 450
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aCon:I

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->btnSkip:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$6;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V

    goto :goto_145

    .line 481
    :cond_11c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v3, "MainActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 482
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->btnSkip:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_145

    .line 484
    :cond_131
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v3, "AddMemberActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 485
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->btnSkip:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    :cond_145
    :goto_145
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setSuperRefreshLayoutListener(Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;)V

    .line 489
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const v3, -0xff0001

    const/high16 v4, -0x10000

    const v5, -0xff0100

    filled-new-array {v4, v5, v3}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setColorSchemeColors([I)V

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setCanLoadMore(Z)V

    .line 491
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 492
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    if-nez v0, :cond_182

    .line 493
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-direct {v0, p0, v3}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    .line 494
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 495
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    goto :goto_187

    .line 497
    :cond_182
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setList(Ljava/util/List;)V

    .line 499
    :goto_187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_196

    .line 500
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocationBack:[Ljava/lang/String;

    goto :goto_199

    :cond_196
    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocationBack:[Ljava/lang/String;

    .line 504
    :goto_199
    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_19c} :catch_19d

    goto :goto_1b6

    :catch_19d
    move-exception v0

    .line 506
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_1b6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public isQ32Device(Ljava/lang/String;)Z
    .registers 4

    .line 1846
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

    .line 1847
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

    .line 1848
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

    .line 1849
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

.method synthetic lambda$getBlueRequest$17$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 1917
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1919
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1e

    .line 1920
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    .line 1921
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1924
    :cond_1e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 1925
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$getBlueRequest$18$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 3

    .line 0
    const/16 p1, 0x64

    .line 1961
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 1962
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_e

    .line 1963
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_e
    return-void
.end method

.method synthetic lambda$getBlueRequest$19$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 2

    .line 1966
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1967
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 3

    .line 0
    const/16 p1, 0x64

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetooth:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_e

    .line 357
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_e
    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 2

    .line 360
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 361
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 3

    .line 432
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    if-nez p1, :cond_8

    .line 433
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    goto :goto_16

    .line 435
    :cond_8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method synthetic lambda$isOpenBle$15$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    const/16 p1, 0x66

    .line 1882
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->requestPermissions(I[Ljava/lang/String;)V

    .line 1883
    const-string p1, "FF4d332"

    const-string p2, "\u8bf7\u6c42\u84dd\u7259\u6743\u9650..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onActivityResult$4$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 5

    .line 615
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 617
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x88

    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onActivityResult$5$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 2

    .line 620
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 621
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onItemClick$12$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 3

    .line 0
    const/4 p1, 0x1

    .line 1641
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->ifSetBle:Z

    .line 1642
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1644
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onItemClick$13$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 2

    .line 1646
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 1647
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->ifSetBle:Z

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$10$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 5

    .line 1521
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1523
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x66

    .line 1524
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$11$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 2

    .line 1526
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1527
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$8$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 5

    .line 1495
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1497
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 1498
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$9$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 2

    .line 1500
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1501
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    return-void
.end method

.method synthetic lambda$showScanDialog$6$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 2

    .line 1396
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 1397
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scan()V

    .line 1399
    :cond_b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showScanDialog$7$com-keephealth-android-ui-device-activity-ScanDeviceActivity(Landroid/view/View;)V
    .registers 6

    .line 0
    const/4 p1, 0x0

    .line 1409
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 1410
    invoke-static {p1, p0}, Lcom/keephealth/android/util/SPHelper;->saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V

    .line 1411
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const-wide/16 v0, 0x0

    .line 1415
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "LAST_SYNCH_TIME"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    const/16 p1, 0x6e

    .line 1418
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1419
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/16 v0, 0x36

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    .line 1421
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .line 588
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e8

    const/4 p3, 0x1

    if-ne p1, p2, :cond_16

    .line 590
    invoke-static {p0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 591
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    goto :goto_7a

    .line 593
    :cond_12
    invoke-direct {p0, p3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto :goto_7a

    :cond_16
    const/4 p2, 0x3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_35

    .line 596
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 597
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_7a

    .line 600
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocationBack:[Ljava/lang/String;

    if-eqz p1, :cond_31

    .line 601
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    goto :goto_7a

    .line 605
    :cond_31
    invoke-direct {p0, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto :goto_7a

    :cond_35
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3e

    const/4 p1, 0x0

    .line 609
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getScanDevice(I)V

    goto :goto_7a

    :cond_3e
    const/16 v0, 0x66

    if-ne p1, v0, :cond_7a

    .line 611
    invoke-direct {p0, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getBlueRequest(I)V

    .line 612
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsBluetooth:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 614
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100449

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100257

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    .line 613
    const-string v1, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_7a

    .line 624
    :cond_77
    invoke-direct {p0, p3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getScanDevice(I)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1985
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    if-eqz v0, :cond_13

    .line 1986
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showToast(Ljava/lang/String;)V

    goto :goto_62

    .line 1988
    :cond_13
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v1, "PersonInfoActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1989
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1990
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1991
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_62

    .line 1992
    :cond_2f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v1, "MainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1993
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1994
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1995
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    goto :goto_62

    .line 1996
    :cond_49
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v1, "AddMemberActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1997
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1998
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1999
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    :cond_62
    :goto_62
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v0, 0x0

    .line 2090
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isScanDeviceActivity:Z

    .line 2091
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isVisible:I

    .line 2092
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I

    .line 2093
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    .line 2094
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2095
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    if-eqz v1, :cond_19

    .line 2097
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 2099
    :cond_19
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 2100
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->ifSetBle:Z

    .line 2101
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 2102
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/CommonDialog;->cancel()V

    .line 2103
    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 2105
    :cond_27
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v1, :cond_30

    .line 2106
    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/CommonDialog;->cancel()V

    .line 2107
    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->commonDialog2:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 2109
    :cond_30
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_40

    .line 2110
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2111
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableScan:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2113
    :cond_40
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_49

    .line 2114
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2116
    :cond_49
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->removeBle:Z

    .line 2117
    sput v0, Lcom/keephealth/android/app/AppApplication;->inScanDevice:I

    .line 2118
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    .line 2119
    const-string v0, "tty5rt"

    const-string v1, "scandevice_finish..."

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 9

    .line 1596
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f00\u59cb\u70b9\u51fb:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rre4"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 1598
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "LOCATION_INFO"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locationInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ghfgr6"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1602
    invoke-static {p0}, Lcom/keephealth/android/util/LocationUtil;->StartLocation(Landroid/content/Context;)V

    goto :goto_62

    .line 1604
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "locationInfo22:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 1607
    :cond_5b
    const-string p1, "ghfgr4"

    const-string v1, "\u70b9\u51fb\u6ca1\u6709\u5b9a\u4f4d\u6743\u9650"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    const/4 p1, 0x0

    .line 1609
    sput p1, Lcom/keephealth/android/app/AppApplication;->outTimeSuccess:I

    .line 1611
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1612
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10030b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_32f

    .line 1614
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isConnecting:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    if-nez v1, :cond_321

    .line 1616
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    .line 1617
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    if-nez v1, :cond_32f

    .line 1619
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1620
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I

    .line 1621
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    if-eqz v1, :cond_d3

    .line 1622
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$26;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$26;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1633
    :cond_d3
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    if-eqz v1, :cond_da

    .line 1634
    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1636
    :cond_da
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showList.size():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    if-eqz v1, :cond_32f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_32f

    .line 1638
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/BLEDevice;->isBonded()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 1639
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001fb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1640
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001fd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100257

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    move-object v0, p0

    .line 1639
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_31c

    .line 1652
    :cond_13e
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mPosition:I

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAdapter.connecting(position):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    invoke-virtual {v1, p2}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 1655
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1656
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/model/bean/BLEDevice;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1658
    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    sput-object p2, Lcom/keephealth/android/app/AppApplication;->macAddress:Ljava/lang/String;

    .line 1659
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    const-string v1, "macAddress"

    invoke-static {p0, v1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v1, 0x2

    if-eqz p2, :cond_197

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_197

    .line 1662
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    sput-object p2, Lcom/keephealth/android/app/AppApplication;->scanDeviceName:Ljava/lang/String;

    .line 1663
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isQ32Device(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_195

    .line 1664
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    goto :goto_197

    .line 1666
    :cond_195
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    .line 1669
    :cond_197
    :goto_197
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    if-eqz p2, :cond_1f8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1f8

    move p2, p1

    .line 1670
    :goto_1a2
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1f8

    .line 1671
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/ScanDeviceBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f5

    move v2, p1

    .line 1672
    :goto_1c1
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/ScanDeviceBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f5

    .line 1673
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/ScanDeviceBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const v4, 0xeeff

    if-ne v3, v4, :cond_1f2

    .line 1675
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    :cond_1f2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c1

    :cond_1f5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a2

    .line 1682
    :cond_1f8
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {p2, v2}, Lcom/keephealth/android/model/bean/BLEDevice;->setDeviceType(I)V

    .line 1684
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p2, :cond_210

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isQ32Device(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_214

    :cond_210
    iget p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    if-ne p2, v1, :cond_221

    .line 1685
    :cond_214
    new-instance p2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {p2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 1686
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isClickQ32:Z

    goto :goto_223

    .line 1689
    :cond_221
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isClickQ32:Z

    .line 1692
    :goto_223
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 1693
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    .line 1694
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->address:Ljava/lang/String;

    .line 1695
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u94fe\u63a5_connectDevice.mDeviceAddress:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClearDevice:Z

    .line 1697
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_25c

    .line 1705
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_31c

    .line 1709
    :cond_25c
    :try_start_25c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    if-eqz p1, :cond_2cb

    .line 1710
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isQ32Device(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_292

    .line 1711
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result p1

    if-nez p1, :cond_281

    .line 1712
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_31c

    .line 1713
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_31c

    .line 1716
    :cond_281
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_31c

    .line 1719
    :cond_292
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    if-ne p1, v1, :cond_2bb

    .line 1720
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result p1

    if-nez p1, :cond_2ab

    .line 1721
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_31c

    .line 1722
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_31c

    .line 1725
    :cond_2ab
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_31c

    .line 1728
    :cond_2bb
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_31c

    .line 1732
    :cond_2cb
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    if-ne p1, v1, :cond_2f3

    .line 1733
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result p1

    if-nez p1, :cond_2e3

    .line 1734
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_31c

    .line 1735
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_31c

    .line 1738
    :cond_2e3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_31c

    .line 1741
    :cond_2f3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_302} :catch_303

    goto :goto_31c

    :catch_303
    move-exception p1

    .line 1745
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :cond_31c
    :goto_31c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    goto :goto_32f

    .line 1787
    :cond_321
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_32f
    :goto_32f
    return-void
.end method

.method public onLoadMore()V
    .registers 1

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 1584
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onPause()V

    .line 1585
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->onComplete()V

    .line 1586
    const-string v0, "kh432"

    const-string v1, "\u5b8c\u621022"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRefreshing()V
    .registers 3

    const/4 v0, 0x0

    .line 1857
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBluetoothLe.getScanning():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getScanning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1859
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getScanning()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2e

    :cond_28
    const/16 v0, 0xc

    .line 1862
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto :goto_33

    .line 1860
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->onComplete()V

    :goto_33
    return-void
.end method

.method protected onResume()V
    .registers 9

    .line 2007
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume_pos:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gg3d3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2041
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v0, :cond_85

    .line 2012
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\u672c\u673a\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2015
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    .line 2016
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    .line 2017
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isPairSuccess:Z

    if-eqz v5, :cond_7d

    .line 2018
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_7d

    .line 2019
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_46
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 2020
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_46

    .line 2024
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2025
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isPairSuccess:Z

    .line 2026
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isPairSuccess = true:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isPairSuccess:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEE33rD"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 2031
    :cond_7d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\u8fd8\u6ca1\u6709\u5df2\u914d\u5bf9\u7684\u8fdc\u7a0b\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8c

    .line 2034
    :cond_85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\u672c\u673a\u6ca1\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2036
    :cond_8c
    :goto_8c
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isPairSuccess:Z

    if-nez v0, :cond_92

    .line 2037
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    .line 2040
    :cond_92
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 2041
    const-string v0, "bluetooth_open_cancel"

    invoke-static {p0, v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2043
    :cond_a1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v0, v5, :cond_c3

    .line 2044
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "bluetooth_connect"

    if-eqz v5, :cond_bc

    .line 2045
    new-array v5, v3, [Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-static {p0, v5, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2047
    invoke-static {p0, v6, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_c3

    .line 2049
    :cond_bc
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2052
    :cond_c3
    :goto_c3
    invoke-static {}, Lcom/keephealth/android/util/HarmonyOsUtils;->isHarmonyOs()Z

    move-result v0

    if-nez v0, :cond_cf

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_183

    .line 2053
    :cond_cf
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_183

    .line 2054
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_183

    .line 2055
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Q32"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Q19 MAX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 2056
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QX01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CH-W501"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 2057
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MK WATCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SENSE 6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 2058
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AMAYA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CR075"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 2059
    :cond_157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onResume:111:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I

    if-ne v0, v3, :cond_183

    .line 2061
    const-string v0, "onResume:222"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_183
    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 9

    .line 1487
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->requestPermissionsFail(I)V

    .line 1488
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;

    const-string v1, "PersonInfoActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1489
    const-class p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_93

    :cond_14
    const/16 v0, 0x64

    if-ne p1, v0, :cond_5a

    .line 1492
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocation:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 1493
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1494
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    new-instance v6, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    move-object v1, p0

    .line 1493
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_93

    .line 1504
    :cond_56
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    goto :goto_93

    :cond_5a
    const/16 v0, 0x65

    if-ne p1, v0, :cond_5f

    goto :goto_93

    :cond_5f
    const/16 v0, 0x66

    if-ne p1, v0, :cond_93

    .line 1518
    const-string p1, "dfede333"

    const-string v0, "\u8bf7\u6c42\u6743\u9650..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100449

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    new-instance v6, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    .line 1519
    const-string v2, ""

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mDialog:Landroid/app/Dialog;

    :cond_93
    :goto_93
    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 5

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestPermissionsSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tft4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_34

    .line 1538
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocationBack:[Ljava/lang/String;

    if-eqz p1, :cond_2e

    .line 1540
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/16 p1, 0x12

    .line 1541
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto :goto_93

    :cond_28
    const/16 p1, 0x8

    .line 1543
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto :goto_93

    :cond_2e
    const/16 p1, 0x9

    .line 1546
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto :goto_93

    :cond_34
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3e

    const/16 p1, 0xa

    .line 1549
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    goto :goto_93

    :cond_3e
    const/16 v0, 0x66

    if-ne p1, v0, :cond_93

    .line 1551
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "checkSelfPermission(permissionsLocationBack):"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocationBack:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_69

    const/4 v0, 0x1

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->permissionsLocationBack:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    const-string v0, "kh4f32"

    if-nez p1, :cond_89

    .line 1554
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_8e

    .line 1556
    const-string p1, "\u6ca1\u6709\u5b9a\u4f4d\u6743\u9650"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 1572
    :cond_89
    const-string p1, "\u6709\u5b9a\u4f4d\u6743\u9650"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    const/16 p1, 0xb

    .line 1574
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V

    :cond_93
    :goto_93
    return-void
.end method

.method tomain()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b4
        }
    .end annotation

    .line 582
    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
