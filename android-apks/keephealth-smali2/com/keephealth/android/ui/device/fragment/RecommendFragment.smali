.class public Lcom/keephealth/android/ui/device/fragment/RecommendFragment;
.super Lcom/keephealth/android/base/BaseMvpFragment;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DialRecommendContract$View;
.implements Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;
.implements Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;
.implements Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;
.implements Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/fragment/RecommendFragment$LoopCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpFragment<",
        "Lcom/keephealth/android/persenter/device/DialRecommendPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DialRecommendContract$View;",
        "Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;",
        "Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;",
        "Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;",
        "Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;"
    }
.end annotation


# static fields
.field private static final BLE_UUID_SERVICE:Ljava/lang/String; = "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_READ:Ljava/lang/String; = "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final BLE_UUID_SERVICE_WRITE:Ljava/lang/String; = "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

.field private static final DOWN_FAILD:I = 0x0

.field private static final DOWN_UPDATE:I = 0x1

.field private static final KEY_BLE_UUID_READ:Ljava/lang/String; = "BLE_UUID_READ"

.field private static final KEY_BLE_UUID_SERVICE:Ljava/lang/String; = "BLE_UUID_SERVICE"

.field private static final KEY_BLE_UUID_WRITE:Ljava/lang/String; = "BLE_UUID_WRITE"

.field private static final REQUEST_PERMISSION_CODE:I = 0x4

.field private static final SUCCESS_DELAY_TIME:I = 0x2

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x64

.field static sendData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field cdl:Ljava/util/concurrent/CountDownLatch;

.field private changePosition:I

.field private childPosition:I

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

.field private dialFile:Ljava/io/File;

.field private dialogTimeOut:Ljava/lang/Runnable;

.field private downloadTimeOut:Ljava/lang/Runnable;

.field private fg:I

.field private fileName:Ljava/lang/String;

.field finalJ:I

.field fos:Ljava/io/FileOutputStream;

.field handler:Landroid/os/Handler;

.field private height:I

.field httpConnection:Ljava/net/HttpURLConnection;

.field is:Ljava/io/InputStream;

.field private isOnVisible:Z

.field private isSending:Z

.field private isVisible:Z

.field private itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field private itemAdapter2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field private itemPosition:I

.field layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090301
    .end annotation
.end field

.field private mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

.field private mOTAVersion:Ljava/lang/String;

.field private mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field mbytes:[B

.field mindex:I

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

.field pool:Ljava/util/concurrent/ScheduledExecutorService;

.field private saveFileName:Ljava/lang/String;

.field private sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

.field private sendTimeOut:Ljava/lang/Runnable;

.field private send_all_size:I

.field private send_data_0:I

.field private send_length:I

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialCenterClass;",
            ">;"
        }
    .end annotation
.end field

.field private size_send:I

.field private startMessage:Z

.field private wight:I

.field private writeTimeOut:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 106
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    .line 125
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDialDetailBDao()Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    const/16 v1, 0x9

    .line 144
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.INTERNET"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->permissionArray:[Ljava/lang/String;

    .line 212
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$1;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    const/4 v1, 0x0

    .line 522
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->is:Ljava/io/InputStream;

    .line 523
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fos:Ljava/io/FileOutputStream;

    .line 575
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    .line 583
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$4;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->downloadTimeOut:Ljava/lang/Runnable;

    .line 591
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$5;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;

    .line 620
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$6;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    .line 829
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$9;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    .line 859
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$10;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;

    .line 871
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fg:I

    .line 875
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->handler:Landroid/os/Handler;

    .line 886
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->finalJ:I

    .line 1342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataList:Ljava/util/List;

    .line 1488
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/io/File;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->downloadTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)I
    .registers 1

    .line 106
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->changePosition:I

    return p0
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDialToDevice()V

    return-void
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->clearHttlLoad()V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->notifyDial()V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    .line 106
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)I
    .registers 1

    .line 106
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->send_data_0:I

    return p0
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)I
    .registers 2

    .line 106
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->send_data_0:I

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;[BI)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDialBin([BI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)I
    .registers 2

    .line 106
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fg:I

    return p1
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)I
    .registers 1

    .line 106
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataLengh:I

    return p0
