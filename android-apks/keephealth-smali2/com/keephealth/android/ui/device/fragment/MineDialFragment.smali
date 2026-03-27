.class public Lcom/keephealth/android/ui/device/fragment/MineDialFragment;
.super Lcom/keephealth/android/base/BaseMvpFragment;
.source "MineDialFragment.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DialMineDetailContract$View;
.implements Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;
.implements Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;
.implements Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpFragment<",
        "Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DialMineDetailContract$View;",
        "Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;",
        "Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;",
        "Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;",
        "Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;"
    }
.end annotation


# static fields
.field private static final BLE_UUID_SERVICE:Ljava/lang/String; = "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_READ:Ljava/lang/String; = "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_WRITE:Ljava/lang/String; = "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final DOWN_FAILD:I = 0x0

.field private static final DOWN_UPDATE:I = 0x1

.field private static final KEY_BLE_UUID_READ:Ljava/lang/String; = "BLE_UUID_READ"

.field private static final KEY_BLE_UUID_SERVICE:Ljava/lang/String; = "BLE_UUID_SERVICE"

.field private static final KEY_BLE_UUID_WRITE:Ljava/lang/String; = "BLE_UUID_WRITE"

.field private static final REQUEST_PERMISSION_CODE:I = 0x4

.field private static final SUCCESS_DELAY_TIME:I = 0x2


# instance fields
.field private allDownLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private buildInDial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field private changePosition:I

.field private dataLengh:I

.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field dataSize:I

.field private final dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

.field private final dialDetailBS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field private dialFile:Ljava/io/File;

.field private dialogTimeOut:Ljava/lang/Runnable;

.field private downloadTimeOut:Ljava/lang/Runnable;

.field private fg:I

.field private fileName:Ljava/lang/String;

.field finalJ:I

.field fos:Ljava/io/FileOutputStream;

.field httpConnection:Ljava/net/HttpURLConnection;

.field is:Ljava/io/InputStream;

.field private isChange:Z

.field private isOnVisible:Z

.field private isSending:Z

.field private itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field private lastPosition:I

.field layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090301
    .end annotation
.end field

.field llDownLoad:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036e
    .end annotation
.end field

.field private mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

.field private mHandler:Landroid/os/Handler;

.field private mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

.field private mOTAVersion:Ljava/lang/String;

.field private mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

.field mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dd
    .end annotation
.end field

.field mRecyclerViewSystem:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e0
    .end annotation
.end field

.field private mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field mbytes:[B

.field mindex:I

.field private mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

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

.field private requestDataTimeOut:Ljava/lang/Runnable;

.field private saveFileName:Ljava/lang/String;

.field sendData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

.field private send_data_0:I

.field private showDownLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field tvEdit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090659
    .end annotation
.end field

.field private writeTimeOut:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 114
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpFragment;-><init>()V

    const/16 v0, 0x9

    .line 147
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "android.permission.INTERNET"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->permissionArray:[Ljava/lang/String;

    .line 214
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$1;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->buildInDial:Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->allDownLoad:Ljava/util/List;

    .line 262
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDialDetailBDao()Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataList:Ljava/util/List;

    .line 535
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$5;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requestDataTimeOut:Ljava/lang/Runnable;

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SDKDemo/DialCenter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 545
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->changePosition:I

    .line 546
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I

    .line 711
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 773
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    .line 774
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->is:Ljava/io/InputStream;

    .line 775
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fos:Ljava/io/FileOutputStream;

    .line 899
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    .line 935
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$12;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;

    .line 945
    iput v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fg:I

    .line 951
    iput v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->finalJ:I

    .line 1491
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$14;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$14;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->downloadTimeOut:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)I
    .registers 1

    .line 114
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataLengh:I

    return p0
.end method

.method static synthetic access$1102(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I
    .registers 2

    .line 114
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataLengh:I

    return p1
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->handleData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)I
    .registers 1

    .line 114
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I

    return p0
.end method

.method static synthetic access$1402(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I
    .registers 2

    .line 114
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I

    return p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isChange:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requestDataTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/io/File;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->downloadTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDialToDevice()V

    return-void
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->clearHttlLoad()V

    return-void
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Ljava/lang/String;)V
    .registers 2

    .line 114
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->initBluzDevice()V

    return-void
.end method

.method static synthetic access$3100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)I
    .registers 1

    .line 114
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->send_data_0:I

    return p0
.end method

