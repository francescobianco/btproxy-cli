.class public Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;
.super Lcom/keephealth/android/base/BaseMvpFragment;
.source "MainFragmentNewTest.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/MainFragmentContract$View;
.implements Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;
.implements Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;
.implements Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;


# annotations
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

.field public static currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate; = null

.field public static currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo; = null

.field public static updateData:Z = false


# instance fields
.field private animation:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

.field barBgTitle:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090081
    .end annotation
.end field

.field btnEdit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a3
    .end annotation
.end field

.field public calendar:Ljava/util/Calendar;

.field private canRunnable:Z

.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field private currentMedalIndex:I

.field dialog:Landroid/app/Dialog;

.field private emailIsVerifity:Z

.field private faildCount:I

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

.field private isConnect:Ljava/lang/String;

.field private isPausePage:Z

.field lin_add_device:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09032d
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

.field private medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

.field private medalDialog:Landroid/app/Dialog;

.field private nowProgress:I

.field public onClickClose1:I

.field public onClickClose2:I

.field private progressIndex:I

.field progressRun:Ljava/lang/Runnable;

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

.field private sportDataPie:Lcom/keephealth/android/views/SportPieView;

.field timeoutRun:Ljava/lang/Runnable;

.field private timeoutT:I

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
    .registers 4

    .line 180
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isPausePage:Z

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    .line 558
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler2:Landroid/os/Handler;

    .line 1226
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    .line 1228
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    .line 1230
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutRun:Ljava/lang/Runnable;

    .line 1241
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I

    .line 1242
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$6;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    .line 1641
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$7;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$7;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->helper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 1923
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentMedalIndex:I

    const/4 v0, 0x0

    .line 1926
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->animation:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Ljava/lang/String;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)V
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->yzmui(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I
    .registers 1

    .line 180
    iget p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)I
    .registers 2

    .line 180
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    return p1
.end method

.method static synthetic access$208(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I
    .registers 3

    .line 180
    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    return v0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I
    .registers 1

    .line 180
    iget p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)I
    .registers 2

    .line 180
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I
    .registers 3

    .line 180
    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I
    .registers 1

    .line 180
    iget p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->nowProgress:I

    return p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    return-object p0
.end method