.end method

.method static synthetic access$2602(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)I
    .registers 2

    .line 106
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataLengh:I

    return p1
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->handleData()V

    return-void
.end method

.method static synthetic access$2802(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p1
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z
    .registers 2

    .line 106
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z
    .registers 1

    .line 106
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/model/bean/DialDetailB;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    return-object p0
.end method

.method private clearHttlLoad()V
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 579
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    .line 498
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    const/4 v0, 0x1

    .line 499
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 500
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 501
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 502
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 504
    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 506
    :cond_1e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/lang/String;)Z

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fileName:Ljava/lang/String;

    .line 508
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialFile:Ljava/io/File;

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialFile:Ljava/io/File;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 510
    :cond_63
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$3;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$3;->start()V

    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 532
    :try_start_1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->downloadTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    .line 535
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 536
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 537
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    .line 538
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_8b

    .line 542
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->is:Ljava/io/InputStream;

    .line 543
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fos:Ljava/io/FileOutputStream;

    const/16 p2, 0x800

    .line 544
    new-array p2, p2, [B
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_9a
    .catchall {:try_start_1 .. :try_end_46} :catchall_98

    move v1, v0

    move v2, v1

    .line 546
    :cond_48
    :goto_48
    :try_start_48
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->is:Ljava/io/InputStream;

    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_73

    .line 547
    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4, p2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_5f

    mul-int/lit8 v4, v1, 0x64

    .line 549
    div-int/2addr v4, p1

    sub-int/2addr v4, v3

    if-le v4, v2, :cond_48

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    .line 551
    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 552
    iput v3, v4, Landroid/os/Message;->what:I

    .line 553
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 554
    iput p1, v4, Landroid/os/Message;->arg2:I

    .line 555
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_72} :catch_89
    .catchall {:try_start_48 .. :try_end_72} :catchall_98

    goto :goto_48

    .line 562
    :cond_73
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_7a

    .line 563
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 565
    :cond_7a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->is:Ljava/io/InputStream;

    if-eqz p1, :cond_81

    .line 566
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 568
    :cond_81
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fos:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_bb

    .line 569
    :goto_85
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_bb

    :catch_89
    move-exception p1

    goto :goto_9c

    .line 539
    :cond_8b
    :try_start_8b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "fail!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_98} :catch_9a
    .catchall {:try_start_8b .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p1

    goto :goto_bd

    :catch_9a
    move-exception p1

    move v1, v0

    .line 559
    :goto_9c
    :try_start_9c
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 560
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a8
    .catchall {:try_start_9c .. :try_end_a8} :catchall_98

    .line 562
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_af

    .line 563
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 565
    :cond_af
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->is:Ljava/io/InputStream;

    if-eqz p1, :cond_b6

    .line 566
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 568
    :cond_b6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fos:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_bb

    goto :goto_85

    :cond_bb
    :goto_bb
    int-to-long p1, v1

    return-wide p1

    .line 562
    :goto_bd
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_c4

    .line 563
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 565
    :cond_c4
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->is:Ljava/io/InputStream;

    if-eqz p2, :cond_cb

    .line 566
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 568
    :cond_cb
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fos:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_d2

    .line 569
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 571
    :cond_d2
    throw p1
.end method

.method private handleData()V
    .registers 7

    .line 1378
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    new-array v0, v0, [B

    .line 1379
    sget-object v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 1380
    :goto_11
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1381
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    mul-int/lit8 v4, v2, 0x14

    .line 1382
    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 1384
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/4 v2, 0x7

    :goto_35
    add-int/lit8 v3, v1, 0x2

    if-gt v2, v3, :cond_57

    .line 1386
    sget-object v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    add-int/lit8 v4, v2, 0x2

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x3

    goto :goto_35

    .line 1388
    :cond_57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x3f5

    .line 1389
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method

.method private notifyDial()V
    .registers 4

    .line 1347
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDialInfo()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private sendDialBin([BI)V
    .registers 8

    const/4 v0, 0x0

    .line 893
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->finalJ:I

    .line 894
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 896
    array-length v1, p1

    rem-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_17

    .line 897
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataSize:I

    goto :goto_1e

    .line 899
    :cond_17
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataSize:I

    .line 901
    :goto_1e
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mbytes:[B

    .line 902
    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mindex:I

    const/4 v1, 0x0

    .line 903
    sput-object v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendData:Ljava/util/List;

    .line 904
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialBin([BI)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendData:Ljava/util/List;

    .line 905
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->send_all_size:I

    if-nez p2, :cond_35

    .line 907
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 909
    :cond_35
    :goto_35
    sget-object p2, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_52

    .line 910
    filled-new-array {v0}, [I

    move-result-object p2

    .line 912
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    invoke-direct {v2, p0, p2, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;[I[B)V

    const-wide/16 v3, 0x0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_52
    return-void
.end method

.method private sendDialToDevice()V
    .registers 6

    const/4 v0, 0x0

    .line 688
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 689
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    const/4 v1, 0x1

    .line 690
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 691
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 692
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 693
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    iget v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->changePosition:I

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyItemChanged(I)V

    .line 694
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    .line 695
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fg:I

    .line 696
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialFile:Ljava/io/File;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object v0

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes_size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  QthreeUtils.isQ32Device():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hh4434fe"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 699
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v1

    const-wide/16 v2, 0x2710

    if-eqz v1, :cond_9e

    .line 700
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 702
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 704
    new-instance v1, Lcom/keephealth/android/model/bean/DeviceEntry;

    const/16 v4, 0xd

    invoke-direct {v1, v0, v4}, Lcom/keephealth/android/model/bean/DeviceEntry;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    if-eqz v0, :cond_ba

    .line 705
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_ba

    .line 706
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hh4434e"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;

    invoke-direct {v3, p0, v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$7;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_ba

    .line 743
    :cond_9e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v2

    array-length v3, v0

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialInfo(II)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$8;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;[B)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method private startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    const/4 p1, 0x1

    .line 792
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall:Z

    .line 793
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall2:Z

    .line 794
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->findService()V

    return-void
.end method


# virtual methods
.method public askMultiplePermission()V
    .registers 6

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->needPermission:Ljava/util/List;

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->permissionArray:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 192
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->checkIsAskPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 193
    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->needPermission:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 196
    :cond_21
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->needPermission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 198
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_4c

    .line 204
    :cond_36
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->needPermission:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4c
    :goto_4c
    return-void
.end method

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

.method public getFail()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    return-void
.end method

.method public getItemPosition(II)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1491
    :goto_2
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    move v2, v0

    .line 1492
    :goto_f
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    if-ne p2, v1, :cond_4a

    .line 1494
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v3

    if-ne v3, p1, :cond_72

    .line 1495
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialCenterClass;->getRecommendItemAdapter()Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    goto :goto_72

    .line 1498
    :cond_4a
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v3

    if-ne v3, p1, :cond_72

    .line 1499
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DialCenterClass;->getRecommendItemAdapter()Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 1500
    iput v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemPosition:I

    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_78
    return-void
.end method

.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c010b

    return v0
.end method

.method public getSuccess(Lcom/keephealth/android/model/bean/DialCenterB;)V
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getDialALables()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    if-nez p1, :cond_16

    return-void

    .line 270
    :cond_16
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getDialSizeString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->wight:I

    const/4 v1, 0x1

    .line 272
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->height:I

    .line 273
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getAdapterId()I

    move-result v0

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    .line 274
    iget v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->wight:I

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    .line 275
    iget v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->height:I

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    .line 276
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getDialShapeString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterB;->getDialALables()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4e
    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialCenterClass;

    .line 279
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialCenterClass;->getId()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4e

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialCenterClass;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4e

    .line 280
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4e

    .line 281
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 285
    :cond_7f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_af

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    if-nez p1, :cond_ac

    .line 287
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    iget v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->wight:I

    iget v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->height:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    .line 288
    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V

    .line 289
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->setmClickListener(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;)V

    .line 290
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_af

    .line 292
    :cond_ac
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    :cond_af
    :goto_af
    return-void
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 5

    .line 1453
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 1454
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_c

    goto :goto_47

    .line 1456
    :cond_c
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 1458
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1459
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    if-eqz p1, :cond_28

    .line 1460
    sget v0, Lcom/keephealth/android/app/AppApplication;->itemPosition2:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1462
    :cond_28
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    if-eqz p1, :cond_31

    .line 1463
    iget v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemPosition:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1465
    :cond_31
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1466
    sget p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    const/16 v0, 0x63

    if-ge p1, v0, :cond_47

    .line 1467
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_47
    :goto_47
    return-void
.end method

.method public initBluzDevice()V
    .registers 6

    .line 798
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    if-eqz v0, :cond_7

    .line 799
    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->release()V

    .line 801
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v0, :cond_13

    .line 802
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->cancel()V

    .line 803
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->release()V

    .line 806
    :cond_13
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "BLE_UUID_SERVICE"

    const-string v2, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "BLE_UUID_READ"

    const-string v3, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 808
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "BLE_UUID_WRITE"

    const-string v4, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 810
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 811
    const-string v4, "keyServiceUUID"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v0, "keyReadCharacteristicUUID"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v0, "keyWriteCharacteristicUUID"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 814
    invoke-static {v3, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->setUUID(Ljava/util/Map;Z)V

    const/4 v0, 0x0

    .line 816
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 818
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BLE"

    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->getDeviceQ32(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBluzConnector.getIO():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    invoke-interface {v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrr9"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v0, Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    invoke-interface {v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;-><init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 823
    invoke-virtual {v0, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setListener(Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;)V

    .line 825
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V

    return-void
.end method

.method protected initView()V
    .registers 5

    .line 161
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initView()V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 164
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setDelegate(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;)V

    .line 168
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;-><init>(Landroid/content/Context;Z)V

    .line 169
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1004ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setPullDownRefreshText(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1004d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setReleaseRefreshText(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setRefreshViewBackgroundColorRes(I)V

    .line 172
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v2, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setRefreshViewHolder(Lcn/bingoogolapple/refreshlayout/BGARefreshViewHolder;)V

    .line 173
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showLoading()V

    .line 175
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 176
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    return-void
.end method

.method synthetic lambda$updateAdapter$0$com-keephealth-android-ui-device-fragment-RecommendFragment()V
    .registers 2

    .line 1416
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    if-eqz v0, :cond_7

    .line 1417
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    :cond_7
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
    .registers 3

    .line 304
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    if-nez p1, :cond_1f

    .line 305
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z

    if-eqz p1, :cond_34

    .line 306
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->notifyDial()V

    .line 307
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz p1, :cond_34

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz p1, :cond_34

    .line 308
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->getRecommendDial(Ljava/lang/String;)V

    goto :goto_34

    .line 312
    :cond_1f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showToast(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method public onCustomClick(Landroid/view/View;I)V
    .registers 4

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09068b

    if-eq p1, v0, :cond_a

    goto :goto_56

    .line 327
    :cond_a
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz p1, :cond_1d

    .line 328
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showToast(Ljava/lang/String;)V

    goto :goto_56

    .line 330
    :cond_1d
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    if-eqz p1, :cond_30

    .line 331
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showToast(Ljava/lang/String;)V

    goto :goto_56

    .line 333
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz p1, :cond_37

    const/4 p1, 0x0

    .line 334
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 336
    :cond_37
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialCenterClass;->getId()I

    move-result p2

    const-string v0, "labelId"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-static {p2, v0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_56
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1425
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 1426
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    .line 1427
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isBackHome:Z

    .line 1428
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1429
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1430
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1431
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_15

    .line 1432
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1434
    :cond_15
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2c

    .line 1435
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->downloadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1436
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1437
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1439
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3b

    .line 1440
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1441
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 1442
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mDialog:Landroid/app/Dialog;

    :cond_3b
    const/4 v0, -0x1

    .line 1444
    sput v0, Lcom/keephealth/android/app/AppApplication;->dialItemId:I

    const/4 v0, 0x1

    .line 1448
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u8868\u76d8\u9519\u8bef:errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  errmsg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1663
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1664
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1665
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 1666
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1667
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1668
    iput-boolean p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    .line 1669
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    return-void
.end method

.method public onProgress(II)V
    .registers 5

    if-ge p1, p2, :cond_13

    .line 1652
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1653
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a

    .line 1655
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1a
    return-void
.end method

.method public onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1679
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onResume()V

    const/4 v0, 0x1

    .line 1680
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isVisible:Z

    return-void
.end method

.method public onStatus(I)V
    .registers 4

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3423rew22"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_2d

    .line 1513
    :cond_21
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onStatusClick(Landroid/view/View;II)V
    .registers 7

    .line 395
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 396
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz p1, :cond_33

    .line 397
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showToast(Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 400
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->downloadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_11d

    .line 402
    :cond_33
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    if-eqz p1, :cond_47

    .line 403
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_11d

    :cond_47
    const/4 p1, -0x1

    .line 405
    sput p1, Lcom/keephealth/android/app/AppApplication;->dialItemId:I

    .line 406
    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->changePosition:I

    .line 408
    sput p2, Lcom/keephealth/android/app/AppApplication;->itemPosition:I

    .line 409
    sput p3, Lcom/keephealth/android/app/AppApplication;->itemPosition2:I

    .line 410
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    const/4 p3, 0x1

    .line 411
    iput-boolean p3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    .line 412
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/app/AppApplication;->dialItemId:I

    .line 414
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getItemPosition(II)V

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->changePosition:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyItemChanged(I)V

    .line 418
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "USER_TOKEN"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b2

    .line 419
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DialCenterClass;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->downLoadDial(III)V

    .line 421
    :cond_b2
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->showList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialCenterClass;->getId()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_de

    .line 422
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p2

    sget p3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    mul-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Lcom/keephealth/android/util/ble/CmdHelper;->setTheme(III)[B

    move-result-object p2

    new-instance p3, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$2;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_11d

    .line 471
    :cond_de
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-nez p1, :cond_fa

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez p1, :cond_f0

    .line 473
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p1, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_fa

    :cond_f0
    const/4 p1, 0x0

    .line 475
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 476
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p1, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 479
    :cond_fa
    :goto_fa
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 481
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->downLoadFile(Ljava/lang/String;)V

    goto :goto_11d

    .line 486
    :cond_10b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_11d
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1685
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onStop()V

    const/4 v0, 0x0

    .line 1686
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isVisible:Z

    return-void
.end method

.method protected onVisiable()V
    .registers 3

    .line 257
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onVisiable()V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->getRecommendDial(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onWriteBytes(I)V
    .registers 2

    return-void
.end method

.method public oninVisiable()V
    .registers 2

    .line 354
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->oninVisiable()V

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z

    return-void
.end method

.method public reflashData(Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;)V
    .registers 3

    .line 1475
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v0

    if-eqz v0, :cond_25

    .line 1476
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1477
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    if-eqz p1, :cond_1c

    .line 1478
    sget v0, Lcom/keephealth/android/app/AppApplication;->itemPosition2:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1480
    :cond_1c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    if-eqz p1, :cond_25

    .line 1481
    iget v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemPosition:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    :cond_25
    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 4

    .line 363
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "refuse"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 4

    .line 359
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "refuse"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public sendDial()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAVersion:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    const/4 v0, 0x0

    .line 251
    const-string v1, "mOTAManager.prepare....."

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    return-void
.end method

.method public sendFail()V
    .registers 3

    const/4 v0, 0x1

    .line 1393
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1394
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    if-eqz v0, :cond_3d

    .line 1395
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z

    if-eqz v0, :cond_1d

    .line 1396
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_1d
    const/4 v0, 0x0

    .line 1398
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z

    .line 1399
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1400
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v1, :cond_2d

    const/4 v1, -0x1

    .line 1401
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1402
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1403
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1405
    :cond_2d
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1406
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    if-eqz v0, :cond_3d

    .line 1407
    iget v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->changePosition:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyItemChanged(I)V

    .line 1408
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    :cond_3d
    return-void
.end method

.method public updateAdapter()V
    .registers 3

    .line 1415
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