.method static synthetic access$3202(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I
    .registers 2

    .line 114
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->send_data_0:I

    return p1
.end method

.method static synthetic access$3300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;[BI)V
    .registers 3

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDialBin([BI)V

    return-void
.end method

.method static synthetic access$3400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I
    .registers 2

    .line 114
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fg:I

    return p1
.end method

.method static synthetic access$3600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z
    .registers 2

    .line 114
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/List;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    return-object p0
.end method

.method private clearHttlLoad()V
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 779
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 6

    .line 624
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    const/4 v0, 0x1

    .line 625
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 626
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 627
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 628
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 630
    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 632
    :cond_1e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/lang/String;)Z

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fileName:Ljava/lang/String;

    .line 634
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialFile:Ljava/io/File;

    .line 635
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialFile:Ljava/io/File;

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 636
    :cond_63
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 637
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_75

    .line 638
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_7f

    :cond_75
    const/4 v1, 0x0

    .line 640
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 641
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 644
    :cond_7f
    :goto_7f
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$7;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$7;->start()V

    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 665
    :try_start_2
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->downloadTimeOut:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 666
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    .line 668
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 669
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x4e20

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 670
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    .line 671
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_8a

    .line 675
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_9a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_97

    .line 676
    :try_start_3a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_86
    .catchall {:try_start_3a .. :try_end_3f} :catchall_82

    const/16 p2, 0x800

    .line 677
    :try_start_41
    new-array p2, p2, [B
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_43} :catch_80
    .catchall {:try_start_41 .. :try_end_43} :catchall_7e

    move v1, v0

    move v4, v1

    .line 679
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6c

    .line 680
    invoke-virtual {v3, p2, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_58

    mul-int/lit8 v6, v1, 0x64

    .line 682
    div-int/2addr v6, p1

    sub-int/2addr v6, v5

    if-le v6, v4, :cond_45

    :cond_58
    add-int/lit8 v4, v4, 0x1

    .line 684
    iget-object v6, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 685
    iput v5, v6, Landroid/os/Message;->what:I

    .line 686
    iput v1, v6, Landroid/os/Message;->arg1:I

    .line 687
    iput p1, v6, Landroid/os/Message;->arg2:I

    .line 688
    iget-object v5, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6b} :catch_7c
    .catchall {:try_start_45 .. :try_end_6b} :catchall_7e

    goto :goto_45

    .line 694
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_73

    .line 695
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_73
    if-eqz v2, :cond_78

    .line 698
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 701
    :cond_78
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_b3

    :catch_7c
    move p1, v1

    goto :goto_88

    :catchall_7e
    move-exception p1

    goto :goto_84

    :catch_80
    move p1, v0

    goto :goto_88

    :catchall_82
    move-exception p1

    move-object v3, v1

    :goto_84
    move-object v1, v2

    goto :goto_b6

    :catch_86
    move p1, v0

    move-object v3, v1

    :goto_88
    move-object v1, v2

    goto :goto_9c

    .line 672
    :cond_8a
    :try_start_8a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 673
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "fail!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_97} :catch_9a
    .catchall {:try_start_8a .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p1

    move-object v3, v1

    goto :goto_b6

    :catch_9a
    move p1, v0

    move-object v3, v1

    .line 692
    :goto_9c
    :try_start_9c
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_b5

    .line 694
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_a8

    .line 695
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a8
    if-eqz v1, :cond_ad

    .line 698
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_ad
    if-eqz v3, :cond_b2

    .line 701
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_b2
    move v1, p1

    :goto_b3
    int-to-long p1, v1

    return-wide p1

    :catchall_b5
    move-exception p1

    .line 694
    :goto_b6
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_bd

    .line 695
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_bd
    if-eqz v1, :cond_c2

    .line 698
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c2
    if-eqz v3, :cond_c7

    .line 701
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 703
    :cond_c7
    throw p1
.end method

.method private handleData()V
    .registers 8

    .line 499
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    new-array v0, v0, [B

    .line 500
    sget-object v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 501
    :goto_11
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 502
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    mul-int/lit8 v4, v2, 0x14

    .line 503
    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 505
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/4 v2, 0x7

    move v3, v2

    :goto_36
    add-int/lit8 v4, v1, 0x2

    if-gt v3, v4, :cond_58

    .line 507
    sget-object v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    add-int/lit8 v5, v3, 0x2

    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x3

    goto :goto_36

    .line 509
    :cond_58
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 510
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleData:getMineSuccess "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 512
    :cond_83
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getRecommendDialDetail(II)V

    .line 514
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    if-eqz v0, :cond_9c

    .line 515
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$4;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9c
    return-void
.end method

.method private initBluzDevice()V
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    if-eqz v0, :cond_7

    .line 190
    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->release()V

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v0, :cond_13

    .line 193
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->cancel()V

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->release()V

    .line 197
    :cond_13
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "BLE_UUID_SERVICE"

    const-string v2, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "BLE_UUID_READ"

    const-string v3, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "BLE_UUID_WRITE"

    const-string v4, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 201
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v4, "keyServiceUUID"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "keyReadCharacteristicUUID"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "keyWriteCharacteristicUUID"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 205
    invoke-static {v3, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->setUUID(Ljava/util/Map;Z)V

    .line 207
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "BLE"

    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->getDeviceQ32(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 208
    new-instance v0, Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    invoke-interface {v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;-><init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 209
    invoke-virtual {v0, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setListener(Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;)V

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V

    return-void
.end method

.method static synthetic lambda$onCustomClick$0(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private notifyDial()V
    .registers 4

    .line 466
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showLoading()V

    .line 467
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDialInfo()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private sendDialBin([BI)V
    .registers 9

    const/4 v0, 0x0

    .line 954
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->finalJ:I

    .line 955
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 957
    array-length v1, p1

    rem-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_15

    .line 958
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    goto :goto_1a

    .line 960
    :cond_15
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    add-int/lit8 v1, v1, 0x1

    .line 962
    :goto_1a
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mbytes:[B

    .line 963
    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mindex:I

    const/4 v2, 0x0

    .line 964
    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendData:Ljava/util/List;

    .line 965
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialBin([BI)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendData:Ljava/util/List;

    if-nez p2, :cond_2b

    .line 967
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 969
    :cond_2b
    :goto_2b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_48

    .line 970
    filled-new-array {v0}, [I

    move-result-object p2

    .line 972
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;[II[B)V

    const-wide/16 v4, 0x0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_48
    return-void
.end method

.method private sendDialToDevice()V
    .registers 7

    const/4 v0, 0x0

    .line 804
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 805
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    const/4 v1, 0x1

    .line 806
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 807
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 808
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    .line 809
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialFile:Ljava/io/File;

    invoke-static {v2}, Lcom/keephealth/android/util/file/FileUtil;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object v2

    .line 811
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 812
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v1

    const-wide/16 v3, 0x2710

    if-eqz v1, :cond_4d

    .line 814
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 815
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 816
    new-instance v1, Lcom/keephealth/android/model/bean/DeviceEntry;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcom/keephealth/android/model/bean/DeviceEntry;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    if-eqz v0, :cond_89

    .line 817
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_89

    .line 818
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$9;

    invoke-direct {v3, p0, v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$9;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_89

    .line 852
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  \u5f00\u59cb\u53d1\u9001\u8868\u76d8"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 854
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v1

    array-length v3, v2

    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialInfo(II)[B

    move-result-object v1

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$10;

    invoke-direct {v3, p0, v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$10;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;[B)V

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_89
    :goto_89
    return-void
.end method

.method private startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    const/4 p1, 0x1

    .line 894
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall:Z

    .line 895
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall2:Z

    .line 896
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->findService()V

    return-void
.end method


# virtual methods
.method public checkIsAskPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 181
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c0109

    return v0
.end method

.method public getMineFail()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    return-void
.end method

.method public getMineSuccess(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 267
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->buildInDial:Ljava/util/List;

    .line 268
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 269
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object p1

    .line 271
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 272
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->buildInDial:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialDetailB;

    .line 273
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v5

    if-ne v4, v5, :cond_38

    .line 274
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_54
    const/4 v0, 0x0

    if-eqz p1, :cond_a4

    .line 279
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a4

    .line 280
    sget-object v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 281
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v3

    if-ne v2, v3, :cond_67

    .line 282
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getType()I

    move-result v1

    if-nez v1, :cond_99

    .line 283
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DialDetailB;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/DialDetailB;->setType(I)V

    .line 285
    :cond_99
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_a4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    if-nez p1, :cond_102

    .line 291
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    if-eqz p1, :cond_134

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_134

    .line 293
    :goto_c3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_e6

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-ne p1, v1, :cond_e3

    .line 295
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setSelectPosition(I)V

    .line 296
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I

    goto :goto_e6

    :cond_e3
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 300
    :cond_e6
    :goto_e6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 301
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    if-eqz p1, :cond_134

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_134

    .line 303
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewSystem:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_134

    .line 307
    :cond_102
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    if-eqz p1, :cond_134

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_134

    .line 308
    :goto_10c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_12f

    .line 309
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-ne p1, v1, :cond_12c

    .line 310
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setSelectPosition(I)V

    .line 311
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I

    goto :goto_12f

    :cond_12c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10c

    .line 315
    :cond_12f
    :goto_12f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->notifyDataSetChanged()V

    .line 318
    :cond_134
    :goto_134
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dialDetailBS:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "frr44"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSuccessDownLoad(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_74

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_74

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->llDownLoad:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->allDownLoad:Ljava/util/List;

    .line 340
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4c

    .line 341
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->allDownLoad:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->allDownLoad:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->allDownLoad:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 345
    :cond_4c
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    .line 347
    :goto_4e
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 348
    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    if-eqz p1, :cond_73

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_73

    .line 350
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_73
    return-void

    .line 331
    :cond_74
    :goto_74
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->llDownLoad:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 785
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 786
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_c

    goto :goto_62

    .line 788
    :cond_c
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hger3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v1

    div-int/2addr v0, v1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DialCenterBActivity.currentProgress111:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    div-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ffed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    if-eqz p1, :cond_62

    .line 794
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_62
    :goto_62
    return-void
.end method

.method protected initView()V
    .registers 6

    .line 163
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initView()V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SDKDemo/DialCenter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 166
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewSystem:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setDelegate(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;)V

    .line 171
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;-><init>(Landroid/content/Context;Z)V

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1004ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setPullDownRefreshText(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1004d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setReleaseRefreshText(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setRefreshViewBackgroundColorRes(I)V

    .line 175
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v1, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setRefreshViewHolder(Lcn/bingoogolapple/refreshlayout/BGARefreshViewHolder;)V

    .line 177
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V

    return-void
.end method

.method public onAudioDataReceived(II[B)V
    .registers 4

    return-void
.end method

.method public onBGARefreshLayoutBeginLoadingMore(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onBGARefreshLayoutBeginRefreshing(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;I)V
    .registers 4

    .line 1406
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz p1, :cond_1a

    .line 1407
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V

    .line 1408
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    goto :goto_46

    .line 1410
    :cond_1a
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z

    if-eqz p1, :cond_46

    .line 1411
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V

    .line 1412
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getRecommendDialDetail(II)V

    .line 1413
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "USER_TOKEN"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 1414
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getDownLoadInfo(I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public onCustomClick(Landroid/view/View;I)V
    .registers 11

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900dc

    const v1, 0x7f100535

    if-eq p1, v0, :cond_7e

    const v0, 0x7f09046f

    if-eq p1, v0, :cond_13

    goto/16 :goto_d2

    .line 392
    :cond_13
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 393
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz p1, :cond_2a

    .line 394
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_d2

    .line 401
    :cond_2a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    if-eqz p1, :cond_d2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d2

    .line 402
    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->changePosition:I

    .line 403
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showDownLoad:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    .line 404
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    const/4 p1, 0x1

    .line 405
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 406
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    .line 407
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 408
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/app/AppApplication;->dialItemId:I

    .line 409
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    if-eqz p1, :cond_61

    .line 410
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 412
    :cond_61
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->downLoadFile(Ljava/lang/String;)V

    goto :goto_d2

    .line 416
    :cond_6b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_d2

    .line 420
    :cond_7e
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isChange:Z

    if-eqz p1, :cond_d2

    .line 421
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    if-eqz p1, :cond_d2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d2

    .line 422
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_c3

    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz p1, :cond_99

    goto :goto_c3

    .line 428
    :cond_99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10022b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;

    invoke-direct {v6, p0, p2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)V

    new-instance v7, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, ""

    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto :goto_d2

    .line 423
    :cond_c3
    :goto_c3
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz p1, :cond_d2

    .line 424
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1502
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onDestroy()V

    .line 1503
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 1504
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->downloadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1505
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1506
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    const/4 v0, 0x0

    .line 1508
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    .line 1509
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1510
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1511
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1512
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1513
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_2c

    .line 1514
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    :cond_2c
    return-void
.end method

.method public onDialChange()V
    .registers 7

    .line 1463
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->buildInDial:Ljava/util/List;

    if-eqz v0, :cond_b0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b0

    .line 1464
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1465
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->buildInDial:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1466
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 1467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_68

    .line 1468
    sget-object v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1469
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v4

    if-ne v3, v4, :cond_37

    .line 1470
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/DialDetailB;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/DialDetailB;->setType(I)V

    .line 1471
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    :cond_68
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    sget v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    .line 1477
    :goto_79
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9c

    .line 1478
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-ne v0, v2, :cond_99

    .line 1479
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setSelectPosition(I)V

    .line 1480
    iput v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->lastPosition:I

    goto :goto_9c

    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 1484
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 1485
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V

    .line 1486
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewSystem:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1487
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V

    :cond_b0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 6

    .line 550
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 551
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz p1, :cond_1a

    .line 552
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_b0

    .line 555
    :cond_1a
    iget p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->changePosition:I

    if-ne p1, p2, :cond_1f

    return-void

    .line 556
    :cond_1f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    if-eqz p1, :cond_b0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b0

    .line 557
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    .line 558
    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->changePosition:I

    .line 559
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->setSelectPosition(I)V

    const/4 p1, 0x1

    .line 560
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    .line 561
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 562
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 563
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 564
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 565
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requestDataTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CmdHelper.sendDownLoadDial(sendDial.getCustomId()):"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->sendDownLoadDial(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  customId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    .line 567
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 566
    const-string v0, "gfgf433"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->sendDownLoadDial(I)[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;

    invoke-direct {v1, p0, p2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$6;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_b0

    .line 616
    :cond_9e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public onProgress(II)V
    .registers 3

    return-void
.end method

.method public onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
    .registers 2

    return-void
.end method

.method public onStatus(I)V
    .registers 4

    .line 1527
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onVisiable()V
    .registers 4

    .line 242
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onVisiable()V

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getRecommendDialDetail(II)V

    .line 245
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_38

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->llDownLoad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getDownLoadInfo(I)V

    goto :goto_42

    .line 250
    :cond_38
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->llDownLoad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mRecyclerViewDownload:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_42
    return-void
.end method

.method public onWriteBytes(I)V
    .registers 2

    return-void
.end method

.method public oninVisiable()V
    .registers 2

    .line 930
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->oninVisiable()V

    const/4 v0, 0x0

    .line 931
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z

    return-void
.end method

.method public reflashData(Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;)V
    .registers 3

    .line 1519
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1520
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1521
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_18
    return-void
.end method

.method public sendDial()V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    const-string v1, "sendDial: \u6b63\u5728\u53d1\u9001"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 382
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAVersion:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    return-void
.end method

.method public sendFail()V
    .registers 5

    const/4 v0, 0x1

    .line 355
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 356
    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    .line 357
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    .line 358
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 359
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 360
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 361
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz v2, :cond_32

    .line 362
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 363
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100534

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;

    const-string v3, "run:1 \u53d1\u9001\u5931\u8d25"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 366
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v0, -0x1

    .line 367
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 369
    :cond_32
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->notifyDataSetChanged()V

    .line 370
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    if-eqz v0, :cond_3e

    .line 371
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_3e
    return-void
.end method

.method toDownLoadHistory()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09068b
        }
    .end annotation

    .line 1427
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz v0, :cond_17

    .line 1428
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V

    goto :goto_35

    .line 1430
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 1431
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 1433
    :cond_1e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1434
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->allDownLoad:Ljava/util/List;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1435
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_35
    return-void
.end method

.method toEdit()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090659
        }
    .end annotation

    .line 1441
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z

    if-eqz v0, :cond_17

    .line 1442
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V

    goto :goto_60

    .line 1443
    :cond_17
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isChange:Z

    if-eqz v0, :cond_3e

    .line 1444
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->tvEdit:Landroid/widget/TextView;

    if-eqz v0, :cond_31

    .line 1445
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_31
    const/4 v0, 0x0

    .line 1447
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isChange:Z

    .line 1448
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    if-eqz v1, :cond_60

    .line 1449
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->sendChange(ZLjava/util/List;)V

    goto :goto_60

    .line 1452
    :cond_3e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->tvEdit:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    .line 1453
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    const/4 v0, 0x1

    .line 1455
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isChange:Z

    .line 1456
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    if-eqz v1, :cond_60

    .line 1457
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->sendChange(ZLjava/util/List;)V

    :cond_60
    :goto_60
    return-void
.end method