.method private checkMedal()V
    .registers 27

    move-object/from16 v0, p0

    .line 1673
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->calendar:Ljava/util/Calendar;

    .line 1674
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMedalDataDao()Lcom/keephealth/android/greendao/gen/MedalDataDao;

    move-result-object v1

    .line 1675
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

    if-eqz v2, :cond_4ab

    .line 1676
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4ab

    .line 1677
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    .line 1678
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v6

    .line 1679
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v7

    .line 1680
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1681
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

    .line 1682
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

    packed-switch v10, :pswitch_data_4ac

    goto :goto_59

    .line 1895
    :pswitch_86
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x2a

    cmp-long v10, v10, v13

    if-nez v10, :cond_93

    move/from16 v17, v18

    goto :goto_c8

    .line 1897
    :cond_93
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x2b

    cmp-long v10, v10, v13

    if-nez v10, :cond_a0

    move/from16 v17, v12

    goto :goto_c8

    .line 1899
    :cond_a0
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x2c

    cmp-long v10, v10, v12

    if-nez v10, :cond_ab

    goto :goto_c8

    .line 1901
    :cond_ab
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x2d

    cmp-long v10, v10, v12

    if-nez v10, :cond_b9

    const v17, 0x13880

    goto :goto_c8

    .line 1903
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

    .line 1906
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

    .line 1907
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 1908
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1909
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1910
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 1869
    :pswitch_114
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x24

    cmp-long v10, v10, v13

    if-nez v10, :cond_11f

    goto :goto_161

    .line 1871
    :cond_11f
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x25

    cmp-long v10, v10, v13

    if-nez v10, :cond_12c

    move/from16 v15, v18

    goto :goto_161

    .line 1873
    :cond_12c
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x26

    cmp-long v10, v10, v13

    if-nez v10, :cond_138

    move v15, v12

    goto :goto_161

    .line 1875
    :cond_138
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x27

    cmp-long v10, v10, v12

    if-nez v10, :cond_145

    const/16 v15, 0x5269

    goto :goto_161

    .line 1877
    :cond_145
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x28

    cmp-long v10, v10, v12

    if-nez v10, :cond_153

    const v15, 0xa4d3

    goto :goto_161

    .line 1879
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

    .line 1882
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

    .line 1883
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 1884
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1885
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1886
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 1828
    :pswitch_1ac
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v22

    const-wide/16 v24, 0x1a

    cmp-long v10, v22, v24

    if-nez v10, :cond_1ba

    move/from16 v10, v19

    goto/16 :goto_233

    .line 1830
    :cond_1ba
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v22, 0x1b

    cmp-long v10, v18, v22

    if-nez v10, :cond_1c8

    move/from16 v10, v17

    goto/16 :goto_233

    .line 1832
    :cond_1c8
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v22, 0x1c

    cmp-long v10, v18, v22

    if-nez v10, :cond_1d5

    move/from16 v10, v20

    goto :goto_233

    .line 1834
    :cond_1d5
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v22, 0x1d

    cmp-long v10, v18, v22

    if-nez v10, :cond_1e1

    move v10, v14

    goto :goto_233

    .line 1836
    :cond_1e1
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v18, 0x1e

    cmp-long v10, v14, v18

    if-nez v10, :cond_1ef

    const v10, 0x7a120

    goto :goto_233

    .line 1838
    :cond_1ef
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v18, 0x1f

    cmp-long v10, v14, v18

    if-nez v10, :cond_1fc

    move/from16 v10, v16

    goto :goto_233

    .line 1840
    :cond_1fc
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v16, 0x20

    cmp-long v10, v14, v16

    if-nez v10, :cond_20a

    const v10, 0x1e8480

    goto :goto_233

    .line 1842
    :cond_20a
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v16, 0x21

    cmp-long v10, v14, v16

    if-nez v10, :cond_216

    move v10, v13

    goto :goto_233

    .line 1844
    :cond_216
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x22

    cmp-long v10, v12, v14

    if-nez v10, :cond_224

    const v10, 0x3d0900

    goto :goto_233

    .line 1846
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

    .line 1849
    :goto_233
    const-string v12, "select SUM(Distance) FROM HEALTH_ACTIVITY WHERE Type = 1"

    .line 1851
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v13

    invoke-interface {v13, v12, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1852
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_258

    .line 1853
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lt v12, v10, :cond_258

    .line 1855
    iget-object v10, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1856
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1857
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1860
    :cond_258
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_59

    .line 1799
    :pswitch_25d
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x15

    cmp-long v10, v10, v13

    if-nez v10, :cond_26a

    const/16 v15, 0x3e8

    goto :goto_29c

    .line 1801
    :cond_26a
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x16

    cmp-long v10, v10, v13

    if-nez v10, :cond_275

    goto :goto_29c

    .line 1803
    :cond_275
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x17

    cmp-long v10, v10, v13

    if-nez v10, :cond_282

    move/from16 v15, v18

    goto :goto_29c

    .line 1805
    :cond_282
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v10

    const-wide/16 v13, 0x18

    cmp-long v10, v10, v13

    if-nez v10, :cond_28e

    move v15, v12

    goto :goto_29c

    .line 1807
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

    .line 1810
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

    .line 1811
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 1812
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1813
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1814
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 1767
    :pswitch_2e7
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0xf

    cmp-long v10, v12, v14

    if-nez v10, :cond_2f4

    move/from16 v12, v19

    goto :goto_338

    .line 1769
    :cond_2f4
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x10

    cmp-long v10, v12, v14

    if-nez v10, :cond_301

    move/from16 v12, v17

    goto :goto_338

    .line 1771
    :cond_301
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x11

    cmp-long v10, v12, v14

    if-nez v10, :cond_30e

    move/from16 v12, v20

    goto :goto_338

    .line 1773
    :cond_30e
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x12

    cmp-long v10, v12, v14

    if-nez v10, :cond_31c

    const v12, 0x30d40

    goto :goto_338

    .line 1775
    :cond_31c
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0x13

    cmp-long v10, v12, v14

    if-nez v10, :cond_32a

    const v12, 0x7a120

    goto :goto_338

    .line 1777
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

    .line 1780
    :goto_338
    const-string v10, "select SUM(Distance) FROM HEALTH_ACTIVITY WHERE Type = 0"

    .line 1782
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v13

    invoke-interface {v13, v10, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1783
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_35d

    .line 1784
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lt v11, v12, :cond_35d

    .line 1786
    iget-object v11, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1787
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1788
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1791
    :cond_35d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_59

    .line 1731
    :pswitch_362
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v21, 0x7

    cmp-long v10, v18, v21

    if-nez v10, :cond_36e

    move v10, v12

    goto :goto_3cb

    .line 1733
    :cond_36e
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v21, 0x8

    cmp-long v10, v18, v21

    if-nez v10, :cond_37b

    move/from16 v10, v20

    goto :goto_3cb

    .line 1735
    :cond_37b
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v18

    const-wide/16 v20, 0x9

    cmp-long v10, v18, v20

    if-nez v10, :cond_387

    move v10, v14

    goto :goto_3cb

    .line 1737
    :cond_387
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v18, 0xa

    cmp-long v10, v14, v18

    if-nez v10, :cond_394

    move/from16 v10, v16

    goto :goto_3cb

    .line 1739
    :cond_394
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v14

    const-wide/16 v16, 0xb

    cmp-long v10, v14, v16

    if-nez v10, :cond_3a0

    move v10, v13

    goto :goto_3cb

    .line 1741
    :cond_3a0
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0xc

    cmp-long v10, v12, v14

    if-nez v10, :cond_3ae

    const v10, 0x4c4b40

    goto :goto_3cb

    .line 1743
    :cond_3ae
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v12

    const-wide/16 v14, 0xd

    cmp-long v10, v12, v14

    if-nez v10, :cond_3bc

    const v10, 0x989680

    goto :goto_3cb

    .line 1745
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

    .line 1748
    :goto_3cb
    const-string v12, "select SUM(TOTAL_STEP_COUNT) FROM HEALTH_SPORT"

    .line 1749
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v13

    invoke-interface {v13, v12, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1750
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3f0

    .line 1751
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lt v12, v10, :cond_3f0

    .line 1753
    iget-object v10, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1754
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1755
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1758
    :cond_3f0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_59

    .line 1697
    :pswitch_3f5
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    new-array v11, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v13, v11, v4

    .line 1698
    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v10

    invoke-virtual {v10}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v10

    .line 1700
    invoke-virtual {v9}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v13

    const-wide/16 v15, 0x5

    cmp-long v11, v13, v15

    if-nez v11, :cond_417

    const/4 v11, 0x7

    goto :goto_425

    .line 1702
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

    .line 1705
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lt v13, v11, :cond_59

    .line 1707
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

    .line 1708
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v15

    if-le v15, v12, :cond_431

    add-int/2addr v13, v3

    if-ne v13, v11, :cond_432

    .line 1711
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1712
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1713
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 1688
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

    .line 1689
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_59

    .line 1690
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDate()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    .line 1691
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 1692
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    .line 1917
    :cond_49f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4ab

    .line 1918
    invoke-direct {v0, v8}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMedalDialog(Ljava/util/List;)V

    .line 1919
    invoke-virtual {v1, v8}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->updateInTx(Ljava/lang/Iterable;)V

    :cond_4ab
    return-void

    :pswitch_data_4ac
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

.method private getAddDeviceStatus()V
    .registers 8

    .line 785
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    const v1, 0x7f08005c

    const/4 v2, 0x1

    if-eqz v0, :cond_e8

    .line 787
    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const v4, 0x7f060043

    const v5, 0x7f0d0330

    const/16 v6, 0x4d

    if-eqz v3, :cond_a5

    .line 788
    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 789
    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d032f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 791
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 792
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 793
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 794
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 796
    :cond_63
    sget v1, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    if-ne v1, v2, :cond_d5

    .line 797
    const-string v1, "GGG32"

    const-string v3, "\u6062\u590d firstComming = 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v1, v2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    goto :goto_d5

    .line 801
    :cond_74
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 803
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_d5

    .line 807
    :cond_a5
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 810
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_d5
    :goto_d5
    const/4 v1, 0x0

    .line 812
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCanAddDevice:Z

    .line 813
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12b

    .line 814
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12b

    .line 817
    :cond_e8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0d0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 819
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isCanAddDevice:Z

    .line 820
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 822
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12b
    :goto_12b
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

    .line 461
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

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
    .registers 5

    .line 494
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    .line 495
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    const-string v0, "ggf32"

    if-nez p1, :cond_21

    .line 503
    const-string p1, "BluetoothLe.getDefault().isBluetoothOpen() == false"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_db

    .line 505
    :cond_21
    const-string p1, "BluetoothLe.getDefault().isBluetoothOpen() == true"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvTagUnitDis:Landroid/widget/TextView;

    if-eqz p1, :cond_4a

    .line 507
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100771

    goto :goto_43

    :cond_3c
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100774

    :goto_43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_4a
    sget-boolean p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->updateData:Z

    if-eqz p1, :cond_b7

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "updateData_true:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->updateData:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_db

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 512
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b4

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez p1, :cond_b4

    .line 513
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_a4

    .line 514
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 515
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_94

    .line 516
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 518
    :cond_94
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda19;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateDeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mUpdateDialog:Landroid/app/Dialog;

    goto :goto_db

    .line 535
    :cond_a4
    const-string p1, "GGG3g2"

    const-string v1, "222"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 537
    sput-boolean v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->updateData:Z

    goto :goto_db

    .line 540
    :cond_b4
    sput-boolean v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->updateData:Z

    goto :goto_db

    .line 544
    :cond_b7
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 545
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_db

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez p1, :cond_db

    .line 546
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda20;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 555
    :cond_db
    :goto_db
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getAddDeviceStatus()V

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

    .line 431
    iget-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

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

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isTemperature:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_36

    .line 433
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15a

    .line 434
    :cond_36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    sub-long v9, v8, v10

    const v11, 0x7f100573

    const/4 v12, 0x0

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 437
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xc8

    sub-long v16, v6, v8

    const v18, 0x7f10038f

    const/16 v19, 0x1

    const/4 v15, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 439
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x12c

    sub-long v9, v8, v10

    const v11, 0x7f100321

    const/4 v12, 0x2

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 441
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x190

    sub-long v16, v6, v8

    const v18, 0x7f1001e4

    const/16 v19, 0x3

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 443
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long v9, v8, v10

    const v11, 0x7f100178

    const/4 v12, 0x4

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 445
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x258

    sub-long v16, v6, v8

    const v18, 0x7f100484

    const/16 v19, 0x5

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 447
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2bc

    sub-long v9, v8, v10

    const v11, 0x7f100749

    const/4 v12, 0x6

    const/4 v8, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 449
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x320

    sub-long v16, v6, v8

    const v18, 0x7f1007b0

    const/16 v19, 0x7

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 451
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x384

    sub-long v9, v8, v10

    const v11, 0x7f10074c

    const/16 v12, 0x8

    const/4 v8, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 453
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    sub-long v16, v6, v8

    const v18, 0x7f1002ee

    const/16 v19, 0x9

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;-><init>(Ljava/lang/Long;ZJII)V

    .line 455
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v3, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 458
    :cond_15a
    iget-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

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
    .registers 7

    .line 906
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    .line 907
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    const/16 v2, 0x12d

    if-le v1, v2, :cond_33

    .line 910
    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    int-to-float v1, v1

    .line 911
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 912
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 913
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_37

    :cond_33
    mul-int/lit8 v1, v1, 0xa

    .line 915
    iput v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    .line 917
    :goto_37
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$4;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$4;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    const/4 v0, 0x0

    .line 934
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    :cond_60
    return-void
.end method

.method private initHeaderView()V
    .registers 4

    .line 393
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    const v1, 0x7f09058b

    .line 394
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/SportPieView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    .line 395
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    const v1, 0x7f090677

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvKcalValue:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    const v1, 0x7f090652

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvDisValue:Landroid/widget/TextView;

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    const v1, 0x7f0906eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvTagUnitDis:Landroid/widget/TextView;

    .line 398
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    const v1, 0x7f090517

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    const v1, 0x7f0904f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    const v1, 0x7f0904e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda18;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvKcalValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 426
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvDisValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method static synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$initView$4(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$initView$7(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$linAddDevice$13(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 990
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$setUserInfo$19(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$setUserInfo$21(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private setViriAndSet()V
    .registers 3

    .line 483
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 485
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 486
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler2:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2e

    .line 489
    :cond_22
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    :goto_2e
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

    .line 1928
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentMedalIndex:I

    .line 1929
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    .line 1930
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_16

    .line 1932
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1934
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

    .line 1935
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

    .line 1937
    :cond_43
    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setMedals(Ljava/util/List;)V

    .line 1938
    iget-object v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateUser(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1939
    iget v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentMedalIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 1940
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f110119

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalDialog:Landroid/app/Dialog;

    .line 1941
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00df

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090205

    .line 1942
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09020f

    .line 1943
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0901ff

    .line 1944
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    const v4, 0x7f090797

    .line 1945
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    const v4, 0x7f090798

    .line 1946
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/TextView;

    const v4, 0x7f0900bb

    .line 1947
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/Button;

    const/16 v4, 0x14

    .line 1948
    invoke-static {v2, v4, v4, v4, v4}, Lcom/keephealth/android/util/ViewUtil;->addDefaultScreenArea(Landroid/view/View;IIII)V

    .line 1949
    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1950
    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda8;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, v3

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Ljava/util/List;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1961
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleAchieveRes()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1962
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTitle()I

    move-result p1

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1963
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTips()I

    move-result p1

    invoke-virtual {v12, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f030003

    const/16 v2, 0x28

    .line 1964
    invoke-static {p1, v2}, Lcom/keephealth/android/util/AnimationsContainer;->getInstance(II)Lcom/keephealth/android/util/AnimationsContainer;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/keephealth/android/util/AnimationsContainer;->createProgressDialogAnim(Landroid/widget/ImageView;)Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->animation:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    .line 1965
    invoke-virtual {p1}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->start()V

    .line 1966
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1967
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1968
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1969
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1970
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1971
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1972
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1973
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1974
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showScanDialog()V
    .registers 7

    .line 1582
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_12

    .line 1583
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f110310

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    .line 1585
    :cond_12
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906fc

    .line 1586
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1587
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0906e4

    .line 1588
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1592
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1593
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1594
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1595
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1596
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1597
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1598
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1599
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private yzmui(I)V
    .registers 12

    .line 589
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 590
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bing_time"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "111111_currentTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GGG32"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v1, :cond_18d

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v8, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v8, v0

    const-wide/32 v0, 0x93a80

    cmp-long v0, v8, v0

    if-lez v0, :cond_136

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1000 > 604800 a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz v0, :cond_12a

    .line 600
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v0

    if-nez v0, :cond_fa

    if-ne p1, v5, :cond_b2

    .line 604
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose2:I

    if-nez p1, :cond_9a

    .line 606
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 607
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 608
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 609
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    :cond_9a
    if-ne p1, v5, :cond_2b9

    .line 612
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 613
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 615
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    :cond_b2
    if-ne p1, v4, :cond_2b9

    .line 619
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "1000 > 604800 onClickClose2:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    if-ne p1, v5, :cond_e2

    .line 622
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 623
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 624
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 625
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    :cond_e2
    if-nez p1, :cond_2b9

    .line 627
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 628
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 629
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 630
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    goto/16 :goto_2b9

    :cond_fa
    if-ne p1, v5, :cond_112

    .line 640
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 641
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 642
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 643
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    :cond_112
    if-ne p1, v4, :cond_2b9

    .line 646
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 647
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 648
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 649
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    .line 655
    :cond_12a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 656
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2b9

    .line 659
    :cond_136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1000 < 604800:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-ne p1, v5, :cond_164

    .line 664
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 665
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_181

    :cond_164
    if-ne p1, v4, :cond_181

    .line 668
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    if-nez p1, :cond_175

    .line 669
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 670
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_181

    :cond_175
    if-ne p1, v5, :cond_181

    .line 672
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 673
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 676
    :cond_181
    :goto_181
    const-string p1, "hhhhh"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    .line 681
    :cond_18d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v0

    if-nez v0, :cond_262

    if-ne p1, v5, :cond_1c9

    .line 685
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose2:I

    if-nez p1, :cond_1b1

    .line 687
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 688
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 689
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 690
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    :cond_1b1
    if-ne p1, v5, :cond_2b9

    .line 693
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 694
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 696
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    :cond_1c9
    if-ne p1, v4, :cond_2b9

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "a == 2 onClickClose1:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "   onClickClose2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    if-nez p1, :cond_217

    .line 703
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose2:I

    if-nez p1, :cond_204

    .line 705
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 706
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 707
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    goto/16 :goto_2b9

    :cond_204
    if-ne p1, v5, :cond_2b9

    .line 710
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 711
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 712
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_2b9

    :cond_217
    if-ne p1, v5, :cond_2b9

    .line 715
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose2:I

    if-nez p1, :cond_228

    .line 717
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 718
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_257

    :cond_228
    if-ne p1, v5, :cond_257

    .line 720
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppApplication.isLoginOut:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLoginOut:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isLoginOut:Z

    if-eqz p1, :cond_24d

    .line 723
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 724
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_257

    .line 726
    :cond_24d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 727
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 730
    :cond_257
    :goto_257
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 731
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2b9

    :cond_262
    if-ne p1, v5, :cond_279

    .line 742
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 743
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 744
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 745
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_2b9

    :cond_279
    if-ne p1, v4, :cond_2b9

    .line 748
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 749
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onClickClose1:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    if-nez p1, :cond_2a8

    .line 751
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 752
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 753
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v6}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_2b9

    :cond_2a8
    if-ne p1, v5, :cond_2b9

    .line 755
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 756
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 757
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v7}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    :cond_2b9
    :goto_2b9
    return-void
.end method


# virtual methods
.method public bleTimeout(I)V
    .registers 5

    const/4 p1, 0x0

    .line 1557
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    const/16 v0, 0x64

    .line 1558
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->nowProgress:I

    .line 1559
    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->faildCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->faildCount:I

    .line 1560
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100171

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showToast(Ljava/lang/String;)V

    .line 1561
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    .line 1562
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->cancelAllTag()V

    .line 1563
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->close(I)V

    .line 1564
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v0, :cond_37

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 1565
    :cond_37
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 1566
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->startTime()V

    .line 1567
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showEcg()V

    .line 1568
    iget v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->faildCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_60

    .line 1569
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->faildCount:I

    .line 1570
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_5c

    .line 1571
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1573
    :cond_5c
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showScanDialog()V

    goto :goto_67

    .line 1575
    :cond_60
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    :goto_67
    return-void
.end method

.method public cleanHistoryData()V
    .registers 2

    .line 1614
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method public clearSocket()V
    .registers 1

    return-void
.end method

.method public connect(I)V
    .registers 3

    .line 1495
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_48

    iget-boolean p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isPausePage:Z

    if-nez p1, :cond_48

    .line 1496
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1498
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1499
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mUpdateDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1e

    .line 1500
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1502
    :cond_1e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/util/DialogHelperNew;->showUpdateDeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mUpdateDialog:Landroid/app/Dialog;

    goto :goto_4a

    :cond_2e
    const/4 p1, 0x0

    .line 1519
    sput-boolean p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->updateData:Z

    .line 1520
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result p1

    if-nez p1, :cond_4a

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez p1, :cond_4a

    .line 1521
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 1522
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getAddDeviceStatus()V

    goto :goto_4a

    .line 1526
    :cond_48
    sput-boolean v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->updateData:Z

    :cond_4a
    :goto_4a
    return-void
.end method

.method editMainMenu()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a3
        }
    .end annotation

    .line 1018
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1019
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10053c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showToast(Ljava/lang/String;)V

    goto/16 :goto_124

    :cond_1a
    const v0, 0x7f0900a3

    .line 1021
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_124

    .line 1022
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_81

    .line 1023
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getHideMenuView()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    .line 1024
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 1025
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setData(Ljava/util/List;)V

    .line 1027
    :cond_46
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1029
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1002fd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1033
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setEdit(Z)V

    goto/16 :goto_124

    .line 1035
    :cond_81
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1037
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10038c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1040
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060113

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setEdit(Z)V

    .line 1043
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e4

    move v0, v3

    .line 1044
    :goto_c3
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e4

    .line 1045
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setOrder(I)V

    .line 1046
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 1049
    :cond_e4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10e

    move v0, v3

    .line 1050
    :goto_ed
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10e

    .line 1051
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setOrder(I)V

    .line 1052
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ed

    .line 1055
    :cond_10e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1057
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1058
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_124
    :goto_124
    return-void
.end method

.method public getAddDeviceStatus2(I)V
    .registers 2

    return-void
.end method

.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c0106

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 767
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 768
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x3f8

    if-eq v0, v1, :cond_30

    const/16 p1, 0x3f9

    if-eq v0, p1, :cond_10

    goto :goto_3f

    .line 776
    :cond_10
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 777
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "USER_TOKEN"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 778
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    goto :goto_3f

    .line 770
    :cond_30
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryBean;

    if-eqz p1, :cond_3f

    .line 771
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CountryBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method img_close2()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090227
        }
    .end annotation

    .line 952
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bing_time"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    .line 953
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose2:I

    .line 954
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->setViriAndSet()V

    return-void
.end method

.method protected initView()V
    .registers 8

    .line 240
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->initView()V

    .line 241
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    .line 248
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "googlefit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/NetworkUtil;->checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 251
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 252
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance()Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->googleFitPresenter:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    .line 253
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->setActivity(Landroid/app/Activity;)V

    goto :goto_4b

    .line 255
    :cond_41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->getInstance(Landroid/app/Activity;)Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->googleFitPresenter:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    .line 260
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->barBgTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 261
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 262
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 263
    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->barBgTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setDelegate(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$BGARefreshLayoutDelegate;)V

    .line 265
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    .line 266
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setPullDownRefreshText(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->setReleaseRefreshText(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->refreshViewHolder:Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;

    invoke-virtual {v0, v3}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->setRefreshViewHolder(Lcn/bingoogolapple/refreshlayout/BGARefreshViewHolder;)V

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 270
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->initHeaderView()V

    .line 271
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getShowMenuView()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    .line 272
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    .line 273
    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setOnRVItemClickListener(Lcn/bingoogolapple/baseadapter/BGAOnRVItemClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setData(Ljava/util/List;)V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->headerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->addHeaderView(Landroid/view/View;)V

    .line 277
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    .line 278
    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/keephealth/android/views/SpaceGridItemMainMenu;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    invoke-direct {v3, v6}, Lcom/keephealth/android/views/SpaceGridItemMainMenu;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, v6, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/keephealth/android/views/SpaceGridItemMainMenuHide;

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/keephealth/android/views/SpaceGridItemMainMenuHide;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$1;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$1;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getHeaderAndFooterAdapter()Lcn/bingoogolapple/baseadapter/BGAHeaderAndFooterAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->helper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 305
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_192

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-nez v0, :cond_18c

    .line 307
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f10030b

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    const v2, 0x7f100193

    .line 309
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f100474

    .line 334
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda15;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    const v2, 0x7f100257

    .line 335
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    .line 363
    :cond_18c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_1ce

    .line 365
    :cond_192
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1ce

    .line 366
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1004a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1004a2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1004a1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda16;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    new-instance v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda17;-><init>()V

    .line 366
    invoke-static/range {v1 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 374
    :cond_1ce
    :goto_1ce
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 377
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010030

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 380
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_218

    .line 381
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_218

    .line 382
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    :cond_218
    return-void
.end method

.method synthetic lambda$connect$22$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 4

    .line 1503
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1504
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 1505
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 1507
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_27

    .line 1508
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_44

    .line 1510
    :cond_27
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1511
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_44

    .line 1513
    :cond_3b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_44
    :goto_44
    return-void
.end method

.method synthetic lambda$getReflashData$11$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 4

    .line 519
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 520
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 521
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 523
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_27

    .line 524
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10020a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_44

    .line 526
    :cond_27
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 527
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_44

    .line 529
    :cond_3b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_44
    :goto_44
    return-void
.end method

.method synthetic lambda$getReflashData$12$com-keephealth-android-ui-main-fragment-MainFragmentNewTest()V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->startTime()V

    .line 548
    const-string v0, "GGG3g2"

    const-string v1, "starttime_1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$initHeaderView$10$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 7

    .line 417
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 420
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_34

    .line 421
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 422
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    :cond_34
    return-void
.end method

.method synthetic lambda$initHeaderView$8$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 7

    .line 399
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 402
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_34

    .line 403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 404
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    :cond_34
    return-void
.end method

.method synthetic lambda$initHeaderView$9$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 7

    .line 408
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 411
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_34

    .line 412
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 413
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    :cond_34
    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 4

    .line 314
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 315
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_25

    .line 319
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x1

    .line 329
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 312
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1004a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1004a2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1004a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    new-instance v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda4;-><init>()V

    .line 312
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    :cond_3f
    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 3

    .line 353
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 354
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$initView$5$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 336
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_16

    .line 338
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    :cond_16
    const/4 v0, 0x1

    .line 348
    invoke-virtual {p0, p2, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 349
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 350
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 351
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1004a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1004a2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1004a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    new-instance v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda6;-><init>()V

    .line 351
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    :cond_59
    return-void
.end method

.method synthetic lambda$initView$6$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 3

    .line 368
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 369
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$linAddDevice$14$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 993
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1003
    invoke-virtual {p0, p2, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1004
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestSuccess$15$com-keephealth-android-ui-main-fragment-MainFragmentNewTest()V
    .registers 6

    .line 1276
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getShowMenuView()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isTemperature:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1278
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getHideMenuView()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    .line 1279
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->setData(Ljava/util/List;)V

    const/16 v0, 0x65

    .line 1280
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1281
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->showEcg()V

    .line 1283
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1284
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataStep()V

    .line 1285
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataHeart()V

    .line 1286
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataSleep()V

    .line 1287
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataSport()V

    .line 1288
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDatatBlood()V

    .line 1289
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 1291
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1292
    iget-object v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDataTemp()V

    .line 1294
    :cond_85
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEcg()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1295
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->uploadDatatEcg()V

    .line 1299
    :cond_92
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_b6

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_b6

    .line 1300
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1301
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->startTime()V

    goto :goto_bd

    .line 1303
    :cond_ae
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    goto :goto_bd

    .line 1306
    :cond_b6
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 1308
    :goto_bd
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1309
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->checkMedal()V

    .line 1311
    :cond_ce
    new-instance v0, Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/MusicUtil;-><init>(Landroid/app/Activity;Lcom/keephealth/android/views/CustomToggleButton;)V

    .line 1312
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    .line 1313
    invoke-static {}, Lcom/keephealth/android/util/MusicUtil;->getMusicPlayLists()Ljava/util/ArrayList;

    move-result-object v2

    .line 1314
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_113

    .line 1316
    iget-boolean v3, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v3, :cond_113

    .line 1317
    iget-object v3, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    if-nez v3, :cond_10d

    .line 1318
    invoke-interface {v2}, Ljava/util/List;->size()I

    const/4 v3, 0x0

    .line 1319
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/MusicPlayData;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPlayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicAppName:Ljava/lang/String;

    .line 1320
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/MusicPlayData;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/MusicPlayData;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    .line 1322
    :cond_10d
    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 1323
    invoke-virtual {v0}, Lcom/keephealth/android/util/MusicUtil;->openMusicService()V

    :cond_113
    return-void
.end method

.method synthetic lambda$setUserInfo$18$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 4

    .line 1409
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xcb

    .line 1410
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1411
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method synthetic lambda$setUserInfo$20$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 4

    .line 1444
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xcb

    .line 1445
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1446
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method synthetic lambda$showMedalDialog$24$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 2

    .line 1949
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showMedalDialog$25$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Ljava/util/List;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 7

    .line 1951
    iget p5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentMedalIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p5, v0, :cond_10

    .line 1952
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_37

    .line 1954
    :cond_10
    iget p5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentMedalIndex:I

    add-int/lit8 p5, p5, 0x1

    iput p5, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentMedalIndex:I

    .line 1955
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 1956
    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleAchieveRes()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1957
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTitle()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1958
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->medalData:Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTips()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_37
    return-void
.end method

.method synthetic lambda$showScanDialog$23$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Landroid/view/View;)V
    .registers 2

    .line 1589
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 1590
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$updateCurrentData$17$com-keephealth-android-ui-main-fragment-MainFragmentNewTest()V
    .registers 2

    .line 1388
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method synthetic lambda$updateSportVaule$16$com-keephealth-android-ui-main-fragment-MainFragmentNewTest(Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 10

    .line 1333
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    const v1, 0x7f100771

    const v2, 0x7f100774

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_a3

    if-eqz v0, :cond_a3

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "\u8fd4\u56de\u5361\u8def\u91cc:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "FF4325"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvKcalValue:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v0, v6

    .line 1343
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 1344
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v0

    .line 1346
    :cond_5f
    iget-object v6, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvDisValue:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvTagUnitDis:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_85

    :cond_7d
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v1, v1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SportPieView;->setSportGoal(I)V

    .line 1349
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result p1

    invoke-virtual {v0, p1, v5}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    goto :goto_f8

    .line 1351
    :cond_a3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvKcalValue:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b9

    .line 1354
    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v0

    .line 1356
    :cond_b9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvDisValue:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, v0, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/SportPieView;->setSportGoal(I)V

    .line 1358
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->sportDataPie:Lcom/keephealth/android/views/SportPieView;

    invoke-virtual {p1, v5, v5}, Lcom/keephealth/android/views/SportPieView;->setSportSteps(IZ)V

    .line 1359
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvTagUnitDis:Landroid/widget/TextView;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f5

    :cond_ed
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f8
    return-void
.end method

.method linAddDevice()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09032d
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v0

    if-nez v0, :cond_44

    .line 988
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 989
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f10030b

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda1;-><init>()V

    const v2, 0x7f100193

    .line 990
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f100474

    .line 991
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    const v2, 0x7f100257

    .line 992
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_5e

    .line 1009
    :cond_44
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCanAddDevice:Z

    if-eqz v0, :cond_5e

    .line 1010
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1011
    const-string v1, "from"

    const-string v2, "MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1992
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0xcb

    if-ne p2, p1, :cond_36

    .line 1994
    const-string p1, "code"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1995
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 1996
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

    .line 1997
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendUserToBle(Lcom/keephealth/android/model/bean/UserBean;)V

    :cond_36
    return-void
.end method

.method public onBGARefreshLayoutBeginLoadingMore(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onBGARefreshLayoutBeginRefreshing(Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;I)V
    .registers 5

    .line 1181
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "isConnect"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isConnect:Ljava/lang/String;

    .line 1182
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    const/4 p2, 0x1

    if-nez p1, :cond_86

    .line 1183
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_63

    const/4 p1, 0x3

    .line 1184
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getReflashData(I)V

    .line 1185
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getStepData()V

    .line 1186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    if-eqz p1, :cond_5d

    .line 1187
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result p1

    if-nez p1, :cond_57

    .line 1188
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I

    .line 1189
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 1190
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 1191
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1193
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchDate()V

    goto :goto_b8

    .line 1195
    :cond_57
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    goto :goto_b8

    .line 1198
    :cond_5d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    goto :goto_b8

    .line 1201
    :cond_63
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isConnect:Ljava/lang/String;

    if-nez p1, :cond_80

    .line 1202
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    if-nez p1, :cond_7e

    .line 1203
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showToast(Ljava/lang/String;)V

    goto :goto_80

    .line 1205
    :cond_7e
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    .line 1208
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    goto :goto_b8

    .line 1211
    :cond_86
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 1212
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "USER_TOKEN"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a5

    .line 1213
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    .line 1216
    :cond_a5
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1003a8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showToast(Ljava/lang/String;)V

    .line 1217
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    :goto_b8
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 2010
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2011
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->canRunnable:Z

    .line 2012
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_d

    .line 2013
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->clearAnimation()V

    .line 2015
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    if-eqz v0, :cond_17

    .line 2016
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->cancel()V

    const/4 v0, 0x0

    .line 2017
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

    :cond_17
    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 4

    .line 1979
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpFragment;->onHiddenChanged(Z)V

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hidden:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FDD433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    .line 1983
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->inVisible:I

    goto :goto_1f

    .line 1986
    :cond_1d
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->canRunnable:Z

    :goto_1f
    return-void
.end method

.method public onItemChildClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 4

    .line 1165
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "show"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1166
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    .line 1167
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->addLastItem(Ljava/lang/Object;)V

    .line 1168
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->removeItem(I)V

    goto :goto_49

    .line 1170
    :cond_2b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    .line 1171
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->addLastItem(Ljava/lang/Object;)V

    .line 1172
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->removeItem(I)V

    .line 1174
    :goto_49
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterHide:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideMenus:Ljava/util/List;

    .line 1175
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 940
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onPause()V

    const/4 v0, 0x1

    .line 941
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isPausePage:Z

    return-void
.end method

.method public onRVItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 12

    .line 1066
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    if-gez p3, :cond_c

    return-void

    .line 1072
    :cond_c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    .line 1073
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1074
    iget-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    if-nez p2, :cond_1d

    return-void

    .line 1077
    :cond_1d
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    .line 1078
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

    if-nez p3, :cond_99

    .line 1079
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object p2

    .line 1080
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 1081
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 1082
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1083
    const-string v2, "date"

    if-eqz p2, :cond_7a

    .line 1084
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDay()I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_8e

    .line 1086
    :cond_7a
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

    .line 1088
    :goto_8e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/sport/activity/SportRecordActivityNew;

    invoke-static {p1, p2, p3}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_3ec

    .line 1089
    :cond_99
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long p3, v4, v6

    if-nez p3, :cond_10c

    .line 1090
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object p2

    .line 1091
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

    .line 1092
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/TempInfo;

    if-eqz p2, :cond_f6

    .line 1094
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1096
    :cond_f6
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1098
    :cond_10c
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long p3, v4, v6

    if-nez p3, :cond_187

    .line 1099
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object p2

    .line 1100
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    .line 1101
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

    if-eqz p2, :cond_16d

    .line 1103
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    goto/16 :goto_3ec

    .line 1105
    :cond_16d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    goto/16 :goto_3ec

    .line 1107
    :cond_187
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long p3, v4, v6

    if-nez p3, :cond_202

    .line 1108
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object p2

    .line 1109
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

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

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 1110
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    if-eqz p2, :cond_1e8

    .line 1112
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result p2

    invoke-static {p3, v0, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_3ec

    .line 1114
    :cond_1e8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    invoke-static {p2, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->startActivity(Landroid/app/Activity;Ljava/util/Date;)V

    goto/16 :goto_3ec

    .line 1116
    :cond_202
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long p3, v4, v6

    if-nez p3, :cond_281

    .line 1117
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object p2

    .line 1118
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->SsValue:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->FzValue:Lorg/greenrobot/greendao/Property;

    .line 1119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1118
    invoke-virtual {p2, p3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    .line 1119
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz p2, :cond_26b

    .line 1121
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1123
    :cond_26b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1125
    :cond_281
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x6

    cmp-long p3, v4, v6

    if-nez p3, :cond_2f4

    .line 1126
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object p2

    .line 1127
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

    .line 1128
    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz p2, :cond_2de

    .line 1130
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1132
    :cond_2de
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1134
    :cond_2f4
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long p3, v4, v6

    if-nez p3, :cond_357

    .line 1135
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object p2

    .line 1136
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    new-array p3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz p2, :cond_341

    .line 1138
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getYear()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1140
    :cond_341
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->startActivity(Landroid/app/Activity;III)V

    goto/16 :goto_3ec

    .line 1142
    :cond_357
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    cmp-long p1, v0, v4

    if-nez p1, :cond_370

    .line 1143
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_3ec

    .line 1144
    :cond_370
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x9

    cmp-long p1, v0, v4

    if-nez p1, :cond_3b4

    .line 1145
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object p1

    .line 1146
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    if-nez p1, :cond_3aa

    .line 1148
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1149
    const-string p2, "from"

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1150
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;

    invoke-static {p2, p3, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_3ec

    .line 1152
    :cond_3aa
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3ec

    .line 1154
    :cond_3b4
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0xa

    cmp-long p1, p1, v0

    if-nez p1, :cond_3ec

    .line 1155
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "USER_TOKEN"

    const-string p3, ""

    invoke-static {p1, p2, p3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3de

    .line 1156
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcom/keephealth/android/ui/mine/activity/FamilyActivity;

    invoke-static {p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3ec

    .line 1158
    :cond_3de
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100750

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showToast(Ljava/lang/String;)V

    :cond_3ec
    :goto_3ec
    return-void
.end method

.method public onResume()V
    .registers 8

    .line 840
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onResume()V

    .line 841
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GGG3g2"

    const/4 v3, 0x1

    if-nez v0, :cond_2c

    .line 842
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    if-eqz v0, :cond_20

    .line 843
    const-string v0, "444"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v0, v3}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    goto :goto_3c

    .line 846
    :cond_20
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    if-nez v0, :cond_3c

    .line 848
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    goto :goto_3c

    .line 852
    :cond_2c
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    if-eqz v0, :cond_3c

    .line 853
    const-string v0, "555"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v0, v3}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 855
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    .line 858
    :cond_3c
    :goto_3c
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getStepData()V

    .line 859
    invoke-direct {p0, v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getReflashData(I)V

    .line 860
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    if-eqz v0, :cond_75

    .line 861
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRegister:Z

    if-nez v0, :cond_54

    .line 862
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    invoke-virtual {v0, v3}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->beginRefreshing(I)V

    .line 863
    const-string v0, "66666"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_54
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 866
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 867
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "USER_TOKEN"

    const-string v4, ""

    invoke-static {v0, v2, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 868
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getUserInfo()V

    .line 872
    :cond_75
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    if-ne v0, v3, :cond_101

    .line 873
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bbe\u7f6e\u4f53\u91cd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FF43232"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    const/16 v3, 0x12d

    if-le v2, v3, :cond_bf

    .line 877
    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    int-to-float v2, v2

    .line 878
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 879
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 880
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_c3

    :cond_bf
    mul-int/lit8 v2, v2, 0xa

    .line 882
    iput v2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    .line 884
    :goto_c3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWeight\u2014\u20142:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FF4325"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getAge()I

    move-result v4

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mWeight:I

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getUserInfo(IIIII)[B

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$3;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$3;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 902
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    :cond_101
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 2003
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onStop()V

    const/4 v0, 0x1

    .line 2004
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->inVisible:I

    return-void
.end method

.method protected onVisiable()V
    .registers 5

    .line 465
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->onVisiable()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isPausePage:Z

    .line 467
    sget v1, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 468
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    .line 471
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 473
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "isConnect"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isConnect:Ljava/lang/String;

    .line 474
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isPausePage:Z

    .line 476
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 479
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->setViriAndSet()V

    const/4 v0, 0x2

    .line 480
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getReflashData(I)V

    return-void
.end method

.method public oninVisiable()V
    .registers 3

    .line 828
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpFragment;->oninVisiable()V

    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->isPausePage:Z

    .line 830
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 831
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 832
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    :cond_1e
    const/4 v0, 0x0

    .line 834
    sput v0, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    return-void
.end method

.method public refTimeOut()V
    .registers 2

    const/4 v0, 0x0

    .line 1379
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    return-void
.end method

.method public requestCalander(Z)V
    .registers 2

    return-void
.end method

.method public requestFaild()V
    .registers 2

    .line 1366
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1367
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->bleTimeout(I)V

    :cond_e
    return-void
.end method

.method public requestSuccess()V
    .registers 3

    .line 1275
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda21;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1327
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->googleFitPresenter:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->saveData()V

    return-void
.end method

.method public saveFaild()V
    .registers 1

    return-void
.end method

.method public saveUserBean(I)V
    .registers 4

    .line 1472
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 1473
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1474
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1475
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "USER_TOKEN_BASE"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 1476
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 1477
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER_BASE"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    return-void
.end method

.method public scrollTop()V
    .registers 3

    .line 1551
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setUserInfo(Lcom/keephealth/android/greendao/bean/UserInfoBean;)V
    .registers 10

    .line 1393
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 1394
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    if-eqz p1, :cond_1d5

    .line 1396
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1397
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setEmail(Ljava/lang/String;)V

    .line 1399
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "userInfoBean:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GGF32"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->isEmailVerified()Z

    move-result v1

    iput-boolean v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->emailIsVerifity:Z

    .line 1401
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->isEmailVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setEmailVerified(Z)V

    .line 1402
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f100525

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "isshowchoose"

    if-nez v1, :cond_114

    .line 1403
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b2

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v7, "null"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1404
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-eq v1, v5, :cond_7a

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-ne v1, v4, :cond_ac

    .line 1405
    :cond_7a
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1408
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda22;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    new-instance v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda23;

    invoke-direct {v5}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v1, v3, v4, v5}, Lcom/keephealth/android/util/DialogHelperNew;->showCountryDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 1414
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_ac
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setCountryCode(Ljava/lang/String;)V

    goto :goto_b9

    .line 1419
    :cond_b2
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setCountryCode(Ljava/lang/String;)V

    .line 1421
    :goto_b9
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->isEmailVerified()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_cd

    .line 1423
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1424
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto/16 :goto_158

    .line 1426
    :cond_cd
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "had_set"

    invoke-static {p1, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;

    .line 1427
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "resume_1\uff1a"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GGG32"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_158

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 1429
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1430
    const-string p1, "resume_2"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1432
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_158

    .line 1439
    :cond_114
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-eq v1, v5, :cond_126

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result v1

    if-eq v1, v4, :cond_126

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getLoginType()I

    move-result p1

    if-nez p1, :cond_158

    .line 1440
    :cond_126
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_158

    .line 1443
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda24;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    new-instance v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda25;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {p1, v1, v2, v3}, Lcom/keephealth/android/util/DialogHelperNew;->showCountryDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 1449
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :cond_158
    :goto_158
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 1455
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "userBean.getEmail():"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  userBean.isEmailVerified():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GGGr32"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1ae

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result p1

    if-nez p1, :cond_1ae

    .line 1458
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_go_yanz2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10074e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d2

    .line 1459
    :cond_1ae
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d2

    .line 1460
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result p1

    if-nez p1, :cond_1d2

    .line 1462
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_go_yanz2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100752

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    :cond_1d2
    :goto_1d2
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->setViriAndSet()V

    :cond_1d5
    return-void
.end method

.method tvClose()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09072a
        }
    .end annotation

    .line 945
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    const/4 v0, 0x1

    .line 946
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->onClickClose1:I

    .line 947
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->setViriAndSet()V

    .line 948
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "onClickClose1"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method tvGoset()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090740
        }
    .end annotation

    .line 958
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method tv_go_yanz()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090741
        }
    .end annotation

    .line 962
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 965
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 967
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 968
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 969
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_38

    :cond_34
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    :goto_38
    const-string v0, "email"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v0, "title"

    const-string v2, "main"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v0, "info"

    invoke-virtual {v1, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v0, "FFDD221"

    const-string v2, "main_nfo:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_94

    .line 974
    :cond_5a
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 975
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v0

    if-nez v0, :cond_94

    .line 977
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 978
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 979
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_82

    goto :goto_86

    :cond_82
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    :goto_86
    const-string v0, "username"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_94
    :goto_94
    return-void
.end method

.method public unConnect(I)V
    .registers 4

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggg334"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1537
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->nowProgress:I

    .line 1538
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    .line 1539
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressIndex:I

    .line 1540
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1541
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->progressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1542
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 1543
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopTime()V

    .line 1544
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->stopWeather()V

    .line 1545
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;->endRefreshing(I)V

    .line 1546
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getAddDeviceStatus()V

    return-void
.end method

.method public updateCurrentData(Lcom/keephealth/android/greendao/bean/HealthHeartRate;Lcom/keephealth/android/greendao/bean/TempInfo;)V
    .registers 3

    .line 1386
    sput-object p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 1387
    sput-object p2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 1388
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateProgress(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1373
    iput v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I

    .line 1374
    iput p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->nowProgress:I

    return-void
.end method

.method public updateSportData(Lcom/keephealth/android/greendao/bean/HealthActivity;)V
    .registers 6

    const/4 p1, 0x0

    .line 1606
    :goto_1
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 1607
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

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

    .line 1608
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyItemChangedWrapper(I)V

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public updateSportVaule(Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 4

    .line 1332
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTempUnit()V
    .registers 6

    const/4 v0, 0x0

    .line 1634
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1635
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

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

    .line 1636
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

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

    .line 1618
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1619
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

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

    .line 1620
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

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

    .line 1626
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1627
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->showMenus:Ljava/util/List;

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

    .line 1628
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mAdapterShow:Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyItemChangedWrapper(I)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method
