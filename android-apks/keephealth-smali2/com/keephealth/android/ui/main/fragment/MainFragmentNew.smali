.class public Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
.super Lcom/keephealth/android/base/BaseMvpFragment;
.source "MainFragmentNew.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/MainFragmentContract$View;
.implements Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;
.implements Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;
.implements Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$ConnectionTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpFragment<",
        "Lcom/keephealth/android/persenter/main/MainFragmentPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/MainFragmentContract$View;",
        "Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;",
        "Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;",
        "Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final REQUEST_NOTICE_PERMISSION_CODE:I = 0x12

.field public static currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate; = null

.field public static currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo; = null

.field public static homeDestroy:I = 0x1

.field public static updateData:Z = false


# instance fields
.field BLUETOOTH_UUID:Ljava/util/UUID;

.field a:I

.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field public aliveActivity:Landroid/app/Activity;

.field private animation:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

.field barBgTitle:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090081
    .end annotation
.end field

.field private beginRefreshing:I

.field btnEdit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a3
    .end annotation
.end field

.field public calendar:Ljava/util/Calendar;

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private currentMedalIndex:I

.field private currentTime:Ljava/lang/Long;

.field dialog:Landroid/app/Dialog;

.field private emailIsVerifity:Z

.field enableBtIntent:Landroid/content/Intent;

.field private enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private faildCount:I

.field private familyUserType:I

.field private fromViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private gg:I

.field googleFitPresenter:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

.field private had_set:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field handler2:Landroid/os/Handler;

.field private headerView:Landroid/view/View;

.field helper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field hideLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b2
    .end annotation
.end field

.field private hideMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
            ">;"
        }
    .end annotation
.end field

.field img_add_device:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021f
    .end annotation
.end field

.field private inVisible:I

.field private isBackground:Z

.field private isCancel:Z

.field private isConnect:Ljava/lang/String;

.field private isFirst:I

.field isPairSuccess:Z

.field lin_add_device:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09032d
    .end annotation
.end field

.field lin_all_main:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09032e
    .end annotation
.end field

.field lin_keep_health1:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090339
    .end annotation
.end field

.field private mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

.field private mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

.field private mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field private mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private mDialog:Landroid/app/Dialog;

.field private final mFindBlueToothReceiver:Landroid/content/BroadcastReceiver;

.field mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903de
    .end annotation
.end field

.field mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903df
    .end annotation
.end field

.field mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a6
    .end annotation
.end field

.field private mUpdateDialog:Landroid/app/Dialog;

.field private mWeight:I

.field private mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

.field main_scrollview:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e8
    .end annotation
.end field

.field private medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

.field private medalDialog:Landroid/app/Dialog;

.field private nowProgress:I

.field public onClickClose1:I

.field public onClickClose2:I

.field private onClickboolClose1:Z

.field private onResumes:I

.field private onStart:I

.field private onViesibles:I

