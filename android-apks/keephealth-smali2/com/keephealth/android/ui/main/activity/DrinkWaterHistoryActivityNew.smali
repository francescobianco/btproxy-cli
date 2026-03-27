.class public Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DrinkWaterHistoryActivityNew.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;
.implements Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;",
        "Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final REQUEST_ADD_WATER:I

.field private final REQUEST_EDIT_WATER:I

.field barLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field private dayItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;"
        }
    .end annotation
.end field

.field private detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field differenceTime:I

.field differenceTimeMin:I

.field drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

.field index:I

.field isDeleteWater:Z

.field isGetWaterData:Z

.field ivNextDate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902bd
    .end annotation
.end field

.field ivPreDate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c5
    .end annotation
.end field

.field length:I

.field lengthData:I

.field llChart:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090361
    .end annotation
.end field

.field llView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903b1
    .end annotation
.end field

.field private mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

.field mBarChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d8
    .end annotation
.end field

.field mNestedScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903da
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private mSeachDay:I

.field private mSeachMonth:I

.field private mSeachYear:I

.field private onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field rlAvg:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904db
    .end annotation
.end field

.field rlTodayDrink:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09051b
    .end annotation
.end field

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field private selectIndex:I

.field showData:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09056a
    .end annotation
.end field

.field sineWave:Lcom/keephealth/android/views/SineWaveView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090571
    .end annotation
.end field

.field startY:F

.field private targetWater:F

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field private totalWater:F

.field tvAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061d
    .end annotation
.end field

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090640
    .end annotation
.end field

.field tvDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090648
    .end annotation
.end field

.field tvDrinkResidue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090657
    .end annotation
.end field

.field tvMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068a
    .end annotation
.end field

.field tvNextTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090692
    .end annotation
.end field

.field tvRecordTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a9
    .end annotation
.end field

.field tvResidue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b3
    .end annotation
.end field

.field tvSixMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906c1
    .end annotation
.end field

.field tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e6
    .end annotation
.end field

.field tvTagAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e7
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f2
    .end annotation
.end field

.field tvTotal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ff
    .end annotation
.end field

.field tvValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09070c
    .end annotation
.end field

.field tvYear:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09071b
    .end annotation
.end field

