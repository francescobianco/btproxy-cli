.class public Lcom/keephealth/android/ui/device/fragment/CustomFragment;
.super Lcom/keephealth/android/base/BaseMvpFragment;
.source "CustomFragment.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;
.implements Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpFragment<",
        "Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;",
        "Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;",
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

.field private static final TAKE_PHOTO:I = 0x1


# instance fields
.field private ImagePath:Ljava/lang/String;

.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field btnSend:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b3
    .end annotation
.end field

.field private choose:Ljava/lang/Integer;

.field private clickBcak:Z

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private countryName:Ljava/lang/String;

.field private cropPath:Ljava/lang/String;

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentTheme:I

.field private currentType:I

.field private customAdapter:Lcom/keephealth/android/ui/device/adapter/CustomAdapter;

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

.field dialBackgroud:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090131
    .end annotation
.end field

.field private final dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

.field private dialDetailBS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field private dialFile:Ljava/io/File;

.field dialTheme:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090132
    .end annotation
.end field

.field private dialogTimeOut:Ljava/lang/Runnable;

.field private downloadTimeOut:Ljava/lang/Runnable;

.field private fg:I

.field private fileName:Ljava/lang/String;

.field finalJ:I

.field fos:Ljava/io/FileOutputStream;

.field httpConnection:Ljava/net/HttpURLConnection;

.field private imageUri:Landroid/net/Uri;

.field intentActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field is:Ljava/io/InputStream;

.field private isOnVisible:Z

.field private isSending:Z

.field private mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

.field private mDialog:Landroid/app/Dialog;

.field private mDialog2:Landroid/app/Dialog;

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