.field permissionsBluetooth_connect:[Ljava/lang/String;

.field private permissionsLocation:[Ljava/lang/String;

.field private progressIndex:I

.field progressRun:Ljava/lang/Runnable;

.field refreshTimeout:Ljava/lang/Runnable;

.field private refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

.field rela_go_verify2:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b3
    .end annotation
.end field

.field private showMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
            ">;"
        }
    .end annotation
.end field

.field socket:Landroid/bluetooth/BluetoothSocket;

.field public sportBackground:Lcom/keephealth/android/greendao/bean/HealthSport;

.field private sportDataPie:Lcom/keephealth/android/views/SportPieView;

.field timeoutRun:Ljava/lang/Runnable;

.field private timeoutT:I

.field private toViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private token_home:Ljava/lang/String;

.field private translateY:I

.field private tvDisValue:Landroid/widget/TextView;

.field private tvKcalValue:Landroid/widget/TextView;

.field private tvTagUnitDis:Landroid/widget/TextView;

.field tv_deviceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090733
    .end annotation
.end field

.field tv_go_yanz2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090741
    .end annotation
.end field

.field userBean:Lcom/keephealth/android/model/bean/UserBean;

.field viewFliper:Landroid/widget/ViewFlipper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907b8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 232
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpFragment;-><init>()V

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    .line 549
    new-instance v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mFindBlueToothReceiver:Landroid/content/BroadcastReceiver;

    .line 633
    const-string v0, "00006666-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->BLUETOOTH_UUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->socket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x0

    .line 885
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->a:I

    .line 1129
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->gg:I

    const/4 v2, 0x2

    .line 1575
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v1

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsLocation:[Ljava/lang/String;

    .line 1935
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    aput-object v3, v2, v1

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    .line 2312
    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$6;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshTimeout:Ljava/lang/Runnable;

    .line 2397
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    .line 2398
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    .line 2400
    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutRun:Ljava/lang/Runnable;

    .line 2412
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I

    .line 2413
    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$8;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    .line 2763
    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler2:Landroid/os/Handler;

    .line 3578
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$12;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->helper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 3891
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentMedalIndex:I

    .line 3894
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->animation:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    .line 3950
    iput-boolean v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isBackground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;[B)I
    .registers 2

    .line 232
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handlerPower([B)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 1

    .line 232
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->initBlueTooth()V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I
    .registers 1

    .line 232
    iget p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->nowProgress:I

    return p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)V
    .registers 2

    .line 232
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->yzmui(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->token_home:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Z
    .registers 1

    .line 232
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickboolClose1:Z

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Lcom/keephealth/android/model/bean/BLEDevice;)V
    .registers 2

    .line 232
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setIconDevice(Lcom/keephealth/android/model/bean/BLEDevice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->fromViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->fromViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->toViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->toViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I
    .registers 1

    .line 232
    iget p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)I
    .registers 2

    .line 232
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    return p1
.end method

.method static synthetic access$808(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I
    .registers 3

    .line 232
    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    return v0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I
    .registers 1

    .line 232
    iget p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)I
    .registers 2

    .line 232
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I

    return p1
.end method

.method static synthetic access$908(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I
    .registers 3

    .line 232
    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I

    return v0
.end method

.method private checkMedal()V
    .registers 27

    move-object/from16 v0, p0

    .line 3636
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->calendar:Ljava/util/Calendar;

    .line 3637
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMedalDataDao()Lcom/keephealth/android/greendao/gen/MedalDataDao;

    move-result-object v1

    .line 3638
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/MedalDataDao$Properties;->Achieve:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/MedalDataDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4c8

    .line 3639
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4c8

    .line 3640
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    .line 3641
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v6

    .line 3642
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v7

    .line 3643
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3644
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 3645
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    long-to-int v10, v10

    const v13, 0x2dc6c0

    const v14, 0x493e0

    const/16 v15, 0xbb8

    const v16, 0xf4240

    const v17, 0xc350

    const/4 v11, 0x0

    const/16 v18, 0x1388

    const/16 v19, 0x4e20

    const v20, 0x186a0

    const/16 v12, 0x2710

    packed-switch v10, :pswitch_data_4ca

    goto :goto_59

    .line 3861
    :pswitch_86
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x2a

    cmp-long v10, v10, v13

    if-nez v10, :cond_93

    move/from16 v17, v18

    goto :goto_c8

    .line 3863
    :cond_93
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x2b

    cmp-long v10, v10, v13

    if-nez v10, :cond_a0

    move/from16 v17, v12

    goto :goto_c8

    .line 3865
    :cond_a0
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x2c

    cmp-long v10, v10, v12

    if-nez v10, :cond_ab

    goto :goto_c8

    .line 3867
    :cond_ab
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x2d

    cmp-long v10, v10, v12

    if-nez v10, :cond_b9

    const v17, 0x13880

    goto :goto_c8

    .line 3869
    :cond_b9
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x2e

    cmp-long v10, v10, v12

    if-nez v10, :cond_c6

    move/from16 v17, v20

    goto :goto_c8

    :cond_c6
    move/from16 v17, v4

    .line 3872
    :goto_c8
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Distance:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v12, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v10, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    new-array v11, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v4

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_59

    .line 3873
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 3874
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3875
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3876
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 3835
    :pswitch_114
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x24

    cmp-long v10, v10, v13

    if-nez v10, :cond_11f

    goto :goto_161

    .line 3837
    :cond_11f
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x25

    cmp-long v10, v10, v13

    if-nez v10, :cond_12c

    move/from16 v15, v18

    goto :goto_161

    .line 3839
    :cond_12c
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x26

    cmp-long v10, v10, v13

    if-nez v10, :cond_138

    move v15, v12

    goto :goto_161

    .line 3841
    :cond_138
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x27

    cmp-long v10, v10, v12

    if-nez v10, :cond_145

    const/16 v15, 0x5269

    goto :goto_161

    .line 3843
    :cond_145
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x28

    cmp-long v10, v10, v12

    if-nez v10, :cond_153

    const v15, 0xa4d3

    goto :goto_161

    .line 3845
    :cond_153
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x29

    cmp-long v10, v10, v12

    if-nez v10, :cond_160

    move/from16 v15, v20

    goto :goto_161

    :cond_160
    move v15, v4

    .line 3848
    :goto_161
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Distance:Lorg/greenrobot/greendao/Property;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v12, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v10, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    new-array v11, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v4

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_59

    .line 3849
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 3850
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3851
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3852
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 3794
    :pswitch_1ac
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v22

    const-wide/16 v24, 0x1a

    cmp-long v10, v22, v24

    if-nez v10, :cond_1ba

    move/from16 v10, v19

    goto/16 :goto_233

    .line 3796
    :cond_1ba
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v22, 0x1b

    cmp-long v10, v18, v22

    if-nez v10, :cond_1c8

    move/from16 v10, v17

    goto/16 :goto_233

    .line 3798
    :cond_1c8
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v22, 0x1c

    cmp-long v10, v18, v22

    if-nez v10, :cond_1d5

    move/from16 v10, v20

    goto :goto_233

    .line 3800
    :cond_1d5
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v22, 0x1d

    cmp-long v10, v18, v22

    if-nez v10, :cond_1e1

    move v10, v14

    goto :goto_233

    .line 3802
    :cond_1e1
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v18, 0x1e

    cmp-long v10, v14, v18

    if-nez v10, :cond_1ef

    const v10, 0x7a120

    goto :goto_233

    .line 3804
    :cond_1ef
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v18, 0x1f

    cmp-long v10, v14, v18

    if-nez v10, :cond_1fc

    move/from16 v10, v16

    goto :goto_233

    .line 3806
    :cond_1fc
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v16, 0x20

    cmp-long v10, v14, v16

    if-nez v10, :cond_20a

    const v10, 0x1e8480

    goto :goto_233

    .line 3808
    :cond_20a
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v16, 0x21

    cmp-long v10, v14, v16

    if-nez v10, :cond_216

    move v10, v13

    goto :goto_233

    .line 3810
    :cond_216
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x22

    cmp-long v10, v12, v14

    if-nez v10, :cond_224

    const v10, 0x3d0900

    goto :goto_233

    .line 3812
    :cond_224
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x23

    cmp-long v10, v12, v14

    if-nez v10, :cond_232

    const v10, 0x4c4b40

    goto :goto_233

    :cond_232
    move v10, v4

    .line 3815
    :goto_233
    const-string v12, "select SUM(Distance) FROM HEALTH_ACTIVITY WHERE Type = 1"

    .line 3817
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v13

    invoke-interface {v13, v12, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3818
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_258

    .line 3819
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lt v12, v10, :cond_258

    .line 3821
    iget-object v10, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3822
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3823
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3826
    :cond_258
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_59

    .line 3765
    :pswitch_25d
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x15

    cmp-long v10, v10, v13

    if-nez v10, :cond_26a

    const/16 v15, 0x3e8

    goto :goto_29c

    .line 3767
    :cond_26a
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x16

    cmp-long v10, v10, v13

    if-nez v10, :cond_275

    goto :goto_29c

    .line 3769
    :cond_275
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x17

    cmp-long v10, v10, v13

    if-nez v10, :cond_282

    move/from16 v15, v18

    goto :goto_29c

    .line 3771
    :cond_282
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x18

    cmp-long v10, v10, v13

    if-nez v10, :cond_28e

    move v15, v12

    goto :goto_29c

    .line 3773
    :cond_28e
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x19

    cmp-long v10, v10, v12

    if-nez v10, :cond_29b

    move/from16 v15, v19

    goto :goto_29c

    :cond_29b
    move v15, v4

    .line 3776
    :goto_29c
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Distance:Lorg/greenrobot/greendao/Property;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v12, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v10, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    new-array v11, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v4

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_59

    .line 3777
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 3778
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3779
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3780
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 3733
    :pswitch_2e7
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0xf

    cmp-long v10, v12, v14

    if-nez v10, :cond_2f4

    move/from16 v12, v19

    goto :goto_338

    .line 3735
    :cond_2f4
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x10

    cmp-long v10, v12, v14

    if-nez v10, :cond_301

    move/from16 v12, v17

    goto :goto_338

    .line 3737
    :cond_301
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x11

    cmp-long v10, v12, v14

    if-nez v10, :cond_30e

    move/from16 v12, v20

    goto :goto_338

    .line 3739
    :cond_30e
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x12

    cmp-long v10, v12, v14

    if-nez v10, :cond_31c

    const v12, 0x30d40

    goto :goto_338

    .line 3741
    :cond_31c
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x13

    cmp-long v10, v12, v14

    if-nez v10, :cond_32a

    const v12, 0x7a120

    goto :goto_338

    .line 3743
    :cond_32a
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x14

    cmp-long v10, v12, v14

    if-nez v10, :cond_337

    move/from16 v12, v16

    goto :goto_338

    :cond_337
    move v12, v4

    .line 3746
    :goto_338
    const-string v10, "select SUM(Distance) FROM HEALTH_ACTIVITY WHERE Type = 0"

    .line 3748
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v13

    invoke-interface {v13, v10, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3749
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_35d

    .line 3750
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lt v11, v12, :cond_35d

    .line 3752
    iget-object v11, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3753
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3754
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3757
    :cond_35d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_59

    .line 3696
    :pswitch_362
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v21, 0x7

    cmp-long v10, v18, v21

    if-nez v10, :cond_36e

    move v10, v12

    goto :goto_3cb

    .line 3698
    :cond_36e
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v21, 0x8

    cmp-long v10, v18, v21

    if-nez v10, :cond_37b

    move/from16 v10, v20

    goto :goto_3cb

    .line 3700
    :cond_37b
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v20, 0x9

    cmp-long v10, v18, v20

    if-nez v10, :cond_387

    move v10, v14

    goto :goto_3cb

    .line 3702
    :cond_387
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v18, 0xa

    cmp-long v10, v14, v18

    if-nez v10, :cond_394

    move/from16 v10, v16

    goto :goto_3cb

    .line 3704
    :cond_394
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v16, 0xb

    cmp-long v10, v14, v16

    if-nez v10, :cond_3a0

    move v10, v13

    goto :goto_3cb

    .line 3706
    :cond_3a0
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0xc

    cmp-long v10, v12, v14

    if-nez v10, :cond_3ae

    const v10, 0x4c4b40

    goto :goto_3cb

    .line 3708
    :cond_3ae
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0xd

    cmp-long v10, v12, v14

    if-nez v10, :cond_3bc

    const v10, 0x989680

    goto :goto_3cb

    .line 3710
    :cond_3bc
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0xe

    cmp-long v10, v12, v14

    if-nez v10, :cond_3ca

    const v10, 0xe4e1c0

    goto :goto_3cb

    :cond_3ca
    move v10, v4

    .line 3713
    :goto_3cb
    const-string v12, "select SUM(TOTAL_STEP_COUNT) FROM HEALTH_SPORT"

    .line 3714
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v13

    invoke-interface {v13, v12, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3715
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3f0

    .line 3716
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lt v12, v10, :cond_3f0

    .line 3718
    iget-object v10, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3719
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3720
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3724
    :cond_3f0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_59

    .line 3662
    :pswitch_3f5
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    new-array v11, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v13, v11, v4

    .line 3663
    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v10

    .line 3665
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v13

    const-wide/16 v15, 0x5

    cmp-long v11, v13, v15

    if-nez v11, :cond_417

    const/4 v11, 0x7

    goto :goto_425

    .line 3667
    :cond_417
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v13

    const-wide/16 v15, 0x6

    cmp-long v11, v13, v15

    if-nez v11, :cond_424

    const/16 v11, 0x15

    goto :goto_425

    :cond_424
    move v11, v4

    :goto_425
    if-eqz v10, :cond_59

    .line 3670
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lt v13, v11, :cond_59

    .line 3672
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_431
    move v13, v4

    :cond_432
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_59

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 3673
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v15

    if-lt v15, v12, :cond_431

    add-int/2addr v13, v3

    if-ne v13, v11, :cond_432

    .line 3676
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3677
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3678
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 3652
    :pswitch_456
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->TotalStepCount:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2710

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v12, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v10, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    new-array v11, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v4

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_59

    .line 3653
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 3654
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 3655
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 3656
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 3882
    :cond_49f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "achieveList.size()\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tftr5"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4c8

    .line 3884
    const-string v2, "showMedalDialog...."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    invoke-direct {v0, v8}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMedalDialog(Ljava/util/List;)V

    .line 3886
    invoke-virtual {v1, v8}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->updateInTx(Ljava/lang/Iterable;)V

    :cond_4c8
    return-void

    nop

    :pswitch_data_4ca
    .packed-switch 0x0
        :pswitch_456
        :pswitch_456
        :pswitch_456
        :pswitch_456
        :pswitch_456
        :pswitch_3f5
        :pswitch_3f5
        :pswitch_362
        :pswitch_362
        :pswitch_362
        :pswitch_362
        :pswitch_362
        :pswitch_362
        :pswitch_362
        :pswitch_362
        :pswitch_2e7
        :pswitch_2e7
        :pswitch_2e7
        :pswitch_2e7
        :pswitch_2e7
        :pswitch_2e7
        :pswitch_25d
        :pswitch_25d
        :pswitch_25d
        :pswitch_25d
        :pswitch_25d
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method private doDiscovery()V
    .registers 3

    .line 1183
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$5;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .registers 2

    .line 1479
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getAddDeviceStatus(I)V
    .registers 11

    .line 1308
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    const v0, 0x7f1001e7

    const/high16 v1, 0x7f0d0000

    const v2, 0x7f08005c

    if-eqz p1, :cond_1ca

    .line 1310
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1311
    iget-object v3, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const v4, 0x7f100330

    const v5, 0x7f100331

    const-string v6, "file:///android_asset/home_connecting.gif"

    const v7, 0x7f0d0064

    if-eqz v3, :cond_15b

    iget-object v3, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15b

    .line 1312
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const v1, 0x7f060043

    const/16 v3, 0x4d

    if-eqz v0, :cond_fb

    .line 1313
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1315
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v0, :cond_6c

    .line 1316
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    if-eqz v0, :cond_170

    .line 1318
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1319
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1320
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 1322
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 1323
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_170

    .line 1326
    :cond_6c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setIconDevice(Lcom/keephealth/android/model/bean/BLEDevice;)V

    .line 1329
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1330
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f060042

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1331
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1332
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 1333
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_170

    .line 1337
    :cond_af
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    if-eqz v0, :cond_170

    .line 1338
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1339
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1340
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1342
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1343
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 1346
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 1347
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_170

    .line 1354
    :cond_fb
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v0, :cond_128

    .line 1355
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    if-eqz v0, :cond_170

    .line 1357
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1358
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1359
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 1360
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 1361
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 1362
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_170

    .line 1366
    :cond_128
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1369
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1370
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1371
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1372
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_170

    .line 1376
    :cond_15b
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1377
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1378
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_170
    :goto_170
    const/4 v0, 0x0

    .line 1380
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCanAddDevice:Z

    .line 1381
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_209

    .line 1382
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v0, :cond_1aa

    .line 1383
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    if-eqz p1, :cond_209

    .line 1385
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1386
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1387
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 1388
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 1389
    invoke-virtual {p1, v6}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 1390
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_209

    .line 1394
    :cond_1aa
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    if-eqz v0, :cond_209

    .line 1395
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 1396
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_209

    .line 1398
    :cond_1bc
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_209

    .line 1405
    :cond_1ca
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1407
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCanAddDevice:Z

    .line 1408
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1410
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060063

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_209
    :goto_209
    return-void
.end method

.method private getHideMenuView()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
            ">;"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->IsShow:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Order:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getReflashData(I)V
    .registers 6

    .line 1217
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    .line 1218
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    goto/16 :goto_d2

    .line 1227
    :cond_1b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    .line 1228
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f100771

    goto :goto_38

    :cond_31
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f100774

    :goto_38
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    :cond_3f
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLookWeatherBack:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    .line 1231
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isLookWeatherBack:Z

    .line 1232
    sget v0, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    if-nez v0, :cond_5a

    .line 1233
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_5a

    .line 1235
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1236
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 1241
    :cond_5a
    sget-boolean v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateData:Z

    if-eqz v0, :cond_ae

    .line 1242
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1243
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_ab

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_ab

    .line 1244
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 1245
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1246
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d2

    .line 1247
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_d2

    .line 1266
    :cond_90
    sget v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    if-ne v0, v1, :cond_a8

    .line 1267
    sget v0, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    if-nez v0, :cond_a8

    .line 1268
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_a8

    .line 1270
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1271
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 1276
    :cond_a8
    sput-boolean v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateData:Z

    goto :goto_d2

    .line 1279
    :cond_ab
    sput-boolean v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateData:Z

    goto :goto_d2

    .line 1283
    :cond_ae
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1284
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_d2

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_d2

    .line 1285
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda46;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1293
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f7

    .line 1294
    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onResumes:I

    if-ne v0, v1, :cond_f4

    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onViesibles:I

    if-ne v0, v1, :cond_f4

    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->beginRefreshing:I

    if-ne v0, v1, :cond_f4

    .line 1295
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getAddDeviceStatus(I)V

    goto :goto_f7

    .line 1297
    :cond_f4
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getAddDeviceStatus2(I)V

    :cond_f7
    :goto_f7
    return-void
.end method

.method private getShowMenuView()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 835
    iget-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Order:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 836
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f2

    .line 837
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    sub-long v9, v8, v10

    const v11, 0x7f100573

    const/4 v12, 0x1

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 842
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x12c

    sub-long v16, v6, v8

    const v18, 0x7f100321

    const/16 v19, 0x3

    const/4 v15, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 846
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x190

    sub-long v9, v8, v10

    const v11, 0x7f1001e4

    const/4 v12, 0x4

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 848
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2bc

    sub-long v16, v6, v8

    const v18, 0x7f100749

    const/16 v19, 0x7

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 854
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x320

    sub-long v9, v8, v10

    const v11, 0x7f1007b0

    const/16 v12, 0x8

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 856
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x384

    sub-long v16, v6, v8

    const v18, 0x7f10074c

    const/16 v19, 0x9

    const/4 v15, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 858
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    sub-long v9, v8, v10

    const v11, 0x7f1002f0

    const/16 v12, 0xa

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 860
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v3, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 866
    :cond_f2
    iget-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->IsShow:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->Order:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getStepData()V
    .registers 9

    .line 1816
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 1817
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mWeight:I

    const/16 v2, 0x12d

    if-le v1, v2, :cond_33

    .line 1820
    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mWeight:I

    int-to-float v1, v1

    .line 1821
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 1822
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1823
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_37

    :cond_33
    mul-int/lit8 v1, v1, 0xa

    .line 1825
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mWeight:I

    .line 1827
    :goto_37
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    move-object v2, v1

    check-cast v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v4

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mWeight:I

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadCurrentStep(IIIII)V

    const/4 v0, 0x0

    .line 1829
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    :cond_54
    const/16 v0, 0x8

    .line 1831
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getAddDeviceStatus3(I)V

    return-void
.end method

.method private handlerPower([B)I
    .registers 8

    const/4 v0, 0x3

    .line 720
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 722
    aget-byte p1, p1, v0

    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 723
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 725
    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 727
    :cond_1a
    iput p1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "power: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7535\u6c60\u7535\u91cf"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlerPower: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x14

    if-ge p1, v1, :cond_8a

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "POWER_TIME"

    invoke-static {v3, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_8a

    .line 732
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f100143

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100611

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65d

    invoke-static {v1, v4, v2, v3}, Lcom/keephealth/android/util/notification/NotificationHelper;->sendNormalNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_8a
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bleName"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bleAddress"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 738
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 739
    iput-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 741
    :cond_a6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ae

    .line 742
    iput-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    :cond_ae
    const/16 v1, 0x27

    .line 744
    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    return p1
.end method

.method private initBlueTooth()V
    .registers 6

    .line 1133
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 1136
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u672c\u673a\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    .line 1140
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1141
    iput-boolean v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isPairSuccess:Z

    .line 1142
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_44

    .line 1143
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_22

    .line 1148
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    .line 1149
    iput-boolean v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isPairSuccess:Z

    goto :goto_22

    .line 1154
    :cond_44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u8fd8\u6ca1\u6709\u5df2\u914d\u5bf9\u7684\u8fdc\u7a0b\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 1157
    :cond_4c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u672c\u673a\u6ca1\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1159
    :cond_53
    :goto_53
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isPairSuccess:Z

    if-nez v0, :cond_e5

    .line 1161
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez v0, :cond_e5

    .line 1162
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isNeedPair()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 1163
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 1164
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 1165
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v2

    if-nez v2, :cond_80

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e5

    .line 1166
    :cond_80
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 1167
    iget-object v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_a6

    .line 1170
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1172
    :cond_a6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "main_createBond-QthreeUtils.isQ32Device()\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   bleDevice.getDeviceType():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hfgffr2"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u914d\u5bf9\u8fdb\u53bb55555:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_e5
    return-void
.end method

.method private initHeaderView()V
    .registers 9

    .line 756
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    const v1, 0x7f09058b

    .line 757
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/SportPieView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    const/4 v1, 0x1

    .line 758
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SportPieView;->setDrawingEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    const v2, 0x7f090677

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvKcalValue:Landroid/widget/TextView;

    .line 760
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    const v2, 0x7f090652

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvDisValue:Landroid/widget/TextView;

    .line 761
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    const v2, 0x7f0906eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    .line 762
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    const v2, 0x7f090517

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    const v2, 0x7f0904f3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    const v2, 0x7f0904e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda22;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvKcalValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 802
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvDisValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 803
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_1e0

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeUtil.timeStampDateNoHMS():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->timeStampDateNoHMS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n HOME_DATA_TIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 806
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "HOME_DATA_TIME"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    const-string v2, "rrded2"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u83b7\u53d6\u5b58\u50a8\u7684HOME_DATA_TIME:TimeUtil.timeStampDateNoHMS():"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->timeStampDateNoHMS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 807
    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/TimeUtil;->timeStampDateNoHMS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "HOME_DATA_CAL"

    const/4 v4, 0x0

    const-string v5, "HOME_DATA_DISTANCE"

    const-string v6, "HOME_DATA_STEP"

    if-eqz v0, :cond_1c7

    .line 810
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvKcalValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v3, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    .line 812
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v3

    if-nez v3, :cond_12f

    .line 813
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v0

    .line 815
    :cond_12f
    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvDisValue:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v3

    if-eqz v3, :cond_14d

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f100771

    goto :goto_154

    :cond_14d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f100774

    :goto_154
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v3, v3, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/SportPieView;->setSportGoal(I)V

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "goal:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v3, v3, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tftr5"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u83b7\u53d6\u5b58\u50a8\u7684HOME_DATA_STEP\u6b65\u6570:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v6, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v6, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    .line 821
    const-string v0, "11111"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e0

    .line 823
    :cond_1c7
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 824
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 825
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1e0
    :goto_1e0
    return-void
.end method

.method private isNotificationEnabled()Z
    .registers 3

    .line 1197
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1198
    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1200
    const-class v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initView$0(Landroidx/activity/result/ActivityResult;)V
    .registers 1

    .line 323
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    return-void
.end method

.method static synthetic lambda$initView$2(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$linAddDevice$28(Landroid/view/View;)V
    .registers 1

    const/4 p0, 0x0

    .line 1950
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method static synthetic lambda$linAddDevice$33(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 1995
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1996
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$linAddDevice$35(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 2015
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 2016
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$linAddDevice$37(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 2035
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 2036
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$linAddDevice$39(Landroid/content/DialogInterface;I)V
    .registers 2

    const/4 p1, 0x0

    .line 2077
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 2078
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onResume$14(Landroid/view/View;)V
    .registers 1

    const/4 p0, 0x0

    .line 1629
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method static synthetic lambda$onResume$19(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1677
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p0, 0x0

    .line 1678
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method static synthetic lambda$onResume$21(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1697
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p0, 0x0

    .line 1698
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method static synthetic lambda$onResume$23(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1717
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p0, 0x0

    .line 1718
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method static synthetic lambda$onResume$25(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1763
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p0, 0x0

    .line 1764
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method static synthetic lambda$setUserInfo$46(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$setUserInfo$48(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private setDeviceImaSize()V
    .registers 4

    .line 1473
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1474
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1475
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1476
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setIconDevice(Lcom/keephealth/android/model/bean/BLEDevice;)V
    .registers 3

    .line 1466
    invoke-static {}, Lcom/keephealth/android/util/ServiceConfigurationUtils;->isHaveScreen()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1467
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    const v0, 0x7f0d00c1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_17

    .line 1469
    :cond_f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    const v0, 0x7f0d032f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_17
    return-void
.end method

.method private setViriAndSet()V
    .registers 4

    .line 1208
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "had_set"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;

    .line 1209
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "bing_time"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTime:Ljava/lang/Long;

    .line 1210
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "familyUserType"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->familyUserType:I

    .line 1211
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->token_home:Ljava/lang/String;

    .line 1212
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "onClickClose1"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickboolClose1:Z

    .line 1213
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler2:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private showMedalDialog(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/MedalData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3897
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentMedalIndex:I

    .line 3898
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    .line 3899
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_16

    .line 3901
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3903
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 3904
    new-instance v5, Lcom/keephealth/android/model/bean/MedalResult;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v6

    long-to-int v6, v6

    sget-object v7, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalAchieveTime()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7, v8}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/keephealth/android/model/bean/MedalResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3906
    :cond_43
    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setMedals(Ljava/util/List;)V

    .line 3907
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateUser(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 3908
    iget v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentMedalIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 3909
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    if-nez v1, :cond_69

    .line 3910
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f110119

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    .line 3912
    :cond_69
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00df

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090205

    .line 3913
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09020f

    .line 3914
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0901ff

    .line 3915
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    const v4, 0x7f090797

    .line 3916
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    const v4, 0x7f090798

    .line 3917
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/TextView;

    const v4, 0x7f0900bb

    .line 3918
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/Button;

    const/16 v4, 0x14

    .line 3919
    invoke-static {v2, v4, v4, v4, v4}, Lcom/keephealth/android/util/ViewUtil;->addDefaultScreenArea(Landroid/view/View;IIII)V

    .line 3920
    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3921
    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, v3

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Ljava/util/List;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3932
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleAchieveRes()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3933
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTitle()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3934
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTips()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f030003

    const/16 v2, 0x28

    .line 3935
    invoke-static {p1, v2}, Lcom/keephealth/android/util/AnimationsContainer;->getInstance(II)Lcom/keephealth/android/util/AnimationsContainer;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/keephealth/android/util/AnimationsContainer;->createProgressDialogAnim(Landroid/widget/ImageView;)Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->animation:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    .line 3936
    invoke-virtual {p1}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->start()V

    .line 3937
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3938
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3939
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3940
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3941
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3942
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3943
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3944
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3945
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showScanDialog()V
    .registers 7

    .line 3512
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_12

    .line 3513
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f110310

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    .line 3515
    :cond_12
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906fc

    .line 3516
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3517
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1001c9

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0906e4

    .line 3518
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda35;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3522
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3523
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3524
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3525
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3526
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3527
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3528
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3529
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private yzmui(I)V
    .registers 11

    .line 2830
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 2831
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_21a

    .line 2833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/32 v7, 0x93a80

    cmp-long v0, v5, v7

    if-lez v0, :cond_132

    .line 2835
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz v0, :cond_122

    .line 2838
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v0

    if-nez v0, :cond_e6

    if-ne p1, v2, :cond_91

    .line 2842
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    if-nez p1, :cond_73

    .line 2844
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_47

    .line 2845
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2847
    :cond_47
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4e

    .line 2848
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2850
    :cond_4e
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->familyUserType:I

    if-eq p1, v2, :cond_61

    .line 2851
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_59

    .line 2852
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2854
    :cond_59
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_68

    .line 2855
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_68

    .line 2858
    :cond_61
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_68

    .line 2859
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2862
    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3a3

    .line 2863
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    :cond_73
    if-ne p1, v2, :cond_3a3

    .line 2867
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_7c

    .line 2868
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2870
    :cond_7c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_83

    .line 2871
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2873
    :cond_83
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 2874
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2875
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    :cond_91
    if-ne p1, v1, :cond_3a3

    .line 2881
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose1:I

    if-ne p1, v2, :cond_b3

    .line 2882
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_a3

    .line 2883
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2884
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 2886
    :cond_a3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_aa

    .line 2887
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2889
    :cond_aa
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3a3

    .line 2890
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3a3

    :cond_b3
    if-nez p1, :cond_3a3

    .line 2893
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_bc

    .line 2894
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2896
    :cond_bc
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->familyUserType:I

    if-eq p1, v2, :cond_cf

    .line 2897
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_c7

    .line 2898
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2900
    :cond_c7
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_dd

    .line 2901
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_dd

    .line 2904
    :cond_cf
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_d6

    .line 2905
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2907
    :cond_d6
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_dd

    .line 2908
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 2911
    :cond_dd
    :goto_dd
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3a3

    .line 2912
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3a3

    :cond_e6
    if-ne p1, v2, :cond_104

    .line 2923
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_ef

    .line 2924
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2926
    :cond_ef
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_f6

    .line 2927
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2929
    :cond_f6
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 2930
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2931
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    :cond_104
    if-ne p1, v1, :cond_3a3

    .line 2935
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10d

    .line 2936
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2938
    :cond_10d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_114

    .line 2939
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2941
    :cond_114
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 2942
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2943
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    .line 2950
    :cond_122
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_129

    .line 2951
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2953
    :cond_129
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3a3

    .line 2954
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3a3

    .line 2959
    :cond_132
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_139

    .line 2960
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_139
    if-ne p1, v2, :cond_14b

    .line 2964
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_142

    .line 2965
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2967
    :cond_142
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_211

    .line 2968
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto/16 :goto_211

    :cond_14b
    if-ne p1, v1, :cond_211

    .line 2972
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose1:I

    if-nez p1, :cond_201

    .line 2974
    iget-boolean p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickboolClose1:Z

    if-eqz p1, :cond_18a

    .line 2975
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    if-ne p1, v2, :cond_16e

    .line 2976
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_160

    .line 2977
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2979
    :cond_160
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_211

    .line 2980
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2981
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_211

    .line 2984
    :cond_16e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_175

    .line 2985
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2987
    :cond_175
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_17c

    .line 2988
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2990
    :cond_17c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_211

    .line 2991
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2992
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_211

    .line 2996
    :cond_18a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz p1, :cond_1c7

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result p1

    if-eqz p1, :cond_1c7

    .line 2998
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    if-ne p1, v2, :cond_1b3

    .line 2999
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_19f

    .line 3000
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3002
    :cond_19f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1a6

    .line 3003
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3005
    :cond_1a6
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_211

    .line 3006
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3007
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_211

    .line 3010
    :cond_1b3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1ba

    .line 3011
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3013
    :cond_1ba
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_211

    .line 3014
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3015
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_211

    .line 3020
    :cond_1c7
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    if-ne p1, v2, :cond_1e6

    .line 3021
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1d2

    .line 3022
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3024
    :cond_1d2
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1d9

    .line 3025
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3027
    :cond_1d9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_211

    .line 3028
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3029
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_211

    .line 3032
    :cond_1e6
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1ed

    .line 3033
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3035
    :cond_1ed
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1f4

    .line 3036
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3038
    :cond_1f4
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_211

    .line 3039
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3040
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    goto :goto_211

    :cond_201
    if-ne p1, v2, :cond_211

    .line 3048
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_20a

    .line 3049
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3051
    :cond_20a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_211

    .line 3052
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3056
    :cond_211
    :goto_211
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3057
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    .line 3062
    :cond_21a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v0

    if-nez v0, :cond_34c

    if-ne p1, v2, :cond_277

    .line 3066
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    if-nez p1, :cond_259

    .line 3067
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_22f

    .line 3068
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3071
    :cond_22f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_236

    .line 3072
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3074
    :cond_236
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->familyUserType:I

    if-eq p1, v2, :cond_249

    .line 3075
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_241

    .line 3076
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3078
    :cond_241
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_250

    .line 3079
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_250

    .line 3082
    :cond_249
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_250

    .line 3083
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3086
    :cond_250
    :goto_250
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3087
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    :cond_259
    if-ne p1, v2, :cond_3a3

    .line 3091
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_262

    .line 3092
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3094
    :cond_262
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_269

    .line 3095
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3097
    :cond_269
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3098
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3099
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    :cond_277
    if-ne p1, v1, :cond_3a3

    .line 3105
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose1:I

    if-nez p1, :cond_2df

    .line 3106
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    if-nez p1, :cond_2c8

    .line 3108
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_288

    .line 3109
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3111
    :cond_288
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->familyUserType:I

    if-eq p1, v2, :cond_2a3

    .line 3112
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_293

    .line 3113
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3115
    :cond_293
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_29a

    .line 3116
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 3118
    :cond_29a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3a3

    .line 3119
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3a3

    .line 3122
    :cond_2a3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2aa

    .line 3123
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3125
    :cond_2aa
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;

    if-eqz p1, :cond_2bf

    const-string v0, "had_set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2bf

    .line 3126
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3a3

    .line 3127
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3a3

    .line 3130
    :cond_2bf
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3131
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    goto/16 :goto_3a3

    :cond_2c8
    if-ne p1, v2, :cond_3a3

    .line 3138
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2d1

    .line 3139
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3141
    :cond_2d1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3142
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3143
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_3a3

    :cond_2df
    if-ne p1, v2, :cond_3a3

    .line 3147
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    if-nez p1, :cond_307

    .line 3150
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->familyUserType:I

    if-eq p1, v2, :cond_2f8

    .line 3151
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2f0

    .line 3152
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3154
    :cond_2f0
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_33d

    .line 3155
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_33d

    .line 3158
    :cond_2f8
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2ff

    .line 3159
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3161
    :cond_2ff
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_33d

    .line 3162
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_33d

    :cond_307
    if-ne p1, v2, :cond_33d

    .line 3168
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isLoginOut:Z

    if-eqz p1, :cond_32f

    .line 3169
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->familyUserType:I

    if-eq p1, v2, :cond_320

    .line 3170
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_318

    .line 3171
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3173
    :cond_318
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_33d

    .line 3174
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_33d

    .line 3177
    :cond_320
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_327

    .line 3178
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3180
    :cond_327
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_33d

    .line 3181
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_33d

    .line 3186
    :cond_32f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_336

    .line 3187
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3189
    :cond_336
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_33d

    .line 3190
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3194
    :cond_33d
    :goto_33d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_344

    .line 3195
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 3197
    :cond_344
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3a3

    .line 3198
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3a3

    :cond_34c
    if-ne p1, v2, :cond_369

    .line 3208
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_355

    .line 3209
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3211
    :cond_355
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_35c

    .line 3212
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3214
    :cond_35c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3215
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3216
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_3a3

    :cond_369
    if-ne p1, v1, :cond_3a3

    .line 3220
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_372

    .line 3221
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 3223
    :cond_372
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose1:I

    if-nez p1, :cond_38c

    .line 3224
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_37d

    .line 3225
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3227
    :cond_37d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_384

    .line 3228
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3230
    :cond_384
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3231
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_3a3

    :cond_38c
    if-ne p1, v2, :cond_3a3

    .line 3234
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_395

    .line 3235
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3237
    :cond_395
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_39c

    .line 3238
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3240
    :cond_39c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3a3

    .line 3241
    invoke-virtual {p1, v4}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 3249
    :cond_3a3
    :goto_3a3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz p1, :cond_3fa

    .line 3251
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3cc

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result p1

    if-nez p1, :cond_3cc

    .line 3253
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_go_yanz2:Landroid/widget/TextView;

    if-eqz p1, :cond_3fa

    .line 3254
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10074e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3fa

    .line 3256
    :cond_3cc
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3fa

    .line 3257
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result p1

    if-nez p1, :cond_3f3

    .line 3259
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_go_yanz2:Landroid/widget/TextView;

    if-eqz p1, :cond_3fa

    .line 3260
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100752

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3fa

    .line 3263
    :cond_3f3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3fa

    .line 3264
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3fa
    :goto_3fa
    return-void
.end method


# virtual methods
.method public bleTimeout(I)V
    .registers 4

    .line 3431
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/app/AppApplication;->isSysndata:Z

    .line 3432
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    .line 3433
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    .line 3434
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 3435
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 3436
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 3437
    sput v0, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 3438
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    const/16 p1, 0x64

    .line 3439
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->nowProgress:I

    .line 3440
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 3441
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100171

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    .line 3442
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 3444
    :cond_43
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_4c

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 3445
    :cond_4c
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 3446
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 3447
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->faildCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->faildCount:I

    .line 3448
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$11;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {p1, v1}, Lcom/keephealth/android/app/AppApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3485
    :try_start_67
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->aliveActivity:Landroid/app/Activity;

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_82

    .line 3486
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showEcg()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_82} :catch_82

    .line 3491
    :catch_82
    :cond_82
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->faildCount:I

    const/4 v1, 0x2

    if-lt p1, v1, :cond_91

    .line 3492
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->faildCount:I

    .line 3493
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a2

    .line 3494
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_a2

    .line 3498
    :cond_91
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_a2

    .line 3500
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 3501
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method public cleanHistoryData()V
    .registers 4

    const/4 v0, 0x0

    .line 3543
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateSportVaule(Lcom/keephealth/android/greendao/bean/HealthSport;)V

    .line 3544
    sput-object v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 3545
    sput-object v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 3546
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "heartValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3547
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method public clearSocket()V
    .registers 3

    .line 1806
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_f

    .line 1808
    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    .line 1810
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    :goto_f
    return-void
.end method

.method public connect(I)V
    .registers 8

    .line 3303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tty5rt"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 3305
    iput-boolean v2, v0, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->isReconnected:Z

    .line 3307
    :cond_1b
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 3309
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3310
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2e

    .line 3311
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3313
    :cond_2e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_3e

    .line 3314
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 3316
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    :cond_3e
    const/16 p1, 0x15

    .line 3320
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getAddDeviceStatus2(I)V

    goto/16 :goto_c5

    :cond_45
    const/4 v0, 0x0

    .line 3322
    sput-boolean v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateData:Z

    .line 3324
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_bc

    .line 3325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DiscoverServiceUtils.discoverService():"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 3327
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "isRefresh"

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3328
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isRefresh:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/16 v5, 0x8

    if-ne p1, v4, :cond_8f

    .line 3330
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, v5}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    goto :goto_bc

    :cond_8f
    const/4 v4, 0x6

    if-ne p1, v4, :cond_98

    .line 3333
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, v5}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    goto :goto_bc

    :cond_98
    if-nez v0, :cond_bc

    .line 3336
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3339
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppApplication.isReadNotiOpen:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, v5}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 3349
    :cond_bc
    :goto_bc
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    if-eqz p1, :cond_c5

    const/16 p1, 0x16

    .line 3350
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getAddDeviceStatus2(I)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public connectToAudio(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    return-void
.end method

.method editMainMenu()V
    .registers 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a3
        }
    .end annotation

    .line 1890
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1891
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    goto/16 :goto_128

    .line 1893
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_78

    .line 1894
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getHideMenuView()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    .line 1895
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 1896
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setData(Ljava/util/List;)V

    .line 1898
    :cond_3d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1899
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1900
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f060163

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1901
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1902
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f1002fd

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setEdit(Z)V

    goto/16 :goto_128

    .line 1905
    :cond_78
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1906
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1907
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v4, 0x7f10038c

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1908
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1909
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v5, 0x7f060113

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1910
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setEdit(Z)V

    .line 1913
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e8

    move v0, v3

    .line 1914
    :goto_c7
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e8

    .line 1915
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setOrder(I)V

    .line 1916
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 1919
    :cond_e8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_112

    move v0, v3

    .line 1920
    :goto_f1
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_112

    .line 1921
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setOrder(I)V

    .line 1922
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    .line 1925
    :cond_112
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 1926
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1927
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1929
    :try_start_123
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx(Ljava/lang/Iterable;)V
    :try_end_128
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_123 .. :try_end_128} :catch_128

    :catch_128
    :goto_128
    return-void
.end method

.method public getAddDeviceStatus2(I)V
    .registers 8

    .line 1484
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    if-nez v0, :cond_12

    goto/16 :goto_12f

    .line 1487
    :cond_12
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const v1, 0x7f0d0064

    .line 1489
    :try_start_19
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const v3, 0x7f060043

    const v4, 0x7f08005c

    const/16 v5, 0x4d

    if-eqz v2, :cond_bf

    .line 1491
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 1493
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setIconDevice(Lcom/keephealth/android/model/bean/BLEDevice;)V

    .line 1494
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1495
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f060042

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1496
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1497
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 1498
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1500
    :cond_69
    sget v2, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ea

    .line 1501
    sget v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    if-ne v2, v3, :cond_8d

    .line 1502
    sget v2, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    if-nez v2, :cond_8d

    .line 1503
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->enable_notication:Z

    if-eqz v2, :cond_8d

    .line 1504
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v2, :cond_8d

    .line 1506
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v2, 0x5

    if-eq p1, v2, :cond_8d

    .line 1508
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    :cond_8d
    const/4 p1, 0x0

    .line 1515
    sput p1, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    goto :goto_ea

    .line 1520
    :cond_91
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    const/high16 v2, 0x7f0d0000

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1521
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1522
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1523
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1524
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_ea

    .line 1529
    :cond_bf
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1530
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1531
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1532
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1533
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_ea} :catch_ea

    :catch_ea
    :cond_ea
    :goto_ea
    if-eqz v0, :cond_12f

    .line 1539
    iget-object p1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12f

    .line 1540
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz p1, :cond_128

    .line 1541
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f100331

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    if-eqz p1, :cond_12f

    .line 1543
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1544
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1545
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 1546
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const-string v0, "file:///android_asset/home_connecting.gif"

    .line 1547
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 1548
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_12f

    .line 1553
    :cond_128
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12f
    :goto_12f
    return-void
.end method

.method public getAddDeviceStatus3(I)V
    .registers 4

    .line 1417
    :try_start_0
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    if-eqz p1, :cond_95

    .line 1419
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 1421
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 1422
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_95

    .line 1423
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v0, :cond_4f

    .line 1424
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100331

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    if-eqz p1, :cond_95

    .line 1426
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 1427
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    const v0, 0x7f0d0064

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1428
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 1429
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const-string v0, "file:///android_asset/home_connecting.gif"

    .line 1430
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 1431
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_95

    .line 1435
    :cond_4f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setIconDevice(Lcom/keephealth/android/model/bean/BLEDevice;)V

    .line 1438
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08005c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1439
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060042

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1440
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1441
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 1442
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_95

    .line 1453
    :catch_95
    :cond_95
    :goto_95
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->fromWeltoHome:Z

    if-eqz p1, :cond_ad

    const/4 p1, 0x0

    .line 1454
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->fromWeltoHome:Z

    .line 1455
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_ad

    .line 1456
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 1458
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    :cond_ad
    return-void
.end method

.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c0106

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 3953
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 3954
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x3f8

    if-eq v0, v1, :cond_44

    const/16 p1, 0x3f9

    if-eq v0, p1, :cond_24

    const/16 p1, 0x405

    if-eq v0, p1, :cond_20

    const/16 p1, 0x408

    if-eq v0, p1, :cond_18

    goto :goto_53

    .line 3981
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_53

    .line 3982
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    goto :goto_53

    .line 3972
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requestSuccess()V

    goto :goto_53

    .line 3962
    :cond_24
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 3963
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "USER_TOKEN"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 3964
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    goto :goto_53

    .line 3956
    :cond_44
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryBean;

    if-eqz p1, :cond_53

    .line 3957
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_53
    :goto_53
    return-void
.end method

.method img_close2()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090352
        }
    .end annotation

    .line 1851
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bing_time"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    .line 1852
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose2:I

    .line 1853
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setViriAndSet()V

    return-void
.end method

.method protected initView()V
    .registers 9

    .line 294
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initView()V

    const/4 v0, 0x0

    .line 295
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 296
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    .line 300
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    .line 301
    sput v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    .line 302
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    .line 303
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "googlefit"

    invoke-static {v2, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_5c

    .line 305
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/NetworkUtil;->checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 306
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 307
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->googleFitPresenter:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    .line 308
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->setActivity(Landroid/app/Activity;)V

    goto :goto_5c

    .line 310
    :cond_52
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance(Landroid/app/Activity;)Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->googleFitPresenter:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    .line 313
    :cond_5c
    :goto_5c
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->barBgTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 314
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 315
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 316
    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->barBgTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v2, :cond_7d

    .line 318
    invoke-virtual {v2, p0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setDelegate(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;)V

    .line 320
    :cond_7d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda42;

    invoke-direct {v4}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 330
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->initHeaderView()V

    .line 331
    new-instance v2, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    .line 332
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setPullDownRefreshText(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setReleaseRefreshText(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {v2, v3}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setRefreshViewHolder(Lcn/bingoogolapple/refreshlayout/BGARefreshViewHolder;)V

    .line 335
    sget v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    if-ne v2, v1, :cond_e1

    .line 336
    sget v2, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    if-nez v2, :cond_e1

    .line 337
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 338
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v2, :cond_e1

    .line 339
    invoke-virtual {v2, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 344
    :cond_e1
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setViriAndSet()V

    .line 345
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getShowMenuView()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    .line 346
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    if-nez v2, :cond_f7

    .line 347
    new-instance v2, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v2, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    .line 349
    :cond_f7
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v2, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setOnRVItemClickListener(Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;)V

    .line 350
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v2, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V

    .line 352
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setData(Ljava/util/List;)V

    .line 354
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    if-nez v2, :cond_115

    .line 355
    new-instance v2, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v2, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    .line 357
    :cond_115
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v2, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V

    .line 358
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 359
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/keephealth/android/views/SpaceGridItemMainMenu;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    invoke-direct {v3, v6}, Lcom/keephealth/android/views/SpaceGridItemMainMenu;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 360
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, v6, v5, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 361
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/keephealth/android/views/SpaceGridItemMainMenuHide;

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/keephealth/android/views/SpaceGridItemMainMenuHide;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 362
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$1;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v3, p0, v4}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$1;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 396
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 397
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 398
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->headerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->addHeaderView(Landroid/view/View;)V

    .line 399
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 400
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->helper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 405
    :try_start_18b
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_196

    goto :goto_1d2

    .line 407
    :cond_196
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d2

    .line 408
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f10037d

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v4, 0x7f10047b

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v5, 0x7f1004a1

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda43;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda43;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda45;

    invoke-direct {v7}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda45;-><init>()V

    .line 408
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1d2} :catch_1d2

    .line 420
    :catch_1d2
    :cond_1d2
    :goto_1d2
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 423
    :try_start_1d8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f01002b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f010030

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1fd} :catch_1fd

    .line 429
    :catch_1fd
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 430
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "USER_TOKEN"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21c

    .line 431
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    .line 435
    :cond_21c
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_227

    goto :goto_22b

    :cond_227
    const/4 v0, 0x4

    .line 438
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->unConnect(I)V

    .line 440
    :goto_22b
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-nez v0, :cond_23d

    .line 441
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    .line 443
    :cond_23d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    iput-boolean v1, v0, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->isShowMain_refresh:Z

    .line 444
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setOnendRefreshing(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$OnendRefreshing;)V

    .line 518
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 519
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$3;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isFloat(Ljava/lang/String;)Z
    .registers 2

    .line 541
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p1, 0x1

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$getReflashData$12$com-keephealth-android-ui-main-fragment-MainFragmentNew()V
    .registers 2

    .line 1286
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->startTime()V

    return-void
.end method

.method synthetic lambda$initHeaderView$3$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 7

    .line 763
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 766
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 767
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 768
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 769
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {v3, v4, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->startActivity(Landroid/app/Activity;Lcom/keephealth/android/model/bean/DetailType;Ljava/util/Date;)V

    goto :goto_4d

    .line 771
    :cond_3f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10053c

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method synthetic lambda$initHeaderView$4$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 7

    .line 776
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 779
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 780
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 781
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 782
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->CAL:Lcom/keephealth/android/model/bean/DetailType;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {v3, v4, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->startActivity(Landroid/app/Activity;Lcom/keephealth/android/model/bean/DetailType;Ljava/util/Date;)V

    goto :goto_4d

    .line 784
    :cond_3f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10053c

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method synthetic lambda$initHeaderView$5$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 7

    .line 789
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 792
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 793
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 794
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 795
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {v3, v4, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->startActivity(Landroid/app/Activity;Lcom/keephealth/android/model/bean/DetailType;Ljava/util/Date;)V

    goto :goto_4d

    .line 797
    :cond_3f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10053c

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 410
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 411
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$linAddDevice$27$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 1946
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1947
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 1948
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$linAddDevice$29$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 1958
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x5b0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 1959
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_12

    .line 1960
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_12
    return-void
.end method

.method synthetic lambda$linAddDevice$30$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    .line 1963
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1964
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 1965
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    return-void
.end method

.method synthetic lambda$linAddDevice$31$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 1971
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    .line 1972
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_10

    .line 1973
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_10
    return-void
.end method

.method synthetic lambda$linAddDevice$32$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    .line 1976
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1977
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 1978
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    return-void
.end method

.method synthetic lambda$linAddDevice$34$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    const/16 p2, 0x3bf

    .line 2000
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {p0, p2, v0}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 2001
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$linAddDevice$36$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 2020
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    .line 2021
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$linAddDevice$38$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 2040
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 2042
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2043
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$linAddDevice$40$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 2082
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 2084
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2085
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$52$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 5

    .line 4017
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4019
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_28

    const/high16 v0, 0x10000000

    .line 4020
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4021
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4022
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_49

    .line 4024
    :cond_28
    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4025
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_package"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4026
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4043
    :goto_49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 4044
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_5d

    .line 4045
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4046
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 4047
    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    const/4 p1, 0x1

    .line 4048
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isCancel:Z

    :cond_5d
    return-void
.end method

.method synthetic lambda$onActivityResult$53$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 4051
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 4052
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method synthetic lambda$onResume$13$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 1625
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1626
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 1627
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onResume$15$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 1637
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x5b0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 1638
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_12

    .line 1639
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_12
    return-void
.end method

.method synthetic lambda$onResume$16$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 1642
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1643
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    const/4 p1, 0x0

    .line 1645
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method synthetic lambda$onResume$17$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 1650
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    .line 1651
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_10

    .line 1652
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_10
    return-void
.end method

.method synthetic lambda$onResume$18$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 1655
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 1656
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    const/4 p1, 0x0

    .line 1658
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    return-void
.end method

.method synthetic lambda$onResume$20$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    const/16 p2, 0x3bf

    .line 1682
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {p0, p2, v0}, Lcom/keephealth/android/util/PermissionUtil;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 1683
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onResume$22$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1702
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/keephealth/android/util/SetPermissionUtils;->goSystemSetPermission(Landroid/content/Context;I)V

    .line 1703
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onResume$24$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1722
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1724
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1725
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onResume$26$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1768
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    .line 1770
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1771
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onVisiable$10$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 991
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 992
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_13

    .line 993
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_13
    return-void
.end method

.method synthetic lambda$onVisiable$11$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 996
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 997
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 999
    :cond_7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "notice_time"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method synthetic lambda$onVisiable$6$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 3

    .line 918
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 919
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_13

    .line 920
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_13
    return-void
.end method

.method synthetic lambda$onVisiable$7$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 923
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 924
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 926
    :cond_7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "notice_time"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method synthetic lambda$onVisiable$8$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 5

    .line 937
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 939
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_28

    const/high16 v0, 0x10000000

    .line 940
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 941
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_49

    .line 944
    :cond_28
    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_package"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    :goto_49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivity(Landroid/content/Intent;)V

    .line 964
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_58

    .line 965
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 966
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 968
    :cond_58
    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method synthetic lambda$onVisiable$9$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 970
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 971
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x1

    .line 972
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isCancel:Z

    :cond_a
    return-void
.end method

.method synthetic lambda$requestSuccess$41$com-keephealth-android-ui-main-fragment-MainFragmentNew()V
    .registers 8

    .line 0
    const/4 v0, 0x0

    .line 2457
    sput v0, Lcom/keephealth/android/app/AppApplication;->firstConnect:I

    .line 2458
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getShowMenuView()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    .line 2459
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getHideMenuView()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    .line 2460
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setData(Ljava/util/List;)V

    const/16 v1, 0x65

    .line 2461
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2463
    :try_start_1b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showEcg()V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_38

    :catch_25
    move-exception v1

    .line 2465
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mainfragmentNew-e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2467
    :goto_38
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "USER_TOKEN"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2468
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->checkMedal()V

    .line 2470
    :cond_4d
    new-instance v1, Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/keephealth/android/util/MusicUtil;-><init>(Landroid/app/Activity;Lcom/keephealth/android/views/CustomToggleButton;)V

    .line 2471
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v4

    .line 2472
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->getMusicPlayLists()Ljava/util/ArrayList;

    move-result-object v5

    .line 2473
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_92

    .line 2475
    iget-boolean v6, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v6, :cond_92

    .line 2476
    iget-object v6, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    if-nez v6, :cond_8c

    .line 2477
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2478
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/MusicPlayData;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->musicAppName:Ljava/lang/String;

    .line 2479
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/MusicPlayData;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/MusicPlayData;->packageName:Ljava/lang/String;

    iput-object v0, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    .line 2481
    :cond_8c
    invoke-static {v4}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 2482
    invoke-virtual {v1}, Lcom/keephealth/android/util/MusicUtil;->openMusicService()V

    .line 2485
    :cond_92
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->googleFitPresenter:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    if-eqz v0, :cond_99

    .line 2486
    invoke-virtual {v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->saveData()V

    .line 2489
    :cond_99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 2490
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataStep()V

    .line 2491
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataHeart()V

    .line 2492
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataSport()V

    .line 2493
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDatatBlood()V

    .line 2495
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 2497
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 2498
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataTemp()V

    .line 2500
    :cond_e0
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEcg()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 2501
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDatatEcg()V

    .line 2503
    :cond_ed
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHrv()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 2504
    new-instance v1, Lcom/keephealth/android/ui/mine/fragment/DataUploader;

    invoke-direct {v1}, Lcom/keephealth/android/ui/mine/fragment/DataUploader;-><init>()V

    .line 2505
    invoke-virtual {v1}, Lcom/keephealth/android/ui/mine/fragment/DataUploader;->uploadHrvData()V

    .line 2508
    :cond_fb
    invoke-static {}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getInstance()Lcom/keephealth/android/util/AppSharedPreferencesUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getSleepType()I

    move-result v1

    if-eqz v0, :cond_10b

    .line 2509
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHighPrecisionSleep()Z

    move-result v0

    if-nez v0, :cond_10e

    :cond_10b
    const/4 v0, 0x3

    if-lt v1, v0, :cond_116

    .line 2510
    :cond_10e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataSleepHigh()V

    goto :goto_11d

    .line 2512
    :cond_116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataSleep()V

    .line 2515
    :cond_11d
    :goto_11d
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_148

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_148

    .line 2516
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_139

    .line 2517
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->startTime()V

    goto :goto_156

    .line 2519
    :cond_139
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 2520
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopWeather()V

    goto :goto_156

    .line 2523
    :cond_148
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 2524
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopWeather()V

    :goto_156
    return-void
.end method

.method synthetic lambda$setUserInfo$45$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 2704
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xcb

    .line 2705
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2706
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method synthetic lambda$setUserInfo$47$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 4

    .line 2737
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xcb

    .line 2738
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2739
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method synthetic lambda$showMedalDialog$50$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 3920
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showMedalDialog$51$com-keephealth-android-ui-main-fragment-MainFragmentNew(Ljava/util/List;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 7

    .line 3922
    iget p5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentMedalIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p5, v0, :cond_10

    .line 3923
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_47

    .line 3925
    :cond_10
    iget p5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentMedalIndex:I

    add-int/lit8 p5, p5, 0x1

    iput p5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentMedalIndex:I

    .line 3926
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 3927
    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleAchieveRes()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3928
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTitle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3929
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTips()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_47
    return-void
.end method

.method synthetic lambda$showScanDialog$49$com-keephealth-android-ui-main-fragment-MainFragmentNew(Landroid/view/View;)V
    .registers 2

    .line 3519
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 3520
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$updateCurrentData$44$com-keephealth-android-ui-main-fragment-MainFragmentNew()V
    .registers 2

    .line 2659
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method synthetic lambda$updateSportVaule$42$com-keephealth-android-ui-main-fragment-MainFragmentNew(Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 13

    .line 2542
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 2543
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 2544
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sput v1, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    const v1, 0x7f100771

    const v2, 0x7f100774

    .line 2545
    const-string v3, "rrded2"

    const-string v4, "HOME_DATA_DISTANCE"

    const-string v5, "HOME_DATA_STEP"

    const-string v6, "HOME_DATA_CAL"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz p1, :cond_106

    if-eqz v0, :cond_106

    .line 2546
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvKcalValue:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2547
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v0

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v0, v9

    .line 2548
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v9

    if-nez v9, :cond_5a

    .line 2549
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v0

    .line 2551
    :cond_5a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v6, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2552
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "\u5f00\u59cb\u5b58\u50a8\u7684HOME_DATA_STEP\u6b65\u6570:"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2553
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "sport.getTotalStepCount():"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "tr4rrs"

    invoke-static {v9, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v9

    invoke-static {v6, v5, v9}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2555
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 2556
    iget-object v4, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvDisValue:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2557
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_189

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 2558
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e0

    :cond_d8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2559
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v1, v1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SportPieView;->setSportGoal(I)V

    .line 2560
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result p1

    invoke-virtual {v0, p1, v8}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    .line 2561
    const-string p1, "2222"

    invoke-static {v3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_189

    .line 2564
    :cond_106
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvKcalValue:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2566
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_11d

    .line 2567
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result p1

    goto :goto_11e

    :cond_11d
    move p1, v0

    .line 2569
    :goto_11e
    iget-object v9, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvDisValue:Landroid/widget/TextView;

    invoke-static {p1, v7}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2570
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/16 v9, 0x2e

    invoke-static {v7, v9}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v7, v7, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {p1, v7}, Lcom/keephealth/android/views/SportPieView;->setSportGoal(I)V

    .line 2571
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p1, v8, v8}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    .line 2572
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_16b

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 2573
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v7

    if-eqz v7, :cond_160

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_168

    :cond_160
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_168
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2575
    :cond_16b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6, v8}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2576
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v5, v8}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2577
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 2578
    const-string p1, "3333"

    invoke-static {v3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_189
    :goto_189
    return-void
.end method

.method synthetic lambda$updateSportVaule2$43$com-keephealth-android-ui-main-fragment-MainFragmentNew(Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 13

    .line 2586
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 2587
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 2588
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sput v1, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    const v1, 0x7f100771

    const v2, 0x7f100774

    .line 2589
    const-string v3, "rrded2"

    const-string v4, "HOME_DATA_DISTANCE"

    const-string v5, "HOME_DATA_STEP"

    const-string v6, "HOME_DATA_CAL"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz p1, :cond_106

    if-eqz v0, :cond_106

    .line 2590
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvKcalValue:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2591
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v0

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v0, v9

    .line 2592
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v9

    if-nez v9, :cond_5a

    .line 2593
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v0

    .line 2595
    :cond_5a
    iget-object v9, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvDisValue:Landroid/widget/TextView;

    invoke-static {v0, v7}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2596
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_189

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 2597
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    :cond_84
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2598
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v1, v1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SportPieView;->setSportGoal(I)V

    .line 2599
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    .line 2600
    const-string v0, "2222"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v6, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u5b58\u50a8\u7684HOME_DATA_STEP\u6b65\u6570:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2603
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sport.getTotalStepCount():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr4rrs"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v1

    invoke-static {v0, v5, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2605
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_189

    .line 2608
    :cond_106
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvKcalValue:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2610
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_11d

    .line 2611
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result p1

    goto :goto_11e

    :cond_11d
    move p1, v0

    .line 2613
    :goto_11e
    iget-object v9, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvDisValue:Landroid/widget/TextView;

    invoke-static {p1, v7}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/16 v9, 0x2e

    invoke-static {v7, v9}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v7, v7, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {p1, v7}, Lcom/keephealth/android/views/SportPieView;->setSportGoal(I)V

    .line 2615
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p1, v8, v8}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    .line 2616
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_16b

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 2617
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v7

    if-eqz v7, :cond_160

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_168

    :cond_160
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_168
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2619
    :cond_16b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6, v8}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2620
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v5, v8}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2621
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 2622
    const-string p1, "3333"

    invoke-static {v3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_189
    :goto_189
    return-void
.end method

.method linAddDevice()V
    .registers 12
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09032d
        }
    .end annotation

    .line 1941
    invoke-static {}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_293

    const/4 v0, 0x1

    .line 1942
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    .line 1943
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f1004a1

    if-nez v1, :cond_53

    .line 1944
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1945
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10047b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v8, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda17;

    invoke-direct {v8}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda17;-><init>()V

    .line 1944
    invoke-static/range {v3 .. v8}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_293

    .line 1953
    :cond_53
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {v1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v1

    const-string v3, "isRefuPermisstion"

    const v4, 0x7f100257

    if-nez v1, :cond_ea

    .line 1954
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10049e

    const v3, 0x7f1004a3

    if-nez v0, :cond_aa

    .line 1956
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1957
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda18;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda18;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v10, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda19;

    invoke-direct {v10, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda19;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 1956
    invoke-static/range {v5 .. v10}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_293

    .line 1969
    :cond_aa
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1970
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda20;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda21;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda21;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 1969
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_293

    .line 1984
    :cond_ea
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1985
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const v6, 0x7f100474

    const v7, 0x7f10030b

    const-string v8, "MainActivity"

    const-string v9, "from"

    const v10, 0x7f100193

    if-lt v1, v3, :cond_21f

    .line 1987
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {v1}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v1

    const-string v3, "reFrushNumber"

    if-nez v1, :cond_19c

    .line 1989
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10010f

    const v3, 0x7f10010e

    if-nez v0, :cond_15b

    .line 1991
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez v0, :cond_154

    .line 1992
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1993
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda23;-><init>()V

    .line 1994
    invoke-virtual {v0, v10, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1998
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda24;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 1999
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 2003
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 2005
    :cond_154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_293

    .line 2008
    :cond_15b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_162

    const/4 v0, 0x0

    .line 2009
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 2011
    :cond_162
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez v0, :cond_193

    .line 2012
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2013
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda25;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda25;-><init>()V

    .line 2014
    invoke-virtual {v0, v10, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 2018
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda26;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 2019
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 2023
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 2025
    :cond_193
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_293

    .line 2026
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_293

    .line 2030
    :cond_19c
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2031
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v1

    if-nez v1, :cond_1df

    .line 2032
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2033
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda13;-><init>()V

    .line 2034
    invoke-virtual {v0, v10, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 2038
    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 2039
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 2046
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 2047
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_293

    .line 2050
    :cond_1df
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_206

    .line 2052
    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_293

    .line 2054
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 2055
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2056
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_293

    .line 2058
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto/16 :goto_293

    .line 2062
    :cond_206
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 2063
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2064
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_293

    .line 2066
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto/16 :goto_293

    .line 2073
    :cond_21f
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v1

    if-nez v1, :cond_256

    .line 2074
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2075
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda15;-><init>()V

    .line 2076
    invoke-virtual {v0, v10, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 2080
    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda16;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 2081
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 2088
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 2089
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_293

    .line 2091
    :cond_256
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_27c

    .line 2093
    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_293

    .line 2095
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 2096
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2097
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_293

    .line 2099
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_293

    .line 2103
    :cond_27c
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 2104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2105
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_293

    .line 2107
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_293
    :goto_293
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .line 4003
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xcb

    if-ne p2, v0, :cond_37

    .line 4005
    const-string p1, "code"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4006
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 4007
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setCountryCode(Ljava/lang/String;)V

    .line 4008
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendUserToBle(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_95

    :cond_37
    const/16 p2, 0x12

    if-ne p1, p2, :cond_8a

    .line 4010
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->firstHome:Z

    if-eqz p1, :cond_95

    const/4 p1, 0x0

    .line 4011
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->firstHome:Z

    .line 4012
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/NotificationUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 4014
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-nez p1, :cond_86

    .line 4015
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f10046b

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4016
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1004d9

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1004a1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda40;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda41;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda41;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 4015
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto :goto_95

    .line 4056
    :cond_86
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_95

    :cond_8a
    const/16 p2, 0x9c

    if-ne p1, p2, :cond_95

    .line 4063
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->enableBtIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public onBGARefreshLayoutBeginLoadingMore(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onBGARefreshLayoutBeginRefreshing(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;I)V
    .registers 6

    .line 2324
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2325
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2326
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onBGARefreshLayoutBeginRefreshing_a:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/4 p1, 0x1

    .line 2327
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    .line 2328
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isConnect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isConnect:Ljava/lang/String;

    .line 2329
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 2330
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    .line 2331
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->beginRefreshing:I

    .line 2335
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    const/4 v1, 0x5

    if-nez v0, :cond_e5

    .line 2336
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_b2

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez v0, :cond_b2

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    if-nez v0, :cond_b2

    .line 2337
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 2338
    invoke-direct {p0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getReflashData(I)V

    .line 2339
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getStepData()V

    .line 2340
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    if-eqz v0, :cond_a9

    .line 2341
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 2342
    iput p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I

    .line 2343
    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 2344
    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopWeather()V

    .line 2345
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 2347
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "firstUnband"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2348
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2350
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2351
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchDate()V

    goto :goto_c5

    .line 2353
    :cond_a0
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_c5

    const/4 p2, 0x2

    .line 2354
    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    goto :goto_c5

    .line 2358
    :cond_a9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_c5

    const/4 p2, 0x3

    .line 2359
    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    goto :goto_c5

    .line 2363
    :cond_b2
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isConnect:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 2364
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    .line 2375
    :cond_bd
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_c5

    const/4 p2, 0x4

    .line 2376
    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 2379
    :cond_c5
    :goto_c5
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 2380
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "USER_TOKEN"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_fa

    .line 2381
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    goto :goto_fa

    .line 2385
    :cond_e5
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1003a8

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    .line 2386
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_fa

    .line 2387
    invoke-virtual {p1, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    :cond_fa
    :goto_fa
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 4087
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onDestroy()V

    const/4 v0, 0x1

    .line 4088
    sput v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    .line 4089
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_d

    .line 4090
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->clearAnimation()V

    .line 4092
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_17

    .line 4093
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->cancel()V

    const/4 v0, 0x0

    .line 4094
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 4099
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4100
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/4 v0, 0x0

    .line 4101
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    .line 4102
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_37

    .line 4104
    :try_start_2c
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    move-exception v0

    .line 4106
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_37
    :goto_37
    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    .line 3990
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 3993
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->inVisible:I

    :cond_8
    return-void
.end method

.method public onItemChildClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 4

    .line 2294
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "show"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2295
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    .line 2296
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->addLastItem(Ljava/lang/Object;)V

    .line 2297
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->removeItem(I)V

    goto :goto_49

    .line 2299
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    .line 2300
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->addLastItem(Ljava/lang/Object;)V

    .line 2301
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->removeItem(I)V

    .line 2303
    :goto_49
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->hideMenus:Ljava/util/List;

    .line 2304
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;
    :try_end_59
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_59} :catch_59

    :catch_59
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 1836
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onPause()V

    return-void
.end method

.method public onRVItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 15

    .line 2120
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    if-gez p3, :cond_c

    return-void

    .line 2126
    :cond_c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    .line 2127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2128
    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    .line 2129
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p3

    if-nez p3, :cond_633

    sget-boolean p3, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz p3, :cond_30

    goto/16 :goto_633

    .line 2132
    :cond_30
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p3, v0, v2

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_b4

    .line 2133
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object p2

    .line 2134
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 2135
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 2136
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2137
    const-string v2, "date"

    if-eqz p2, :cond_8e

    .line 2138
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDay()I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2139
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->TAG:Ljava/lang/String;

    const-string p2, "onRVItemClick: \u65e0\u6570\u636e"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 2141
    :cond_8e
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, v1, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2142
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->TAG:Ljava/lang/String;

    const-string p2, "onRVItemClick: \u6709\u6570\u636e"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :goto_a9
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/sport/activity/SportRecordActivityNew;

    invoke-static {p1, p2, p3}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_645

    .line 2145
    :cond_b4
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long p3, v4, v6

    if-nez p3, :cond_127

    .line 2146
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object p2

    .line 2147
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 2148
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/TempInfo;

    if-eqz p2, :cond_111

    .line 2150
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2152
    :cond_111
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2154
    :cond_127
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long p3, v4, v6

    if-nez p3, :cond_1a2

    .line 2155
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object p2

    .line 2156
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    .line 2157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    if-eqz p2, :cond_188

    .line 2159
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result p2

    invoke-static {p3, v0, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2161
    :cond_188
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p3, v1, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2163
    :cond_1a2
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long p3, v4, v6

    if-nez p3, :cond_253

    .line 2164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 2165
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p3

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object p3

    .line 2166
    invoke-virtual {p3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 2167
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v5, v2

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2168
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p2}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v5, v3

    sget-object p2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v5, v1

    .line 2166
    invoke-virtual {p3, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 2168
    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 2169
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    if-eqz p2, :cond_239

    .line 2171
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result p2

    invoke-static {p3, v0, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2173
    :cond_239
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p3, v1, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2175
    :cond_253
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long p3, v4, v6

    if-nez p3, :cond_2d2

    .line 2176
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object p2

    .line 2177
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->SsValue:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->FzValue:Lorg/greenrobot/greendao/Property;

    .line 2178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2177
    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 2178
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz p2, :cond_2bc

    .line 2180
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2182
    :cond_2bc
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2184
    :cond_2d2
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x6

    cmp-long p3, v4, v6

    if-nez p3, :cond_345

    .line 2185
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object p2

    .line 2186
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->OxygenValue:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 2187
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz p2, :cond_32f

    .line 2189
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2191
    :cond_32f
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2193
    :cond_345
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long p3, v4, v6

    if-nez p3, :cond_38f

    .line 2199
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p2

    if-eqz p2, :cond_379

    .line 2200
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result p2

    if-eqz p2, :cond_379

    .line 2202
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2207
    :cond_379
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2210
    :cond_38f
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    cmp-long p3, v4, v6

    if-nez p3, :cond_3a8

    .line 2211
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_645

    .line 2212
    :cond_3a8
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x9

    cmp-long p3, v4, v6

    if-nez p3, :cond_404

    .line 2213
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object p1

    .line 2214
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 2225
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "period_date"

    invoke-static {p2, p3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gtz p2, :cond_3f4

    if-eqz p1, :cond_3df

    goto :goto_3f4

    .line 2229
    :cond_3df
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2230
    const-string p2, "from"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2231
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_645

    .line 2226
    :cond_3f4
    :goto_3f4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2227
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_645

    .line 2233
    :cond_404
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long p3, v4, v6

    const v4, 0x7f100750

    const-string v5, ""

    const-string v6, "USER_TOKEN"

    if-nez p3, :cond_43f

    .line 2234
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_432

    .line 2235
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/mine/activity/FamilyActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_645

    .line 2237
    :cond_432
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    goto/16 :goto_645

    .line 2239
    :cond_43f
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0xb

    cmp-long p3, v7, v9

    if-nez p3, :cond_4ba

    .line 2240
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object p2

    .line 2241
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    .line 2242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    if-eqz p2, :cond_4a0

    .line 2244
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result p2

    invoke-static {p3, v0, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2246
    :cond_4a0
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p3, v1, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2248
    :cond_4ba
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0xd

    cmp-long p3, v7, v9

    if-nez p3, :cond_535

    .line 2249
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object p2

    .line 2250
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    .line 2251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    if-eqz p2, :cond_51b

    .line 2253
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result p2

    invoke-static {p3, v0, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2255
    :cond_51b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p3, v1, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_645

    .line 2257
    :cond_535
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0xf

    cmp-long p3, v7, v9

    if-nez p3, :cond_5a8

    .line 2258
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVItemBeanDao()Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    move-result-object p2

    .line 2259
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 2260
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    if-eqz p2, :cond_592

    .line 2262
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2264
    :cond_592
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_645

    .line 2266
    :cond_5a8
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xe

    cmp-long p1, v0, v2

    const p3, 0x7f100258

    if-nez p1, :cond_5ef

    .line 2267
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5e3

    .line 2268
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_5d7

    .line 2269
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_645

    .line 2271
    :cond_5d7
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_645

    .line 2274
    :cond_5e3
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_645

    .line 2276
    :cond_5ef
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x10

    cmp-long p1, p1, v0

    if-nez p1, :cond_645

    .line 2277
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_627

    .line 2278
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_61b

    .line 2279
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/childmodule/activity/CourseOldActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_645

    .line 2281
    :cond_61b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_645

    .line 2284
    :cond_627
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_645

    .line 2130
    :cond_633
    :goto_633
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10053c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showToast(Ljava/lang/String;)V

    :cond_645
    :goto_645
    return-void
.end method

.method public onResume()V
    .registers 14

    .line 1579
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onResume()V

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "HOME_DATA_TIME"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e5\u671f\u6570\u636e"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppApplication.isLoginSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isLoginSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFDD221"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChangedWrapper()V

    .line 1585
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isBackground:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1666
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_c8

    .line 1586
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v0

    .line 1587
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v4

    .line 1588
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v6, v0, v2

    .line 1589
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v9, v0, v1

    .line 1590
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v2

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v0, v0, v6

    .line 1591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v7, v1

    .line 1589
    invoke-virtual {v4, v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v4, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v2

    .line 1592
    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1593
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSport;

    if-eqz v0, :cond_c8

    .line 1595
    iget-object v4, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5b9e\u65f6\u6b65\u6570\u603b\u65701: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->updateSportVaule2(Lcom/keephealth/android/greendao/bean/HealthSport;)V

    .line 1599
    :cond_c8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    if-eqz v0, :cond_d3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    if-eqz v4, :cond_d3

    .line 1600
    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setData(Ljava/util/List;)V

    .line 1602
    :cond_d3
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLoginSuccess:Z

    if-eqz v0, :cond_dd

    .line 1603
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isLoginSuccess:Z

    const/4 v0, 0x5

    .line 1604
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connect(I)V

    .line 1606
    :cond_dd
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isClickSkipYanZheng:Z

    if-eqz v0, :cond_102

    .line 1607
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickSkipYanZheng:Z

    .line 1608
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1609
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "USER_TOKEN"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 1610
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    .line 1614
    :cond_102
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    .line 1615
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1616
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isShowMain:Z

    .line 1617
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getStepData()V

    .line 1618
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onResumes:I

    .line 1619
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v0, :cond_3a8

    .line 1620
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "request_all"

    invoke-static {v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a8

    .line 1622
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result v0

    const v4, 0x7f1004a1

    if-nez v0, :cond_167

    .line 1623
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1624
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10047b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda44;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda44;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v10, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda53;

    invoke-direct {v10}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda53;-><init>()V

    .line 1623
    invoke-static/range {v5 .. v10}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_3a8

    .line 1632
    :cond_167
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsLocation:[Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    const-string v5, "isRefuPermisstion"

    const v6, 0x7f100257

    if-nez v0, :cond_1f9

    .line 1633
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10049e

    const v2, 0x7f1004a3

    if-nez v0, :cond_1be

    .line 1635
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1636
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v12, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda2;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 1635
    invoke-static/range {v7 .. v12}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_3a8

    .line 1648
    :cond_1be
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    move-object v1, v0

    .line 1648
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_3a8

    .line 1663
    :cond_1f9
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_200

    .line 1664
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1666
    :cond_200
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v5, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1667
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    const v7, 0x7f100474

    const v8, 0x7f10030b

    const-string v9, "MainActivity"

    const-string v10, "from"

    const v11, 0x7f100193

    if-lt v0, v5, :cond_334

    .line 1669
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->permissionsBluetooth_connect:[Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result v0

    const-string v5, "reFrushNumber"

    if-nez v0, :cond_2ad

    .line 1671
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10010f

    const v3, 0x7f10010e

    if-nez v0, :cond_26c

    .line 1673
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez v0, :cond_265

    .line 1674
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1675
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda5;-><init>()V

    .line 1676
    invoke-virtual {v0, v11, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1680
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 1681
    invoke-virtual {v0, v6, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1685
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1687
    :cond_265
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_3a8

    .line 1690
    :cond_26c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_273

    const/4 v0, 0x0

    .line 1691
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1693
    :cond_273
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez v0, :cond_2a4

    .line 1694
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1695
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda7;-><init>()V

    .line 1696
    invoke-virtual {v0, v11, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1700
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 1701
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 1707
    :cond_2a4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mCommonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_3a8

    .line 1708
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_3a8

    .line 1712
    :cond_2ad
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v5, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1713
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_2ec

    .line 1714
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1715
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda49;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda49;-><init>()V

    .line 1716
    invoke-virtual {v0, v11, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1720
    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda50;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 1721
    invoke-virtual {v0, v6, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1728
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 1729
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_3a8

    .line 1732
    :cond_2ec
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_313

    .line 1734
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a8

    .line 1736
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 1737
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1738
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_3a8

    .line 1740
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto/16 :goto_3a8

    .line 1744
    :cond_313
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isBoolFromFamily:Z

    if-nez v0, :cond_330

    .line 1745
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 1746
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1747
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_3a8

    .line 1749
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto/16 :goto_3a8

    .line 1752
    :cond_330
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isBoolFromFamily:Z

    goto/16 :goto_3a8

    .line 1759
    :cond_334
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_36b

    .line 1760
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1761
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda51;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda51;-><init>()V

    .line 1762
    invoke-virtual {v0, v11, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1766
    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda52;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 1767
    invoke-virtual {v0, v6, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1774
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_3a8

    .line 1777
    :cond_36b
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_391

    .line 1779
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a8

    .line 1781
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 1782
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1783
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_3a8

    .line 1785
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_3a8

    .line 1789
    :cond_391
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 1790
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1791
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isClickAddDevice:Z

    if-eqz v2, :cond_3a8

    .line 1793
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v2, v3, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_3a8
    :goto_3a8
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 3365
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onStart()V

    const/4 v0, 0x1

    .line 3366
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onStart:I

    return-void
.end method

.method public onStop()V
    .registers 4

    .line 4069
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onStop()V

    const/4 v0, 0x0

    .line 4070
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->homeIscanVisible:Z

    const/4 v1, 0x1

    .line 4071
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->inVisible:I

    .line 4072
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    .line 4073
    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    .line 4075
    :cond_10
    sput v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    .line 4077
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onResumes:I

    .line 4078
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onViesibles:I

    .line 4079
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->beginRefreshing:I

    .line 4080
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onStart:I

    .line 4081
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "onClickClose1"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onVisiable()V
    .registers 15

    .line 892
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onVisiable()V

    .line 893
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_14

    .line 894
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    :cond_14
    const/4 v0, 0x1

    .line 898
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->homeIscanVisible:Z

    const/4 v1, 0x0

    .line 899
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    .line 900
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    .line 901
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onViesibles:I

    .line 902
    sget v2, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    if-ne v2, v0, :cond_24

    .line 903
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose1:I

    .line 905
    :cond_24
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isConnect"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isConnect:Ljava/lang/String;

    .line 907
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 909
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setViriAndSet()V

    .line 910
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "notice_time"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const v5, 0x7f1004a4

    const v6, 0x7f1004a6

    const v7, 0x7f1004a1

    if-eqz v4, :cond_f8

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v8, v2

    const-wide/32 v2, 0x15180

    cmp-long v2, v8, v2

    if-lez v2, :cond_13c

    .line 914
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isNotificationEnabled()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 915
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_a8

    .line 916
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 917
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda28;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda28;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v13, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda29;

    invoke-direct {v13, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda29;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 916
    invoke-static/range {v8 .. v13}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_13c

    .line 929
    :cond_a8
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_13c

    .line 932
    :cond_ad
    iget-boolean v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isCancel:Z

    if-nez v2, :cond_13c

    .line 933
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/NotificationUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 934
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_f2

    .line 935
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f10046b

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 936
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1004d9

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda30;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda30;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v13, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda31;

    invoke-direct {v13, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda31;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 935
    invoke-static/range {v8 .. v13}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto :goto_13c

    :cond_f2
    if-eqz v2, :cond_13c

    .line 977
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_13c

    .line 987
    :cond_f8
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isNotificationEnabled()Z

    move-result v2

    if-nez v2, :cond_135

    .line 988
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_12f

    .line 989
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 990
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda32;

    invoke-direct {v12, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda32;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v13, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda34;

    invoke-direct {v13, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda34;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 989
    invoke-static/range {v8 .. v13}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mDialog:Landroid/app/Dialog;

    goto :goto_13c

    :cond_12f
    if-eqz v2, :cond_13c

    .line 1003
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_13c

    .line 1007
    :cond_135
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/NotificationUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    .line 1052
    :cond_13c
    :goto_13c
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v2

    if-nez v2, :cond_14a

    const/4 v2, 0x3

    .line 1053
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->unConnect(I)V

    .line 1056
    :cond_14a
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tvTagUnitDis:Landroid/widget/TextView;

    if-eqz v2, :cond_16e

    .line 1057
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v3

    if-eqz v3, :cond_160

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f100771

    goto :goto_167

    :cond_160
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f100774

    :goto_167
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    :cond_16e
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    if-eqz v2, :cond_175

    .line 1061
    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChangedWrapper()V

    .line 1106
    :cond_175
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v2, :cond_1a1

    .line 1107
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 1108
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "isRefresh"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a1

    .line 1110
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1114
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    if-eqz v0, :cond_1a1

    .line 1115
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isReadNotiOpen:Z

    .line 1116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 1122
    :cond_1a1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AppApplication.isLoginRegisterSuccess:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isLoginRegisterSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FFDD221"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLoginRegisterSuccess:Z

    if-eqz v0, :cond_1c1

    .line 1124
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isLoginRegisterSuccess:Z

    const/4 v0, 0x6

    .line 1125
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->connect(I)V

    :cond_1c1
    return-void
.end method

.method public oninVisiable()V
    .registers 2

    .line 1560
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->oninVisiable()V

    .line 1561
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 1562
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopWeather()V

    return-void
.end method

.method public refTimeOut()V
    .registers 2

    const/4 v0, 0x0

    .line 2649
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    return-void
.end method

.method public requestCalander(Z)V
    .registers 4

    .line 3291
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCalander--isOpenStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trt5t55"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "openOrCloseSchedule"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2d
    return-void
.end method

.method public requestFaild()V
    .registers 2

    .line 2635
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method public requestSuccess()V
    .registers 3

    .line 2456
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda33;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveFaild()V
    .registers 1

    return-void
.end method

.method public saveUserBean(I)V
    .registers 4

    .line 3273
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 3274
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 3275
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 3276
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "USER_TOKEN_BASE"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 3277
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 3278
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER_BASE"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    return-void
.end method

.method public scrollTop()V
    .registers 3

    .line 3424
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 3425
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setUserInfo(Lcom/keephealth/android/greendao/bean/UserInfoBean;)V
    .registers 10

    .line 2664
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 2665
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    if-eqz p1, :cond_1e9

    .line 2667
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getDevice()Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getDevice()Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 2669
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 2671
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getDevice()Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->getDeviceType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/BLEDevice;->setDeviceType(I)V

    .line 2672
    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_41

    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 2673
    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/BLEDevice;->setmDeviceAddress(Ljava/lang/String;)V

    goto :goto_4c

    .line 2675
    :cond_41
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getDevice()Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/BLEDevice;->setmDeviceAddress(Ljava/lang/String;)V

    .line 2677
    :goto_4c
    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_5e

    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 2678
    iget-object v3, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/BLEDevice;->setmDeviceName(Ljava/lang/String;)V

    goto :goto_69

    .line 2680
    :cond_5e
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getDevice()Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/BLEDevice;->setmDeviceName(Ljava/lang/String;)V

    :goto_69
    const/16 v3, 0x14

    .line 2682
    invoke-static {v1, v3}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 2685
    :cond_6e
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 2686
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setEmail(Ljava/lang/String;)V

    .line 2688
    :cond_7f
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->isEmailVerified()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 2690
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "bing_time"

    invoke-static {v1, v4, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2692
    :cond_96
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 2693
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setPhone(Ljava/lang/String;)V

    .line 2695
    :cond_a7
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->isEmailVerified()Z

    move-result v1

    iput-boolean v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->emailIsVerifity:Z

    .line 2696
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->isEmailVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setEmailVerified(Z)V

    .line 2697
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f100525

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "isshowchoose"

    if-nez v1, :cond_150

    .line 2698
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v7, "null"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 2699
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-eq v1, v4, :cond_dd

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-ne v1, v5, :cond_10f

    .line 2700
    :cond_dd
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2701
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 2703
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda36;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda36;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda37;

    invoke-direct {v7}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda37;-><init>()V

    invoke-static {v1, v3, v4, v7}, Lcom/keephealth/android/util/DialogHelperNew;->showCountryDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 2709
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v6, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    :cond_10f
    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/UserBean;->setCountryCode(Ljava/lang/String;)V

    goto :goto_11a

    .line 2714
    :cond_113
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setCountryCode(Ljava/lang/String;)V

    .line 2716
    :goto_11a
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->isEmailVerified()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_12d

    .line 2718
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2719
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_194

    .line 2721
    :cond_12d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v2, "had_set"

    invoke-static {p1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;

    .line 2722
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_194

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_194

    .line 2723
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2725
    invoke-direct {p0, v5}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->yzmui(I)V

    goto :goto_194

    .line 2732
    :cond_150
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-eq v1, v4, :cond_162

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-eq v1, v5, :cond_162

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result p1

    if-nez p1, :cond_194

    .line 2733
    :cond_162
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2734
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_194

    .line 2736
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda38;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    new-instance v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda39;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda39;-><init>()V

    invoke-static {p1, v1, v2, v3}, Lcom/keephealth/android/util/DialogHelperNew;->showCountryDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 2742
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v6, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    :cond_194
    :goto_194
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 2747
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz p1, :cond_1e6

    .line 2749
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c2

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result p1

    if-nez p1, :cond_1c2

    .line 2751
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_go_yanz2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10074e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e6

    .line 2752
    :cond_1c2
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e6

    .line 2753
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result p1

    if-nez p1, :cond_1e6

    .line 2755
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_go_yanz2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100752

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2759
    :cond_1e6
    :goto_1e6
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setViriAndSet()V

    :cond_1e9
    return-void
.end method

.method tvClose()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090351
        }
    .end annotation

    .line 1843
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    const/4 v0, 0x1

    .line 1844
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickClose1:I

    .line 1845
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "onClickClose1"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1846
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setViriAndSet()V

    return-void
.end method

.method tvGoset()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090740
        }
    .end annotation

    .line 1858
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method tv_go_yanz()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090741
        }
    .end annotation

    .line 1863
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 1866
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "main"

    if-eqz v1, :cond_53

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v1

    if-nez v1, :cond_53

    .line 1868
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 1869
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1870
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    :goto_3a
    const-string v0, "email"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v0, "title"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v0, "info"

    invoke-virtual {v1, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_92

    .line 1874
    :cond_53
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 1875
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v0

    if-nez v0, :cond_92

    .line 1877
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 1878
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1879
    const-string v4, "from"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_80

    goto :goto_84

    :cond_80
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    :goto_84
    const-string v0, "username"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public unConnect(I)V
    .registers 4

    .line 3373
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 3374
    iput-boolean v0, p1, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->isReconnected:Z

    .line 3376
    :cond_7
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->nowProgress:I

    .line 3377
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    .line 3378
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressIndex:I

    .line 3379
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1d

    .line 3380
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3381
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3383
    :cond_1d
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 3384
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 3385
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopWeather()V

    .line 3386
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz p1, :cond_3a

    const/4 v0, 0x7

    .line 3387
    invoke-virtual {p1, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 3389
    :cond_3a
    const-string p1, "false"

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->isConnect:Ljava/lang/String;

    .line 3390
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 3391
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopWeather()V

    .line 3392
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 3394
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 3395
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    if-eqz p1, :cond_97

    .line 3396
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setDeviceImaSize()V

    .line 3397
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    const v0, 0x7f0d0064

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3398
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const-string v0, "file:///android_asset/home_connecting.gif"

    if-eqz p1, :cond_86

    .line 3399
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_74

    goto :goto_97

    .line 3401
    :cond_74
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 3402
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 3403
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 3404
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_97

    .line 3407
    :cond_86
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 3408
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 3409
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_add_device:Landroid/widget/ImageView;

    .line 3410
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 3414
    :cond_97
    :goto_97
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onStart:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a0

    const/4 p1, 0x3

    .line 3415
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->getAddDeviceStatus(I)V

    :cond_a0
    return-void
.end method

.method public updateCurrentData(Lcom/keephealth/android/greendao/bean/HealthHeartRate;Lcom/keephealth/android/greendao/bean/TempInfo;)V
    .registers 3

    .line 2657
    sput-object p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 2658
    sput-object p2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 2659
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda27;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateProgress(I)V
    .registers 4

    const/4 v0, 0x0

    .line 2642
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I

    .line 2643
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->nowProgress:I

    .line 2644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "progress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yyyt5"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateSportData(Lcom/keephealth/android/greendao/bean/HealthActivity;)V
    .registers 6

    const/4 p1, 0x0

    .line 3534
    :goto_1
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 3535
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 3536
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyItemChangedWrapper(I)V

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public updateSportVaule(Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 6

    .line 2533
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->sportBackground:Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 2534
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$9;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$9;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2541
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda47;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSportVaule2(Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 4

    .line 2585
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$$ExternalSyntheticLambda48;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTempUnit()V
    .registers 6

    const/4 v0, 0x0

    .line 3569
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3570
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_24

    .line 3571
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyItemChangedWrapper(I)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public updateWaterData()V
    .registers 6

    const/4 v0, 0x0

    .line 3552
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3553
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    cmp-long v1, v1, v3

    if-nez v1, :cond_24

    .line 3554
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyItemChangedWrapper(I)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public updateWeightData()V
    .registers 6

    const/4 v0, 0x0

    .line 3561
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3562
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->showMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    if-nez v1, :cond_24

    .line 3563
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyItemChangedWrapper(I)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method