.field userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 181
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    const/16 v0, 0xc8

    .line 184
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->REQUEST_ADD_WATER:I

    const/16 v0, 0x12c

    .line 185
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->REQUEST_EDIT_WATER:I

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F

    .line 187
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->startY:F

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->index:I

    .line 193
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->length:I

    .line 194
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->lengthData:I

    .line 195
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isGetWaterData:Z

    .line 397
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$6;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->dayItem:Ljava/util/List;

    .line 602
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTime:I

    .line 603
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->differenceTimeMin:I

    .line 881
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isDeleteWater:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I
    .registers 1

    .line 104
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;I)I
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I
    .registers 1

    .line 104
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;I)I
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deleteWater(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I
    .registers 1

    .line 104
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;I)I
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I
    .registers 1

    .line 104
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selectIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;I)I
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selectIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V
    .registers 1

    .line 104
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->changeDateUpdateUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F
    .registers 1

    .line 104
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;F)F
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->totalWater:F

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)F
    .registers 1

    .line 104
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F

    return p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 589
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    const/4 v4, 0x2

    .line 592
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    const/4 v3, 0x5

    .line 593
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 594
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 597
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private deleteWater(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V
    .registers 9

    .line 921
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 925
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 927
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMonth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v2, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 926
    invoke-virtual {v1, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 927
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    .line 928
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 929
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->update(Ljava/lang/Object;)V

    .line 931
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_9b

    .line 932
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    goto :goto_c4

    .line 933
    :cond_9b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_a9

    .line 934
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getMonthData()V

    goto :goto_c4

    .line 935
    :cond_a9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_b7

    .line 936
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getSixMonthData()V

    goto :goto_c4

    .line 937
    :cond_b7
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_c4

    .line 938
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getOneYearData()V

    :cond_c4
    :goto_c4
    const/16 p1, 0x3f1

    .line 940
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    return-void
.end method

.method private initmBarChart()V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$3;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 330
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v2, 0x4

    .line 332
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 333
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 334
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 335
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 336
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 337
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    const/4 v2, 0x1

    .line 340
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 341
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 342
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v3, 0x40800000    # 4.0f

    .line 343
    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 344
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 345
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 346
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$4;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    return-void
.end method

.method static synthetic lambda$addWater$1(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$addWater$2(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$reBackDayData$3(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)I
    .registers 4

    .line 608
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 11

    .line 463
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 464
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 465
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$11;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060113

    const v2, 0x7f08006d

    const/4 v3, 0x0

    const v4, 0x7f060137

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eq p1, v0, :cond_167

    const/4 v0, 0x2

    if-eq p1, v0, :cond_fe

    const/4 v0, 0x3

    if-eq p1, v0, :cond_94

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2a

    goto/16 :goto_1d5

    .line 515
    :cond_2a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getOneYearData()V

    .line 519
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 522
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 523
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llChart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1d5

    .line 499
    :cond_94
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getSixMonthData()V

    .line 503
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 506
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 511
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llChart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1d5

    .line 483
    :cond_fe
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getMonthData()V

    .line 487
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 489
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llChart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1d5

    .line 467
    :cond_167
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget v7, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v8, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {p1, v0, v7, v8}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    .line 471
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llChart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1d5
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method addWater()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09029d
        }
    .end annotation

    const v0, 0x7f09029d

    const-wide/16 v1, 0x3e8

    .line 414
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 415
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mAdapter:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_37

    const v0, 0x7f100683

    .line 418
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda3;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showLoginDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    return-void

    .line 425
    :cond_37
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 426
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showToast(Ljava/lang/String;)V

    goto :goto_5d

    .line 428
    :cond_56
    const-class v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    const/16 v1, 0xc8

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;I)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method changeNextDay()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902bd
        }
    .end annotation

    const v0, 0x7f0902bd

    const-wide/16 v1, 0x1f4

    .line 554
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_72

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 556
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 557
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 558
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    const/4 v2, 0x2

    .line 559
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    const/4 v0, 0x5

    .line 560
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    .line 561
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz v0, :cond_65

    .line 562
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 563
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 564
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 566
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    :cond_72
    return-void
.end method

.method changePreDay()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c5
        }
    .end annotation

    const v0, 0x7f0902c5

    const-wide/16 v1, 0x1f4

    .line 571
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_72

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 573
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 574
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 575
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    const/4 v2, 0x2

    .line 576
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    const/4 v0, 0x5

    .line 577
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    .line 578
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz v0, :cond_65

    .line 579
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 580
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 581
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 583
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    :cond_72
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c004a

    return v0
.end method