.field private final permissionsCamera:[Ljava/lang/String;

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

.field private send_data_0:I

.field private sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

.field private writeTimeOut:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 129
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpFragment;-><init>()V

    const/4 v0, 0x1

    .line 140
    iput v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentType:I

    const/4 v1, 0x3

    .line 143
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v2, v0

    const/4 v6, 0x2

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v7, v2, v6

    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->permissionsCamera:[Ljava/lang/String;

    .line 144
    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v5, v2, v0

    aput-object v7, v2, v6

    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->permissionsCamer:[Ljava/lang/String;

    .line 146
    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    aput-object v4, v2, v0

    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    aput-object v4, v2, v6

    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->permissionsLocation:[Ljava/lang/String;

    .line 148
    iput-boolean v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    const/4 v2, -0x1

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->choose:Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 164
    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentBitmap:Landroid/graphics/Bitmap;

    .line 166
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBS:Ljava/util/List;

    const/16 v4, 0x9

    .line 186
    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v8, v4, v3

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v8, v4, v0

    aput-object v5, v4, v6

    aput-object v7, v4, v1

    const/4 v0, 0x4

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    aput-object v1, v4, v0

    iput-object v4, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->permissionArray:[Ljava/lang/String;

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    .line 588
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$4;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downloadTimeOut:Ljava/lang/Runnable;

    .line 596
    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    .line 597
    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->is:Ljava/io/InputStream;

    .line 598
    iput-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fos:Ljava/io/FileOutputStream;

    .line 606
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->saveFileName:Ljava/lang/String;

    .line 690
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    .line 877
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$8;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    .line 907
    iput v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fg:I

    .line 908
    iput v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->finalJ:I

    .line 1033
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$10;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    .line 1074
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$11;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$11;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;

    .line 1084
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDialDetailBDao()Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    .line 1746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/app/Dialog;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->cropPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 1

    .line 129
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendQ32DialToDevice()V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->cropPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 1

    .line 129
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDialIdToDevice()V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 1

    .line 129
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->clearHttlLoad()V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/net/Uri;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->imageUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    return-object p1
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)I
    .registers 1

    .line 129
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->send_data_0:I

    return p0
.end method

.method static synthetic access$2202(Lcom/keephealth/android/ui/device/fragment/CustomFragment;I)I
    .registers 2

    .line 129
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->send_data_0:I

    return p1
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;[BI)V
    .registers 3

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendBack([BI)V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/keephealth/android/ui/device/fragment/CustomFragment;I)I
    .registers 2

    .line 129
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fg:I

    return p1
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)I
    .registers 1

    .line 129
    iget p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataLengh:I

    return p0
.end method

.method static synthetic access$2702(Lcom/keephealth/android/ui/device/fragment/CustomFragment;I)I
    .registers 2

    .line 129
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataLengh:I

    return p1
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 1

    .line 129
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->handleData()V

    return-void
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->choose:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downloadTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/io/File;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downloadUpdateFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    return-object p1
.end method

.method private clearHttlLoad()V
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 602
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void
.end method

.method private compressImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/io/File;
    .registers 8

    .line 305
    const-string v0, "compressImage"

    const-string v1, "ggee23"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 307
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 308
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 311
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "baos\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   bitmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_bb

    .line 315
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p2, v2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v2, 0x64

    .line 317
    :goto_4d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    const/16 v4, 0x15e

    if-le v3, v4, :cond_6d

    .line 318
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v2, v2, -0x32

    .line 320
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v3, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 321
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    .line 322
    const-string v3, "\u6bcf\u6b21\u90fd\u51cf\u5c1110"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 325
    :cond_6d
    :try_start_6d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_72} :catch_9b

    .line 327
    :try_start_72
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 328
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 329
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7f} :catch_80
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_7f} :catch_9b

    goto :goto_b1

    :catch_80
    move-exception p1

    .line 331
    :try_start_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException_e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_9a} :catch_9b

    goto :goto_b1

    :catch_9b
    move-exception p1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileNotFoundException_e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_b1
    const/4 p1, 0x1

    .line 338
    new-array p1, p1, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->recycleBitmap([Landroid/graphics/Bitmap;)V

    goto :goto_c0

    .line 340
    :cond_bb
    const-string p1, "bitmap == null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c0
    return-object v0
.end method

.method private downLoadFile(Ljava/lang/String;)V
    .registers 5

    .line 611
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->saveFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 613
    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 615
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->saveFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsDir(Ljava/lang/String;)Z

    .line 616
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fileName:Ljava/lang/String;

    .line 617
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 618
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

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fileName:Ljava/lang/String;

    .line 621
    :cond_4d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->saveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialFile:Ljava/io/File;

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialFile:Ljava/io/File;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 623
    :cond_74
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$5;->start()V

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

    .line 644
    :try_start_2
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downloadTimeOut:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    .line 647
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 648
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x4e20

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 649
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    .line 650
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_8d

    .line 654
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_9d
    .catchall {:try_start_2 .. :try_end_3a} :catchall_9a

    .line 655
    :try_start_3a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_88
    .catchall {:try_start_3a .. :try_end_3f} :catchall_84

    const/16 p2, 0x800

    .line 656
    :try_start_41
    new-array p2, p2, [B
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_43} :catch_81
    .catchall {:try_start_41 .. :try_end_43} :catchall_7f

    move v1, v0

    move v4, v1

    .line 658
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6c

    .line 659
    invoke-virtual {v3, p2, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_58

    mul-int/lit8 v6, v1, 0x64

    .line 661
    div-int/2addr v6, p1

    sub-int/2addr v6, v5

    if-le v6, v4, :cond_45

    :cond_58
    add-int/lit8 v4, v4, 0x1

    .line 663
    iget-object v6, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 664
    iput v5, v6, Landroid/os/Message;->what:I

    .line 665
    iput v1, v6, Landroid/os/Message;->arg1:I

    .line 666
    iput p1, v6, Landroid/os/Message;->arg2:I

    .line 667
    iget-object v5, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6b} :catch_7c
    .catchall {:try_start_45 .. :try_end_6b} :catchall_7f

    goto :goto_45

    .line 674
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_73

    .line 675
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_73
    if-eqz v2, :cond_78

    .line 678
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 681
    :cond_78
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_be

    :catch_7c
    move-exception p1

    move p2, v1

    goto :goto_8b

    :catchall_7f
    move-exception p1

    goto :goto_86

    :catch_81
    move-exception p1

    move p2, v0

    goto :goto_8b

    :catchall_84
    move-exception p1

    move-object v3, v1

    :goto_86
    move-object v1, v2

    goto :goto_c1

    :catch_88
    move-exception p1

    move p2, v0

    move-object v3, v1

    :goto_8b
    move-object v1, v2

    goto :goto_a0

    .line 651
    :cond_8d
    :try_start_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "fail!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9a} :catch_9d
    .catchall {:try_start_8d .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception p1

    move-object v3, v1

    goto :goto_c1

    :catch_9d
    move-exception p1

    move p2, v0

    move-object v3, v1

    .line 671
    :goto_a0
    :try_start_a0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 672
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_ac
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_c0

    .line 674
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b3

    .line 675
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b3
    if-eqz v1, :cond_b8

    .line 678
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_b8
    if-eqz v3, :cond_bd

    .line 681
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_bd
    move v1, p2

    :goto_be
    int-to-long p1, v1

    return-wide p1

    :catchall_c0
    move-exception p1

    .line 674
    :goto_c1
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_c8

    .line 675
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c8
    if-eqz v1, :cond_cd

    .line 678
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_cd
    if-eqz v3, :cond_d2

    .line 681
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 683
    :cond_d2
    throw p1
.end method

.method private getImage(Ljava/lang/String;)Ljava/io/File;
    .registers 8

    .line 277
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 279
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 280
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 281
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 282
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 283
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_21

    int-to-float v4, v2

    const/high16 v5, 0x44340000    # 720.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_21

    .line 290
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_1f
    float-to-int v2, v2

    goto :goto_30

    :cond_21
    if-ge v2, v3, :cond_2f

    int-to-float v2, v3

    const/high16 v3, 0x44b40000    # 1440.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    .line 292
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    goto :goto_1f

    :cond_2f
    move v2, v1

    :goto_30
    if-gtz v2, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    .line 296
    :goto_34
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 298
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "srcPath\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ggee23"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u91cd\u65b0\u8bfb\u5165\u56fe\u7247\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v0, p1}, Lcom/keephealth/android/util/OrientationAngle;->getOrientationAngle(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->compressImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private handleData()V
    .registers 7

    .line 1783
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    new-array v0, v0, [B

    .line 1784
    sget-object v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 1785
    :goto_11
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1786
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    mul-int/lit8 v4, v2, 0x14

    .line 1787
    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 1789
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/4 v2, 0x7

    :goto_35
    add-int/lit8 v3, v1, 0x2

    if-gt v2, v3, :cond_57

    .line 1791
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

    .line 1793
    :cond_57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x3f5

    .line 1794
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method

.method private notifyDial()V
    .registers 4

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "to_CmdHelper.getDialInfo():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDialInfo()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrr6"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDialInfo()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private varargs recycleBitmap([Landroid/graphics/Bitmap;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 349
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    if-eqz v2, :cond_14

    .line 350
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_14

    .line 351
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method private sendBack([BI)V
    .registers 9

    .line 1090
    const-string v0, "rtft9"

    .line 0
    const-string v1, "bytes:"

    .line 1090
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x0

    .line 1091
    iput v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->finalJ:I

    .line 1093
    array-length v3, p1

    rem-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_19

    .line 1094
    array-length v3, p1

    div-int/lit16 v3, v3, 0x200

    goto :goto_1e

    .line 1096
    :cond_19
    array-length v3, p1

    div-int/lit16 v3, v3, 0x200

    add-int/lit8 v3, v3, 0x1

    .line 1098
    :goto_1e
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mbytes:[B

    .line 1099
    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mindex:I

    const/4 v4, 0x0

    .line 1101
    :try_start_23
    iput-object v4, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendData:Ljava/util/List;

    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-static {p1, p2}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialBin([BI)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendData:Ljava/util/List;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3b} :catch_3c

    goto :goto_4f

    :catch_3c
    move-exception v1

    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    if-nez p2, :cond_53

    .line 1108
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 1110
    :cond_53
    :goto_53
    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_70

    .line 1112
    filled-new-array {v2}, [I

    move-result-object p2

    .line 1114
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    invoke-direct {v1, p0, p2, v3, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;[II[B)V

    const-wide/16 v4, 0x0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v4, v5, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_70
    return-void
.end method

.method private sendDialIdToDevice()V
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 914
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v2, 0x1

    .line 915
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 916
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 917
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 918
    iput-boolean v2, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    .line 919
    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentBitmap:Landroid/graphics/Bitmap;

    sget v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 920
    invoke-static {v3}, Lcom/keephealth/android/util/image/BitmapUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 921
    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialFile:Ljava/io/File;

    invoke-static {v4}, Lcom/keephealth/android/util/file/FileUtil;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object v4

    if-eqz v3, :cond_19c

    .line 922
    array-length v5, v3

    if-eqz v5, :cond_19c

    if-eqz v4, :cond_19c

    array-length v5, v4

    if-nez v5, :cond_2e

    goto/16 :goto_19c

    .line 927
    :cond_2e
    array-length v5, v4

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v5

    .line 928
    aget-byte v7, v5, v1

    const/16 v8, 0x14

    aput-byte v7, v4, v8

    .line 929
    aget-byte v7, v5, v2

    const/16 v9, 0x15

    aput-byte v7, v4, v9

    const/4 v7, 0x2

    .line 930
    aget-byte v10, v5, v7

    const/16 v11, 0x16

    aput-byte v10, v4, v11

    const/4 v10, 0x3

    .line 931
    aget-byte v5, v5, v10

    const/16 v12, 0x17

    aput-byte v5, v4, v12

    .line 932
    array-length v5, v4

    add-int/lit8 v5, v5, 0x48

    array-length v13, v3

    add-int/2addr v5, v13

    new-array v13, v5, [B

    .line 933
    array-length v14, v4

    invoke-static {v4, v1, v13, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    array-length v14, v4

    aput-byte v2, v13, v14

    .line 936
    array-length v14, v4

    add-int/2addr v14, v2

    aput-byte v1, v13, v14

    .line 937
    array-length v14, v4

    add-int/2addr v14, v7

    aput-byte v1, v13, v14

    .line 938
    array-length v14, v4

    add-int/2addr v14, v10

    aput-byte v1, v13, v14

    .line 939
    array-length v14, v4

    add-int/2addr v14, v6

    aput-byte v1, v13, v14

    .line 940
    array-length v14, v4

    add-int/lit8 v14, v14, 0x5

    aput-byte v1, v13, v14

    .line 941
    array-length v14, v4

    add-int/lit8 v14, v14, 0x6

    aput-byte v1, v13, v14

    .line 942
    array-length v14, v4

    add-int/lit8 v14, v14, 0x7

    aput-byte v1, v13, v14

    .line 944
    sget v14, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    invoke-static {v14, v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v14

    .line 945
    array-length v15, v4

    add-int/lit8 v15, v15, 0x8

    aget-byte v16, v14, v1

    aput-byte v16, v13, v15

    .line 946
    array-length v15, v4

    add-int/lit8 v15, v15, 0x9

    aget-byte v16, v14, v2

    aput-byte v16, v13, v15

    .line 948
    sget v15, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-static {v15, v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v15

    .line 949
    array-length v12, v4

    add-int/lit8 v12, v12, 0xa

    aget-byte v17, v15, v1

    aput-byte v17, v13, v12

    .line 950
    array-length v12, v4

    add-int/lit8 v12, v12, 0xb

    aget-byte v17, v15, v2

    aput-byte v17, v13, v12

    .line 952
    array-length v12, v4

    const/16 v11, 0x40

    add-int/2addr v12, v11

    invoke-static {v12, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v12

    .line 953
    array-length v11, v4

    add-int/lit8 v11, v11, 0xc

    aget-byte v18, v12, v1

    aput-byte v18, v13, v11

    .line 954
    array-length v11, v4

    add-int/lit8 v11, v11, 0xd

    aget-byte v18, v12, v2

    aput-byte v18, v13, v11

    .line 955
    array-length v11, v4

    add-int/lit8 v11, v11, 0xe

    aget-byte v18, v12, v7

    aput-byte v18, v13, v11

    .line 956
    array-length v11, v4

    add-int/lit8 v11, v11, 0xf

    aget-byte v12, v12, v10

    aput-byte v12, v13, v11

    .line 958
    array-length v11, v4

    add-int/lit8 v11, v11, 0x10

    aput-byte v1, v13, v11

    .line 959
    array-length v11, v4

    add-int/lit8 v11, v11, 0x11

    aput-byte v1, v13, v11

    .line 960
    array-length v11, v4

    add-int/lit8 v11, v11, 0x12

    aput-byte v1, v13, v11

    .line 961
    array-length v11, v4

    add-int/lit8 v11, v11, 0x13

    aput-byte v1, v13, v11

    .line 963
    array-length v11, v3

    invoke-static {v11, v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->IntToBinReverseArray(II)[B

    move-result-object v6

    .line 964
    array-length v11, v4

    add-int/2addr v11, v8

    aget-byte v8, v6, v1

    aput-byte v8, v13, v11

    .line 965
    array-length v8, v4

    add-int/2addr v8, v9

    aget-byte v9, v6, v2

    aput-byte v9, v13, v8

    .line 966
    array-length v8, v4

    const/16 v9, 0x16

    add-int/2addr v8, v9

    aget-byte v9, v6, v7

    aput-byte v9, v13, v8

    .line 967
    array-length v8, v4

    const/16 v9, 0x17

    add-int/2addr v8, v9

    aget-byte v9, v6, v10

    aput-byte v9, v13, v8

    .line 969
    array-length v8, v4

    add-int/lit8 v8, v8, 0x18

    aput-byte v2, v13, v8

    .line 970
    array-length v8, v4

    add-int/lit8 v8, v8, 0x19

    aput-byte v1, v13, v8

    const/16 v8, 0x1a

    const/16 v9, 0x40

    :goto_10a
    if-ge v8, v9, :cond_114

    .line 973
    array-length v11, v4

    add-int/2addr v11, v8

    const/4 v12, -0x1

    aput-byte v12, v13, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_10a

    .line 976
    :cond_114
    array-length v8, v4

    add-int/2addr v8, v9

    aget-byte v9, v14, v1

    aput-byte v9, v13, v8

    .line 977
    array-length v8, v4

    add-int/lit8 v8, v8, 0x41

    aget-byte v9, v14, v2

    aput-byte v9, v13, v8

    .line 978
    array-length v8, v4

    add-int/lit8 v8, v8, 0x42

    aget-byte v9, v15, v1

    aput-byte v9, v13, v8

    .line 979
    array-length v8, v4

    add-int/lit8 v8, v8, 0x43

    aget-byte v9, v15, v2

    aput-byte v9, v13, v8

    .line 980
    array-length v8, v4

    add-int/lit8 v8, v8, 0x44

    aget-byte v9, v6, v1

    aput-byte v9, v13, v8

    .line 981
    array-length v8, v4

    add-int/lit8 v8, v8, 0x45

    aget-byte v9, v6, v2

    aput-byte v9, v13, v8

    .line 982
    array-length v8, v4

    add-int/lit8 v8, v8, 0x46

    aget-byte v7, v6, v7

    aput-byte v7, v13, v8

    .line 983
    array-length v7, v4

    add-int/lit8 v7, v7, 0x47

    aget-byte v6, v6, v10

    aput-byte v6, v13, v7

    move v6, v1

    .line 985
    :goto_14c
    array-length v7, v3

    if-ge v6, v7, :cond_15a

    .line 986
    array-length v7, v4

    add-int/lit8 v7, v7, 0x48

    add-int/2addr v7, v6

    aget-byte v8, v3, v6

    aput-byte v8, v13, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_14c

    .line 988
    :cond_15a
    iput v1, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fg:I

    .line 989
    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 990
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u5f00\u59cb\u53d1\u9001\u8868\u76d8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 992
    iget-object v1, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v2

    invoke-static {v2, v5}, Lcom/keephealth/android/util/ble/CmdHelper;->setDialInfo(II)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/CustomFragment$9;

    invoke-direct {v3, v0, v13}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$9;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;[B)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void

    .line 923
    :cond_19c
    :goto_19c
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f10022c

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private sendQ32DialToDevice()V
    .registers 6

    const/4 v0, 0x0

    .line 786
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v0, 0x1

    .line 787
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 788
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 789
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 790
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    .line 792
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 794
    new-instance v1, Lcom/keephealth/android/model/bean/DeviceEntry;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcom/keephealth/android/model/bean/DeviceEntry;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    if-eqz v0, :cond_3e

    .line 795
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz v0, :cond_3e

    .line 796
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 797
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterUpdate()[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;

    invoke-direct {v3, p0, v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$7;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_3e
    return-void
.end method

.method private startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 2

    const/4 p1, 0x1

    .line 839
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall:Z

    .line 840
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->clickInstall2:Z

    .line 841
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->findService()V

    return-void
.end method

.method private takePhoto()V
    .registers 3

    .line 233
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->intentActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public bytesToInt([B)I
    .registers 4

    .line 218
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    .line 224
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1

    .line 219
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The byte array must be of length 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFail()V
    .registers 1

    return-void
.end method

.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c0100

    return v0
.end method

.method public getSuccess(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->clickBcak:Z

    .line 359
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBS:Ljava/util/List;

    .line 360
    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    .line 361
    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v1

    .line 362
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-le v0, v2, :cond_35

    int-to-double v0, v2

    .line 365
    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    sget v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    mul-double/2addr v0, v3

    double-to-int v1, v0

    move v0, v2

    .line 367
    :cond_35
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialTheme:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 368
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 369
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 370
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialTheme:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 372
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 373
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ec

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    .line 377
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f080122

    if-eqz v0, :cond_b1

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialTheme:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortrait(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    const v3, 0x7f08008c

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortrait(Landroid/content/Context;Landroid/widget/ImageView;I)V

    goto :goto_ec

    .line 381
    :cond_b1
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialTheme:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    const v3, 0x7f080064

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 385
    :cond_ec
    :goto_ec
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->customAdapter:Lcom/keephealth/android/ui/device/adapter/CustomAdapter;

    .line 386
    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 387
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->customAdapter:Lcom/keephealth/android/ui/device/adapter/CustomAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public initBluzDevice()V
    .registers 6

    .line 845
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    if-eqz v0, :cond_7

    .line 846
    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->release()V

    .line 848
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    if-eqz v0, :cond_13

    .line 849
    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->cancel()V

    .line 850
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->release()V

    .line 853
    :cond_13
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "BLE_UUID_SERVICE"

    const-string v2, "e49a25f8-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 854
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "BLE_UUID_READ"

    const-string v3, "e49a28e1-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 855
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "BLE_UUID_WRITE"

    const-string v4, "e49a25e0-f69a-11e8-8eb2-f2801f1b9fd1"

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->readPreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 857
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 858
    const-string v4, "keyServiceUUID"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string v0, "keyReadCharacteristicUUID"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string v0, "keyWriteCharacteristicUUID"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 861
    invoke-static {v3, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->setUUID(Ljava/util/Map;Z)V

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 865
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BLE"

    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->getDeviceQ32(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBluzConnector.getIO():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    invoke-interface {v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrr9"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v0, Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    invoke-interface {v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;-><init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 870
    invoke-virtual {v0, p0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setListener(Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;)V

    .line 872
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOnConnectionListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->setOnConnectionListener(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 202
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initView()V

    .line 203
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SDKDemo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->saveFileName:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 207
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 209
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 211
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->clickBcak:Z

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->getRecommendDialDetail(II)V

    .line 213
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->takePhoto()V

    return-void
.end method

.method synthetic lambda$onActivityResult$3$com-keephealth-android-ui-device-fragment-CustomFragment(Landroid/view/View;)V
    .registers 5

    .line 542
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog2:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 543
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 545
    :cond_7
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 547
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onActivityResult$4$com-keephealth-android-ui-device-fragment-CustomFragment(Landroid/view/View;)V
    .registers 2

    .line 550
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog2:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 551
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$requestPer$8$com-keephealth-android-ui-device-fragment-CustomFragment([Ljava/lang/String;)V
    .registers 5

    .line 1569
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1570
    invoke-static {}, Lcom/keephealth/android/util/image/ClipImageActivity;->prepare()Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v1

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    .line 1571
    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v1

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 1573
    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cropImage_.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 1574
    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 1575
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->startForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$6$com-keephealth-android-ui-device-fragment-CustomFragment(Landroid/view/View;)V
    .registers 5

    .line 1507
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1509
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1510
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$requestPermissionsFail$7$com-keephealth-android-ui-device-fragment-CustomFragment(Landroid/view/View;)V
    .registers 2

    .line 1511
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestPermissionsSuccess$5$com-keephealth-android-ui-device-fragment-CustomFragment([Ljava/lang/String;)V
    .registers 5

    .line 1488
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1489
    invoke-static {}, Lcom/keephealth/android/util/image/ClipImageActivity;->prepare()Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v1

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    .line 1490
    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v1

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 1492
    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cropImage_.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 1493
    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p1

    .line 1494
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->startForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method synthetic lambda$selectBackground$1$com-keephealth-android-ui-device-fragment-CustomFragment(Landroid/view/View;)V
    .registers 4

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sdk:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gg433"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    const/4 v1, 0x6

    if-le p1, v0, :cond_23

    .line 512
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    goto :goto_28

    .line 514
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->permissionsCamer:[Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 516
    :goto_28
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2f

    .line 517
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2f
    return-void
.end method

.method synthetic lambda$selectBackground$2$com-keephealth-android-ui-device-fragment-CustomFragment(Landroid/view/View;)V
    .registers 2

    .line 520
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 521
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$takePhoto$0$com-keephealth-android-ui-device-fragment-CustomFragment(Landroidx/activity/result/ActivityResult;)V
    .registers 8

    .line 235
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u56de\u8c03\u6570\u636e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f9

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->choose:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    goto/16 :goto_f9

    .line 243
    :cond_26
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->cropPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u56de\u8c03\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggee23"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    .line 246
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    const-string v1, "2"

    const v2, 0x7f080122

    if-eqz v0, :cond_a1

    .line 248
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-static {v0, v3, p1, v4, v5}, Lcom/keephealth/android/ui/device/fragment/ImageResizer;->compressImage(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    .line 249
    sget-object p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 250
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_ea

    .line 252
    :cond_85
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_ea

    .line 255
    :cond_a1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentBitmap:Landroid/graphics/Bitmap;

    .line 256
    sget-object p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 257
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_ea

    .line 259
    :cond_cf
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 263
    :goto_ea
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    if-eqz p1, :cond_f9

    const/4 v0, 0x2

    .line 264
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setType(I)V

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setBgUrl(Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .line 537
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_51

    .line 539
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_51

    .line 540
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1005c1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1005bf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1004a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    new-instance v5, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    .line 540
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog2:Landroid/app/Dialog;

    :cond_51
    return-void
.end method

.method public onAudioDataReceived(II[B)V
    .registers 4

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1581
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onDestroy()V

    .line 1582
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 1583
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downloadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1584
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1585
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    const/4 v0, 0x0

    .line 1587
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    .line 1588
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1589
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1590
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1591
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_2a

    .line 1592
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1594
    :cond_2a
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 6

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3423rew22"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  q32\u7cfb\u5217\u8868\u76d8\u9519\u8bef:errCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 6

    .line 399
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 400
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    if-eqz p1, :cond_1d

    .line 401
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->showToast(Ljava/lang/String;)V

    goto :goto_78

    .line 403
    :cond_1d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    .line 404
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getId()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentTheme:I

    const/4 p1, 0x1

    .line 405
    iput p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentType:I

    .line 406
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    const v0, 0x7f080122

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialTheme:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBS:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->customAdapter:Lcom/keephealth/android/ui/device/adapter/CustomAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->setSelectPosition(I)V

    goto :goto_78

    .line 410
    :cond_66
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_78
    return-void
.end method

.method public onProgress(II)V
    .registers 6

    .line 1810
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

    const-string v2, "3423rew22"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  q32\u7cfb\u5217\u8868\u76d8\u8fdb\u5ea6:progress:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    if-ge p1, p2, :cond_5e

    .line 1813
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1814
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_65

    .line 1816
    :cond_5e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_65
    return-void
.end method

.method public onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
    .registers 2

    return-void
.end method

.method public onStatus(I)V
    .registers 4

    .line 1611
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onVisiable()V
    .registers 2

    .line 1063
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onVisiable()V

    const/4 v0, 0x1

    .line 1064
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z

    return-void
.end method

.method public onWriteBytes(I)V
    .registers 2

    return-void
.end method

.method public oninVisiable()V
    .registers 2

    .line 1069
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->oninVisiable()V

    const/4 v0, 0x0

    .line 1070
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z

    return-void
.end method

.method public reflashData(Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;)V
    .registers 4

    .line 1740
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 1741
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->getTotal()I

    move-result p1

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1742
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100535

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    return-void
.end method

.method public requestPer()V
    .registers 4

    .line 1567
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v1

    .line 1576
    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v1

    .line 1567
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    return-void
.end method

.method public requestPermissionsFail(I)V
    .registers 8

    .line 1501
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->requestPermissionsFail(I)V

    .line 1502
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u62cd\u7167\u548c\u5b58\u50a8\u6743\u9650\u7533\u8bf7\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1503
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->permissionsCamera:[Ljava/lang/String;

    array-length v1, p1

    if-lez v1, :cond_76

    aget-object p1, p1, v0

    .line 1504
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_76

    .line 1505
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1005c1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1506
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1005bf

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f1004a1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    new-instance v5, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    .line 1505
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    :cond_76
    return-void
.end method

.method public requestPermissionsSuccess(I)V
    .registers 4

    .line 1483
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->requestPermissionsSuccess(I)V

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u62cd\u7167\u548c\u5b58\u50a8\u6743\u9650\u7533\u8bf7\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_48

    .line 1486
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    invoke-direct {v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;

    move-result-object v0

    .line 1495
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->build()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object v0

    .line 1486
    invoke-static {p1, v0}, Lcom/keephealth/android/views/gallery/ImagePickerActivity;->show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;)V

    :cond_48
    return-void
.end method

.method public savePath(Ljava/lang/String;)V
    .registers 6

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "savePath_path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3423rew22"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DialCenterBActivity.shape:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1538
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1540
    sget-object p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialWight:I

    sget v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialHeight:I

    invoke-static {p1, v1, v0, v2, v3}, Lcom/keephealth/android/ui/device/fragment/ImageResizer;->compressImage(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    goto :goto_4c

    .line 1543
    :cond_46
    invoke-static {p1}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1545
    :goto_4c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    if-eqz p1, :cond_5b

    const/4 v0, 0x2

    .line 1546
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setType(I)V

    .line 1547
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setBgUrl(Ljava/lang/String;)V

    .line 1549
    :cond_5b
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    const-string v0, "2"

    const v1, 0x7f080122

    if-eqz p1, :cond_a6

    .line 1550
    sget-object p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 1551
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_e5

    .line 1553
    :cond_8a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_e5

    .line 1556
    :cond_a6
    sget-object p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 1557
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_e5

    .line 1559
    :cond_ca
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialBackgroud:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_e5
    return-void
.end method

.method selectBackground()V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090133
        }
    .end annotation

    const v0, 0x7f090133

    const-wide/16 v1, 0x3e8

    .line 416
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 417
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->clickBcak:Z

    if-eqz v0, :cond_b8

    .line 418
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    if-eqz v0, :cond_27

    .line 419
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 421
    :cond_27
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->hasCameraPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 422
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DialogHelperNew;->showPhotoDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3e

    return-void

    :cond_3e
    const v1, 0x7f09077e

    .line 426
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 427
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f090727

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 428
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 429
    new-instance v3, Lcom/keephealth/android/ui/device/fragment/CustomFragment$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$1;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v2, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$2;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$3;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c3

    .line 508
    :cond_76
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    new-instance v7, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    .line 508
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mDialog:Landroid/app/Dialog;

    goto :goto_c3

    .line 527
    :cond_b8
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->getRecommendDialDetail(II)V

    :cond_c3
    :goto_c3
    return-void
.end method

.method public sendDial()V
    .registers 5

    .line 1598
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1599
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1602
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bt_watch_save.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 1603
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAVersion:Ljava/lang/String;

    .line 1605
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    return-void
.end method

.method sendDialToDevice()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b3
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 561
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    .line 563
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 564
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 565
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 567
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 568
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_33

    .line 569
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_3d

    :cond_33
    const/4 v1, 0x0

    .line 571
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 572
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 576
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 577
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downLoadFile(Ljava/lang/String;)V

    goto :goto_6e

    .line 580
    :cond_55
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_6e

    :cond_68
    const v0, 0x7f100514

    .line 583
    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public sendFail()V
    .registers 5

    const/4 v0, 0x1

    .line 1518
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1519
    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    .line 1520
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z

    .line 1521
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1522
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1523
    sput-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1524
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1525
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1527
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->customAdapter:Lcom/keephealth/android/ui/device/adapter/CustomAdapter;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->notifyDataSetChanged()V

    .line 1528
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1529
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    :cond_42
    return-void
.end method
