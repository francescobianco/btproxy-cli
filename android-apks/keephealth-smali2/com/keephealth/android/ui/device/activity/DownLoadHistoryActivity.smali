.class public Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "DownLoadHistoryActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;
.implements Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;


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

.field dataSize:I

.field private final dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

.field private dialFile:Ljava/io/File;

.field private dialogTimeOut:Ljava/lang/Runnable;

.field private downloadTimeOut:Ljava/lang/Runnable;

.field private fg:I

.field private fileName:Ljava/lang/String;

.field finalJ:I

.field fos:Ljava/io/FileOutputStream;

.field httpConnection:Ljava/net/HttpURLConnection;

.field is:Ljava/io/InputStream;

.field private isSending:Z

.field private itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field private mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

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
    .registers 5

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 113
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDialDetailBDao()Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    const/16 v0, 0x9

    .line 126
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->permissionArray:[Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showList:Ljava/util/List;

    .line 233
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z

    .line 234
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;

    .line 291
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downloadTimeOut:Ljava/lang/Runnable;

    .line 353
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    .line 410
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->is:Ljava/io/InputStream;

    .line 411
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fos:Ljava/io/FileOutputStream;

    .line 511
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    .line 539
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;

    .line 550
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->finalJ:I

    .line 1018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->clearHttlLoad()V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;)V
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->initBluzDevice()V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I
    .registers 1

    .line 103
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->send_data_0:I

    return p0
.end method

