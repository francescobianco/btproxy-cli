.class public Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "RecommendDetailActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;
.implements Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;
.implements Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;",
        "Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;",
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

.field private static final WRITE_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x64


# instance fields
.field private bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

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

.field private final dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

.field private dialFile:Ljava/io/File;

.field private dialogTimeOut:Ljava/lang/Runnable;

.field private downloadTimeOut:Ljava/lang/Runnable;

.field private fg:I

.field private fileName:Ljava/lang/String;

.field finalJ:I

.field private firstGo:Z

.field httpConnection:Ljava/net/HttpURLConnection;

.field private isSending:Z

.field private isVisible:Z

.field private itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field private labelId:I

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

.field private permissionsCamer:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

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

.field private sendTimeOut:Ljava/lang/Runnable;

.field private send_data_0:I

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field private writeTimeOut:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 107
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 118
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDialDetailBDao()Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    const/16 v0, 0x9

    .line 136
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

    const/4 v5, 0x3

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v0, v5

    const/4 v7, 0x4

    const-string v8, "android.permission.INTERNET"

    aput-object v8, v0, v7

    const/4 v7, 0x5

    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, "android.permission.READ_PHONE_STATE"

    aput-object v8, v0, v7

    const/4 v7, 0x7

    const-string v8, "android.permission.BLUETOOTH_SCAN"

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string v8, "android.permission.BLUETOOTH_CONNECT"

    aput-object v8, v0, v7

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->permissionArray:[Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->showList:Ljava/util/List;

    .line 309
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/SDKDemo/DialCenter/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->saveFileName:Ljava/lang/String;

    .line 315
    new-array v0, v5, [Ljava/lang/String;

    const-string v7, "android.permission.CAMERA"

    aput-object v7, v0, v2

    aput-object v4, v0, v3

    aput-object v6, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->permissionsCamer:[Ljava/lang/String;

    .line 317
    new-array v0, v5, [Ljava/lang/String;

    aput-object v7, v0, v2

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    aput-object v4, v0, v3

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->permissionsLocation:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    .line 467
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendTimeOut:Ljava/lang/Runnable;

    .line 495
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    .line 552
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadTimeOut:Ljava/lang/Runnable;

    .line 655
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    .line 684
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;

    .line 696
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fg:I

    .line 701
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->finalJ:I

    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/io/File;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->clearHttlLoad()V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->initBluzDevice()V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I
    .registers 1

    .line 107
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->send_data_0:I

    return p0
.end method

.method static synthetic access$1502(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I
    .registers 2

    .line 107
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->send_data_0:I

    return p1
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;[BI)V
    .registers 3

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialBin([BI)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I
    .registers 1

    .line 107
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fg:I

    return p0
.end method

.method static synthetic access$1802(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I
    .registers 2

    .line 107
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fg:I

    return p1
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->saveFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/model/bean/DialDetailB;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)V
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->notifyDial(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I
    .registers 1

    .line 107
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataLengh:I

    return p0
.end method

.method static synthetic access$2402(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I
    .registers 2

    .line 107
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataLengh:I

    return p1
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->handleData()V

    return-void
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z
    .registers 2

    .line 107
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I
    .registers 1

    .line 107
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I

    return p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialToDevice()V

    return-void
.end method

.method private clearHttlLoad()V
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 463
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    .line 387
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    const/4 v0, 0x1

    .line 388
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 389
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 391
    :cond_1a
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fileName:Ljava/lang/String;

    .line 392
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialFile:Ljava/io/File;

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialFile:Ljava/io/File;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 394
    :cond_5a
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$2;->start()V

    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 407
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 408
    const-string v1, "hger8"

    const-string v2, "downloadUpdateFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 417
    :try_start_c
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadTimeOut:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x2710

    .line 420
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 421
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x4e20

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 422
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    .line 423
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x194

    if-eq v3, v4, :cond_93

    .line 427
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_a3
    .catchall {:try_start_c .. :try_end_44} :catchall_a0

    .line 428
    :try_start_44
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_8f
    .catchall {:try_start_44 .. :try_end_49} :catchall_8b

    const/16 p2, 0x800

    .line 429
    :try_start_4b
    new-array p2, p2, [B
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4d} :catch_89
    .catchall {:try_start_4b .. :try_end_4d} :catchall_87

    move v2, v1

    move v5, v2

    .line 431
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_75

    .line 432
    invoke-virtual {v4, p2, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v2, v6

    if-eqz v5, :cond_61

    mul-int/lit8 v6, v2, 0x64

    .line 434
    div-int/2addr v6, p1

    sub-int/2addr v6, v0

    if-le v6, v5, :cond_4f

    :cond_61
    add-int/lit8 v5, v5, 0x1

    .line 436
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 437
    iput v0, v6, Landroid/os/Message;->what:I

    .line 438
    iput v2, v6, Landroid/os/Message;->arg1:I

    .line 439
    iput p1, v6, Landroid/os/Message;->arg2:I

    .line 440
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_74} :catch_85
    .catchall {:try_start_4f .. :try_end_74} :catchall_87

    goto :goto_4f

    .line 446
    :cond_75
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_7c

    .line 447
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7c
    if-eqz v3, :cond_81

    .line 450
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 453
    :cond_81
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_bc

    :catch_85
    move p1, v2

    goto :goto_91

    :catchall_87
    move-exception p1

    goto :goto_8d

    :catch_89
    move p1, v1

    goto :goto_91

    :catchall_8b
    move-exception p1

    move-object v4, v2

    :goto_8d
    move-object v2, v3

    goto :goto_bf

    :catch_8f
    move p1, v1

    move-object v4, v2

    :goto_91
    move-object v2, v3

    goto :goto_a5

    .line 424
    :cond_93
    :try_start_93
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 425
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "fail!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a0} :catch_a3
    .catchall {:try_start_93 .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception p1

    move-object v4, v2

    goto :goto_bf

    :catch_a3
    move p1, v1

    move-object v4, v2

    .line 444
    :goto_a5
    :try_start_a5
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_be

    .line 446
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_b1

    .line 447
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b1
    if-eqz v2, :cond_b6

    .line 450
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_b6
    if-eqz v4, :cond_bb

    .line 453
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_bb
    move v2, p1

    :goto_bc
    int-to-long p1, v2

    return-wide p1

    :catchall_be
    move-exception p1

    .line 446
    :goto_bf
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_c6

    .line 447
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c6
    if-eqz v2, :cond_cb

    .line 450
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_cb
    if-eqz v4, :cond_d0

    .line 453
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 455
    :cond_d0
    throw p1
.end method

.method private handleData()V
    .registers 7

    .line 1230
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    new-array v0, v0, [B

    .line 1231
    sget-object v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 1232
    :goto_11
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1233
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    mul-int/lit8 v4, v2, 0x14

    .line 1234
    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 1236
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/4 v2, 0x7

    :goto_35
    add-int/lit8 v3, v1, 0x2

    if-gt v2, v3, :cond_57

    .line 1238
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

    :cond_57
    const/16 v0, 0x3f5

    .line 1241
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method

.method private initBluzDevice()V
    .registers 6

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    if-eqz v0, :cond_7

    .line 188
    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->release()V

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v0, :cond_13

    .line 191
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->cancel()V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->release()V

    .line 195
    :cond_13
    const-string v0, "BLE_UUID_SERVICE"

    const-string v1, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    const-string v1, "BLE_UUID_READ"

    const-string v2, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    const-string v2, "BLE_UUID_WRITE"

    const-string v3, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 200
    const-string v4, "keyServiceUUID"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "keyReadCharacteristicUUID"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "keyWriteCharacteristicUUID"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 203
    invoke-static {v3, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->setUUID(Ljava/util/Map;Z)V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 207
    const-string v0, "BLE"

    invoke-static {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->getDeviceQ32(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 210
    new-instance v0, Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    invoke-interface {v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;-><init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 211
    invoke-virtual {v0, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setListener(Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;)V

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V

    return-void
.end method

.method private notifyDial(I)V
    .registers 4

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyDial_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GGGh35d3"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDialInfo()[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private sendDialBin([BI)V
    .registers 9

    const/4 v0, 0x0

    .line 705
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->finalJ:I

    .line 706
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 708
    array-length v1, p1

    rem-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_15

    .line 709
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    goto :goto_1a

    .line 711
    :cond_15
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    add-int/lit8 v1, v1, 0x1

    .line 713
    :goto_1a
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mbytes:[B

    .line 714
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mindex:I

    const/4 v2, 0x0

    .line 715
    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendData:Ljava/util/List;

    .line 716
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialBin([BI)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendData:Ljava/util/List;

    if-nez p2, :cond_2b

    .line 718
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 720
    :cond_2b
    const-string p1, "rtft9"

    const-string v2, "\u5f00\u59cb\u53d1\u9001\u8868\u76d8"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_32
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4f

    .line 723
    filled-new-array {v0}, [I

    move-result-object p1

    .line 724
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;[III)V

    const-wide/16 v4, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_4f
    return-void
.end method

.method private sendDialToDevice()V
    .registers 8

    const/4 v0, 0x0

    .line 562
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 563
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, 0x1

    .line 564
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    .line 565
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fg:I

    .line 566
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 567
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 568
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialFile:Ljava/io/File;

    invoke-static {v2}, Lcom/keephealth/android/util/file/FileUtil;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object v2

    .line 569
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 570
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v1

    const-string v3, "\u5f53\u524d\u9875\u9762:"

    if-eqz v1, :cond_86

    .line 571
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendTimeOut:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 573
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 574
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 575
    new-instance v2, Lcom/keephealth/android/model/bean/DeviceEntry;

    const/16 v6, 0xd

    invoke-direct {v2, v1, v6}, Lcom/keephealth/android/model/bean/DeviceEntry;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    if-eqz v1, :cond_b9

    .line 576
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 577
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  Q32\u7cfb\u5217...CmdHelper.enterUpdate():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v1

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;

    invoke-direct {v3, p0, v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_b9

    .line 603
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  \u5f00\u59cb\u53d1\u9001\u8868\u76d8..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v1

    array-length v3, v2

    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialInfo(II)[B

    move-result-object v1

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;

    invoke-direct {v3, p0, v2}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;[B)V

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method private startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    const/4 p1, 0x1

    .line 650
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall:Z

    .line 651
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall2:Z

    .line 652
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->findService()V

    return-void
.end method


# virtual methods
.method public Delay(I)V
    .registers 4

    .line 1172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1183
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_d

    :cond_14
    return-void
.end method

.method public askMultiplePermission()V
    .registers 6

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->needPermission:Ljava/util/List;

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->permissionArray:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 254
    invoke-virtual {p0, p0, v3}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->checkIsAskPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 255
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->needPermission:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 258
    :cond_1d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->needPermission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 260
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_40

    .line 266
    :cond_2e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->needPermission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_40
    :goto_40
    return-void
.end method

.method public checkIsAskPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 243
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

    const v0, 0x7f0c0076

    return v0
.end method

.method public getFail()V
    .registers 1

    return-void
.end method

.method public getSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->canDissDilalog()V

    .line 292
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->showList:Ljava/util/List;

    .line 293
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->firstGo:Z

    if-eqz p1, :cond_27

    .line 294
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->showList:Ljava/util/List;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 295
    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->setInActivity(Z)V

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_35

    .line 299
    :cond_27
    const-string p1, "hger3"

    const-string v0, "2"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    :goto_35
    return-void
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 5

    .line 1264
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 1265
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_7d

    const/16 p1, 0x3f5

    if-eq v0, p1, :cond_71

    const/16 p1, 0xc28

    if-eq v0, p1, :cond_6d

    const/16 p1, 0x12d

    if-eq v0, p1, :cond_1d

    const/16 p1, 0x12e

    if-eq v0, p1, :cond_1d

    goto/16 :goto_e6

    :cond_1d
    const/4 p1, 0x0

    .line 1269
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    .line 1270
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    .line 1271
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 1272
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1273
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1274
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1275
    sput-boolean p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v0, -0x1

    .line 1276
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1277
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1278
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1283
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1284
    const-string v0, "hh443de43e"

    const-string v1, "\u53d1\u9001\u5931\u8d25_02"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u53d1\u9001\u8fc7\u7a0b\u4e2d\u65ad\u5f00\u4e86\u84dd\u7259\u8fde\u63a5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->finish()V

    goto/16 :goto_e6

    .line 1309
    :cond_6d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial()V

    goto :goto_e6

    .line 1291
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->labelId:I

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->getRecommendDialDetail(II)V

    goto :goto_e6

    .line 1294
    :cond_7d
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 1295
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

    .line 1297
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v0

    if-eqz v0, :cond_d0

    .line 1298
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1300
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u53d1\u9001\u8868\u76d8\u8fdb\u5ea63"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1303
    :cond_d0
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1304
    sget p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    const/16 v0, 0x63

    if-ge p1, v0, :cond_e6

    .line 1305
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendTimeOut:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e6
    :goto_e6
    return-void
.end method

.method protected initView()V
    .registers 7

    .line 153
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getFilesDir()Ljava/io/File;

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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->saveFileName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->firstGo:Z

    .line 156
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDetail:Z

    const/4 v1, 0x0

    .line 157
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->comeDial2:Z

    .line 159
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 160
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 161
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 162
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    .line 164
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 165
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 166
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    .line 167
    const-string v2, "rtft9"

    const-string v3, "\u8be6\u60c5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .line 168
    sput v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 169
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 170
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 171
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_a8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a8

    .line 173
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "labelId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->labelId:I

    .line 174
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dial_type_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->labelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 175
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_a8
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->bgView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xc

    .line 179
    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->labelId:I

    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->getRecommendDialDetail(II)V

    .line 181
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 182
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    return-void
.end method

.method public onAudioDataReceived(II[B)V
    .registers 4

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1251
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-nez v0, :cond_14

    .line 1252
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onBackPressed()V

    goto :goto_2c

    .line 1254
    :cond_14
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1255
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2c

    .line 1257
    :cond_29
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onBackPressed()V

    :goto_2c
    return-void
.end method

.method public onCustomClick(Landroid/view/View;I)V
    .registers 5

    .line 344
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 345
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz p1, :cond_2f

    .line 346
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->showToast(Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_bc

    .line 351
    :cond_2f
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    if-eqz p1, :cond_43

    .line 352
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_bc

    .line 354
    :cond_43
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_60

    .line 355
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez p1, :cond_56

    .line 356
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_60

    :cond_56
    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 359
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 362
    :cond_60
    :goto_60
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I

    .line 363
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->showList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    .line 364
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    .line 365
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 366
    const-string p1, "hger5"

    const-string p2, "3"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 368
    const-string p1, "USER_TOKEN"

    const-string p2, ""

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a1

    .line 369
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    sget p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getId()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->labelId:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->downLoadDial(III)V

    :cond_a1
    const/4 p1, 0x0

    .line 372
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->firstGo:Z

    .line 373
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downLoadFile(Ljava/lang/String;)V

    goto :goto_bc

    .line 377
    :cond_ae
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_bc
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 1316
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 1317
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z

    .line 1318
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1319
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1320
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1321
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1322
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_25

    .line 1323
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1324
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1325
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1327
    :cond_25
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDetail:Z

    .line 1328
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    const/4 v1, 0x1

    .line 1329
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 1330
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 1331
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    .line 1332
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_37

    .line 1333
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1335
    :cond_37
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->firstGo:Z

    .line 1336
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isVisible:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u53d1\u9001\u8868\u76d8\u8fdb\u5ea6_errcode:"

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

    return-void
.end method

.method public onProgress(II)V
    .registers 5

    .line 1478
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

    const-string v1, "ggrr4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p1, p2, :cond_31

    .line 1480
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1481
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_38

    .line 1483
    :cond_31
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_38
    return-void
.end method

.method public onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
    .registers 2

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1499
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onResume()V

    const/4 v0, 0x1

    .line 1500
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isVisible:Z

    return-void
.end method

.method public onStatus(I)V
    .registers 3

    .line 1341
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWriteBytes(I)V
    .registers 2

    return-void
.end method

.method public sendDial()V
    .registers 5

    const/4 v0, 0x1

    .line 274
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAVersion:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    return-void
.end method