.method protected initView()V
    .registers 8

    .line 198
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 199
    new-instance v0, Lcom/keephealth/android/util/ble/WaterDataHandler;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/WaterDataHandler;-><init>()V

    .line 200
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 201
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    .line 202
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterGoalDao()Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->drinkWaterGoalDao:Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;

    .line 203
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_40

    .line 204
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v1

    if-nez v1, :cond_38

    const/high16 v1, 0x44e10000    # 1800.0f

    goto :goto_3d

    :cond_38
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v1

    int-to-float v1, v1

    :goto_3d
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F

    goto :goto_7b

    .line 205
    :cond_40
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v1

    if-ne v1, v2, :cond_62

    .line 206
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v1

    if-nez v1, :cond_52

    const v1, 0x427d70a4    # 63.36f

    goto :goto_5b

    :cond_52
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3d102de0    # 0.0352f

    mul-float/2addr v1, v3

    :goto_5b
    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F

    goto :goto_7b

    .line 208
    :cond_62
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v1

    if-nez v1, :cond_6c

    const v1, 0x42735c28    # 60.839996f

    goto :goto_75

    :cond_6c
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3d0a71de    # 0.0338f

    mul-float/2addr v1, v3

    :goto_75
    invoke-static {v1}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F

    .line 210
    :goto_7b
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->bgView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100749

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 212
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selectIndex:I

    .line 213
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v4, 0x14

    invoke-virtual {v3, v1, v4}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 214
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 215
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    new-instance v3, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v3}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 217
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_104

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_104

    .line 218
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "YEAR"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    .line 219
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MONTH"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    .line 220
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DAY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    .line 221
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iput v4, v3, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 222
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iput v4, v3, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 223
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    iput v4, v3, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 226
    :cond_104
    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 227
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rightImg:Landroid/widget/ImageView;

    const v4, 0x7f0d0106

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rightImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->initmBarChart()V

    .line 243
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz v3, :cond_183

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result v3

    if-eqz v3, :cond_183

    .line 244
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v3

    if-nez v3, :cond_13b

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    goto :goto_190

    .line 247
    :cond_13b
    iput-boolean v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isGetWaterData:Z

    .line 248
    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->queryWaterList(I)Ljava/util/List;

    move-result-object v3

    .line 249
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showLoading()V

    .line 250
    :goto_144
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_190

    .line 251
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u559d\u6c34\u63a5\u53e3\u6570\u636e:"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_173

    .line 253
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    new-instance v6, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;

    invoke-direct {v6, p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Lcom/keephealth/android/util/ble/WaterDataHandler;)V

    invoke-virtual {v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_180

    .line 283
    :cond_173
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_180
    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    .line 288
    :cond_183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    .line 290
    :cond_190
    :goto_190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 295
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$2;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DrinkWaterHistoryActivityNew(Landroid/view/View;)V
    .registers 3

    .line 229
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 231
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 233
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 237
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_26
    :goto_26
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 852
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_8

    return-void

    :cond_8
    if-eq p1, p3, :cond_71

    const/16 p2, 0x12c

    if-eq p1, p2, :cond_10

    goto/16 :goto_ae

    .line 867
    :cond_10
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_ae

    .line 868
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result p1

    if-nez p1, :cond_2f

    .line 869
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result p1

    if-nez p1, :cond_27

    const/high16 p1, 0x44e10000    # 1800.0f

    goto :goto_2c

    :cond_27
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result p1

    int-to-float p1, p1

    :goto_2c
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F

    goto :goto_63

    .line 870
    :cond_2f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4e

    .line 871
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result p1

    if-nez p1, :cond_42

    const p1, 0x427d70a4    # 63.36f

    goto :goto_4b

    :cond_42
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3d102de0    # 0.0352f

    mul-float/2addr p1, p2

    :goto_4b
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F

    goto :goto_63

    .line 873
    :cond_4e
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result p1

    if-nez p1, :cond_58

    const p1, 0x42735c28    # 60.839996f

    goto :goto_61

    :cond_58
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3d0a71de    # 0.0338f

    mul-float/2addr p1, p2

    :goto_61
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->targetWater:F

    .line 875
    :goto_63
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    goto :goto_ae

    .line 856
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_85

    .line 857
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I

    iget p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    goto :goto_ae

    .line 858
    :cond_85
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_93

    .line 859
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getMonthData()V

    goto :goto_ae

    .line 860
    :cond_93
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_a1

    .line 861
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getSixMonthData()V

    goto :goto_ae

    .line 862
    :cond_a1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, p2, :cond_ae

    .line 863
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getOneYearData()V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090648,
            0x7f0906c1,
            0x7f09068a,
            0x7f09071b
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 547
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 544
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 541
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 538
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    :goto_1f
    return-void

    :sswitch_data_20
    .sparse-switch
        0x7f090648 -> :sswitch_1a
        0x7f09068a -> :sswitch_14
        0x7f0906c1 -> :sswitch_e
        0x7f09071b -> :sswitch_8
    .end sparse-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 13

    .line 884
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->dayItem:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 885
    sget-object p2, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, v0}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 886
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 887
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 888
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v1

    if-nez v1, :cond_40

    const p1, 0x7f100258

    .line 889
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showToast(Ljava/lang/String;)V

    goto :goto_74

    :cond_40
    const/4 v1, 0x1

    .line 891
    iput-boolean v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isDeleteWater:Z

    .line 892
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showLoading()V

    .line 893
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v9

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMonth()I

    move-result v3

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getDay()I

    move-result v4

    .line 894
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getHour()I

    move-result v5

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMinuter()I

    move-result v6

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v8

    const/4 v1, 0x3

    move v7, v0

    .line 893
    invoke-static/range {v1 .. v8}, Lcom/keephealth/android/util/ble/CmdHelper;->setWater(IIIIIIII)[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Ljava/lang/String;ILcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V

    invoke-virtual {v9, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_74

    .line 916
    :cond_71
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deleteWater(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V

    :goto_74
    return-void
.end method

.method public reBackDayData(Ljava/util/List;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;I)V"
        }
    .end annotation

    .line 606
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->dayItem:Ljava/util/List;

    if-eqz p1, :cond_14

    .line 607
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_14

    .line 608
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->dayItem:Ljava/util/List;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 611
    :cond_14
    new-instance p2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;

    invoke-direct {p2, p0, p3, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$7;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;ILjava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reBackMonthData(Ljava/util/List;IILjava/util/Date;Ljava/util/Date;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;",
            ">;II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 753
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff5e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlAvg:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 755
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTagAvg:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100266

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u65e5\u5747\u559d\u6c34\u91cf:  "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\u559d\u6c34\u91cf"

    invoke-static {v6, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v4

    const v6, 0x3d102de0    # 0.0352f

    const v7, 0x3d0a71de    # 0.0338f

    const-string v8, " ml"

    const-string v9, " oz"

    const/4 v10, 0x1

    if-nez v4, :cond_ad

    .line 758
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTotal:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "ml"

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 759
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvAvg:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_140

    .line 760
    :cond_ad
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v4

    const-string v11, "oz"

    if-ne v4, v10, :cond_fc

    .line 761
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTotal:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 762
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvAvg:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_140

    .line 764
    :cond_fc
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTotal:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-static {v2}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 765
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvAvg:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_140
    if-eqz v1, :cond_391

    .line 768
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_391

    .line 769
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 770
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    .line 771
    :goto_153
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x5

    if-ge v4, v11, :cond_2ab

    .line 772
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v11

    int-to-float v11, v11

    .line 773
    new-instance v13, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v14, v4

    invoke-direct {v13, v14, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 774
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 775
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v11

    if-lez v11, :cond_180

    .line 776
    iput v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->selectIndex:I

    .line 778
    :cond_180
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v11

    if-nez v11, :cond_1a7

    .line 779
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_1f8

    .line 780
    :cond_1a7
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v11

    if-ne v11, v10, :cond_1d4

    .line 781
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v6

    invoke-static {v14}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    goto :goto_1f8

    .line 783
    :cond_1d4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v7

    invoke-static {v14}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 786
    :goto_1f8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v13, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v11, v13, :cond_27f

    .line 789
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v14, "01"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v14, "\n"

    if-nez v11, :cond_249

    if-nez v4, :cond_22a

    goto :goto_249

    .line 792
    :cond_22a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    .line 790
    :cond_249
    :goto_249
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v15}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x4

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    .line 794
    :cond_27f
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v11, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v6, v11, :cond_297

    .line 795
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    .line 797
    :cond_297
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a4
    add-int/lit8 v4, v4, 0x1

    const v6, 0x3d102de0    # 0.0352f

    goto/16 :goto_153

    .line 801
    :cond_2ab
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    const/high16 v4, 0x41200000    # 10.0f

    .line 802
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 803
    const-string v4, "#999999"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 804
    new-instance v4, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$8;

    invoke-direct {v4, v0, v3}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$8;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 810
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v4, :cond_2d3

    const/16 v3, 0xc

    .line 811
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_2d6

    .line 813
    :cond_2d3
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 816
    :goto_2d6
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 817
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 818
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v6, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v7

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v8

    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v11, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v9, v11}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 819
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 820
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 821
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 822
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 823
    new-instance v1, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "Statistics Vienna 2014"

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 824
    const-string v2, "#79CAFD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 825
    const-string v2, "#3DB4FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 826
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 827
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 829
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 830
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 832
    new-instance v2, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v3, ""

    invoke-direct {v2, v5, v3, v10}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, -0x1

    .line 833
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 834
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 835
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 836
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 837
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v3, 0x1e

    invoke-virtual {v2, v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 838
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 839
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 840
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$9;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$9;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_391
    return-void
.end method

.method setGoal()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090518
        }
    .end annotation

    const v0, 0x7f090518

    const-wide/16 v1, 0x3e8

    .line 435
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 436
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-nez v0, :cond_20

    .line 437
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showToast(Ljava/lang/String;)V

    goto :goto_3e

    .line 439
    :cond_20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 440
    const-string v1, "from"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v1, 0x7f100273

    .line 441
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-class v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    const/16 v2, 0x12c

    invoke-static {p0, v1, v0, v2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method setNext()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904fd
        }
    .end annotation

    const v0, 0x7f0904fd

    const-wide/16 v1, 0x3e8

    .line 449
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 450
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-nez v0, :cond_20

    .line 451
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showToast(Ljava/lang/String;)V

    goto :goto_3e

    .line 453
    :cond_20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    const-string v1, "from"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v1, 0x7f100748

    .line 455
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-class v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    const/16 v2, 0x12c

    invoke-static {p0, v1, v0, v2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 373
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 374
    new-array v1, v1, [Ljava/lang/String;

    .line 376
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 378
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$5;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    .line 391
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 378
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 394
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