.method static synthetic access$1802(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I
    .registers 2

    .line 103
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->send_data_0:I

    return p1
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;[BI)V
    .registers 3

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDialBin([BI)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I
    .registers 1

    .line 103
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fg:I

    return p0
.end method

.method static synthetic access$2102(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I
    .registers 2

    .line 103
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fg:I

    return p1
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/model/bean/DialDetailB;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->notifyDial()V

    return-void
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I
    .registers 1

    .line 103
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataLengh:I

    return p0
.end method

.method static synthetic access$2502(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I
    .registers 2

    .line 103
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataLengh:I

    return p1
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->handleData()V

    return-void
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/util/List;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/io/File;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downloadTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDialToDevice()V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I
    .registers 1

    .line 103
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I

    return p0
.end method

.method private clearHttlLoad()V
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 415
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 271
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 272
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 273
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 274
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 276
    :cond_17
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fileName:Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialFile:Ljava/io/File;

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 279
    :cond_57
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$2;->start()V

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

    .line 309
    :try_start_2
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downloadTimeOut:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    .line 312
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 313
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x4e20

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 314
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    .line 315
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_8a

    .line 319
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_9a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_97

    .line 320
    :try_start_3a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_86
    .catchall {:try_start_3a .. :try_end_3f} :catchall_82

    const/16 p2, 0x800

    .line 321
    :try_start_41
    new-array p2, p2, [B
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_43} :catch_80
    .catchall {:try_start_41 .. :try_end_43} :catchall_7e

    move v1, v0

    move v4, v1

    .line 323
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6c

    .line 324
    invoke-virtual {v3, p2, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_58

    mul-int/lit8 v6, v1, 0x64

    .line 326
    div-int/2addr v6, p1

    sub-int/2addr v6, v5

    if-le v6, v4, :cond_45

    :cond_58
    add-int/lit8 v4, v4, 0x1

    .line 328
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 329
    iput v5, v6, Landroid/os/Message;->what:I

    .line 330
    iput v1, v6, Landroid/os/Message;->arg1:I

    .line 331
    iput p1, v6, Landroid/os/Message;->arg2:I

    .line 332
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6b} :catch_7c
    .catchall {:try_start_45 .. :try_end_6b} :catchall_7e

    goto :goto_45

    .line 338
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_73

    .line 339
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_73
    if-eqz v2, :cond_78

    .line 342
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 345
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

    .line 316
    :cond_8a
    :try_start_8a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
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

    .line 336
    :goto_9c
    :try_start_9c
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_b5

    .line 338
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_a8

    .line 339
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a8
    if-eqz v1, :cond_ad

    .line 342
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_ad
    if-eqz v3, :cond_b2

    .line 345
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_b2
    move v1, p1

    :goto_b3
    int-to-long p1, v1

    return-wide p1

    :catchall_b5
    move-exception p1

    .line 338
    :goto_b6
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_bd

    .line 339
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_bd
    if-eqz v1, :cond_c2

    .line 342
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c2
    if-eqz v3, :cond_c7

    .line 345
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 347
    :cond_c7
    throw p1
.end method

.method private handleData()V
    .registers 7

    .line 1052
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    new-array v0, v0, [B

    .line 1053
    sget-object v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 1054
    :goto_11
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1055
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    mul-int/lit8 v4, v2, 0x14

    .line 1056
    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 1058
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/4 v2, 0x7

    :goto_35
    add-int/lit8 v3, v1, 0x2

    if-gt v2, v3, :cond_57

    .line 1060
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
    return-void
.end method

.method private initBluzDevice()V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    if-eqz v0, :cond_7

    .line 174
    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->release()V

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v0, :cond_13

    .line 177
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->cancel()V

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->release()V

    .line 181
    :cond_13
    const-string v0, "BLE_UUID_SERVICE"

    const-string v1, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    const-string v1, "BLE_UUID_READ"

    const-string v2, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    const-string v2, "BLE_UUID_WRITE"

    const-string v3, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {p0, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 186
    const-string v4, "keyServiceUUID"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "keyReadCharacteristicUUID"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "keyWriteCharacteristicUUID"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 189
    invoke-static {v3, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->setUUID(Ljava/util/Map;Z)V

    .line 191
    const-string v0, "BLE"

    invoke-static {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->getDeviceQ32(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 192
    new-instance v0, Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    invoke-interface {v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;-><init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 193
    invoke-virtual {v0, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setListener(Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V

    return-void
.end method

.method private notifyDial()V
    .registers 4

    .line 1022
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDialInfo()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private sendDialBin([BI)V
    .registers 9

    const/4 v0, 0x0

    .line 558
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->finalJ:I

    .line 559
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    array-length v1, p1

    rem-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_15

    .line 562
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    goto :goto_1a

    .line 564
    :cond_15
    array-length v1, p1

    div-int/lit16 v1, v1, 0x200

    add-int/lit8 v1, v1, 0x1

    .line 566
    :goto_1a
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mbytes:[B

    .line 567
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mindex:I

    const/4 v2, 0x0

    .line 568
    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    .line 569
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialBin([BI)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    move v2, v0

    .line 571
    :goto_28
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "index\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  \u539f\u59cb\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hgyrt"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_5d
    if-nez p2, :cond_61

    .line 576
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 578
    :cond_61
    :goto_61
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_7e

    .line 580
    filled-new-array {v0}, [I

    move-result-object p2

    .line 581
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;[II[B)V

    const-wide/16 v4, 0x0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_7e
    return-void
.end method

.method private sendDialToDevice()V
    .registers 8

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fg:I

    const/4 v1, 0x1

    .line 421
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 422
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 423
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 424
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 425
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 426
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z

    .line 427
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialFile:Ljava/io/File;

    invoke-static {v2}, Lcom/keephealth/android/util/file/FileUtil;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object v2

    .line 429
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 430
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v1

    const-wide/16 v3, 0x2710

    const-string v5, "\u5f53\u524d\u9875\u9762:"

    if-eqz v1, :cond_75

    .line 432
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 433
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 434
    new-instance v2, Lcom/keephealth/android/model/bean/DeviceEntry;

    const/16 v6, 0xd

    invoke-direct {v2, v1, v6}, Lcom/keephealth/android/model/bean/DeviceEntry;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    if-eqz v1, :cond_af

    .line 435
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_af

    .line 436
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  q32\u7cfb\u5217\u53d1\u9001\u8868\u76d8\u5f00\u59cb\u53d1\u9001"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v1

    new-instance v3, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$5;

    invoke-direct {v3, p0, v2}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_af

    .line 463
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  \u53d1\u9001\u8868\u76d8\u5f00\u59cb\u53d1\u9001"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v1

    array-length v3, v2

    invoke-static {v1, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialInfo(II)[B

    move-result-object v1

    new-instance v3, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;

    invoke-direct {v3, p0, v2}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;[B)V

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_af
    :goto_af
    return-void
.end method

.method private startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    const/4 p1, 0x1

    .line 506
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall:Z

    .line 507
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall2:Z

    .line 508
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->findService()V

    return-void
.end method


# virtual methods
.method public checkIsAskPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 223
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

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 1067
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 1068
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_97

    const/16 p1, 0x12e

    if-eq v0, p1, :cond_49

    const/16 p1, 0x3f5

    if-eq v0, p1, :cond_1e

    const/16 p1, 0xc28

    if-eq v0, p1, :cond_19

    goto/16 :goto_ea

    .line 1126
    :cond_19
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial()V

    goto/16 :goto_ea

    .line 1084
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{\"adapterId\":\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 1086
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$11;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/DialCenterHttp;->getDownLoadInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    goto/16 :goto_ea

    .line 1070
    :cond_49
    const-string p1, "hh443e43e"

    const-string v0, "\u65ad\u5f00\u8fde\u63a5_diaopan"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1071
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1072
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1073
    sput-boolean p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v0, -0x1

    .line 1074
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1075
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1076
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1077
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1078
    const-string v0, "hh443de43e"

    const-string v1, "\u53d1\u9001\u5931\u8d25_02"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u5f00\u59cb\u53d1\u9001\u5931\u8d25  \u65ad\u5f00\u84dd\u7259"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1080
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1081
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->finish()V

    goto :goto_ea

    .line 1116
    :cond_97
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 1117
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

    .line 1118
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v0

    if-eqz v0, :cond_ea

    .line 1119
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1120
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u53d1\u9001\u8868\u76d8\u8fdb\u5ea62"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    :cond_ea
    :goto_ea
    return-void
.end method

.method protected initView()V
    .registers 6

    .line 142
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getFilesDir()Ljava/io/File;

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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 144
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 145
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    .line 146
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    const/4 v1, 0x1

    .line 147
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    .line 149
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 150
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 152
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 154
    const-string v2, "list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showList:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showList:Ljava/util/List;

    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 156
    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->setInActivity(Z)V

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    :cond_76
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->titleBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_a3

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->titleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a3
    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity(Landroid/view/View;)V
    .registers 2

    .line 0
    const p1, 0x7f090086

    .line 165
    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 166
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->onBackPressed()V

    :cond_c
    return-void
.end method

.method public onAudioDataReceived(II[B)V
    .registers 4

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1145
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-nez v0, :cond_14

    .line 1146
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    goto :goto_2c

    .line 1148
    :cond_14
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1149
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2c

    .line 1151
    :cond_29
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    :goto_2c
    return-void
.end method

.method public onCustomClick(Landroid/view/View;I)V
    .registers 4

    .line 240
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z

    if-eqz p1, :cond_13

    .line 241
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showToast(Ljava/lang/String;)V

    goto :goto_72

    .line 243
    :cond_13
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 244
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I

    .line 245
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->showList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z

    .line 247
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 248
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 249
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p2

    sput p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 250
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 251
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p2

    if-nez p2, :cond_5a

    .line 252
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez p2, :cond_50

    .line 253
    new-instance p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_5a

    :cond_50
    const/4 p2, 0x0

    .line 255
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 256
    new-instance p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 260
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downLoadFile(Ljava/lang/String;)V

    goto :goto_72

    .line 262
    :cond_64
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_72
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1158
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 1159
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 1160
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->downloadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1162
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1164
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_21

    .line 1165
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    :cond_21
    const/4 v0, 0x0

    .line 1167
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z

    .line 1168
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1169
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1170
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1171
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1173
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    .line 1174
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    .line 1175
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    const/4 v0, 0x1

    .line 1176
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u53d1\u9001\u8868\u76d8\u8fdb\u5ea6errcode:"

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
    .registers 3

    return-void
.end method

.method public onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
    .registers 2

    return-void
.end method

.method public onStatus(I)V
    .registers 3

    .line 1181
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWriteBytes(I)V
    .registers 2

    return-void
.end method

.method public sendDial()V
    .registers 5

    const/4 v0, 0x1

    .line 1132
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1135
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1136
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 1137
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAVersion:Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    return-void
.end method
