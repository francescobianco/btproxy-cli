.class public Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "WomenHealthOldActivity.java"


# instance fields
.field private final REQUET_MAKELOVE:I

.field private final REQUET_SET:I

.field private final REQUET_SYMPTOM:I

.field private cDate:[I

.field private calPregnancyNumber:I

.field calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900cf
    .end annotation
.end field

.field private connLastOpen:I

.field private currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

.field private currentMood:I

.field private currentRows:I

.field day:I

.field private dayPre:Ljava/lang/String;

.field private dura:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private firstMenuralData:I

.field private firstPregnancyData:I

.field hideDate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b1
    .end annotation
.end field

.field private home:Ljava/lang/String;

.field ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e1
    .end annotation
.end field

.field imgMood1:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090210
    .end annotation
.end field

.field imgMood2:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090211
    .end annotation
.end field

.field imgMood3:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090212
    .end annotation
.end field

.field imgMood4:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090213
    .end annotation
.end field

.field imgMood5:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090214
    .end annotation
.end field

.field private isCanSetPregnancy:Z

.field private isLessOrEqual:Z

.field itMen:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026f
    .end annotation
.end field

.field itSymptom:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field

.field private lastNextMunalDay:I

.field private lastNextMunalEndDay:I

.field private lastNextMunalEndMonth:I

.field private lastNextMunalEndYear:I

.field private lastNextMunalMonth:I

.field private lastNextMunalYear:I

.field lin_mood_makelove:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033b
    .end annotation
.end field

.field llMenstrual:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038a
    .end annotation
.end field

.field private maxForeMunalNumber:I

.field private maxMunalTimes:I

.field minpreMunalDayBetween:I

.field month:I

.field private monthPre:Ljava/lang/String;

.field private monthViewHeight:I

.field private nextMunalDayBetween:I

.field private nextPosition:I

.field ninetyDaysAfter:Ljava/util/Calendar;

.field private objectAnimatorTranslate:Landroid/animation/ObjectAnimator;

.field private objectAnimatorTranslateDown:Landroid/animation/ObjectAnimator;

.field oneEightyDaysBefore:Ljava/util/Calendar;

.field private perimeter:Ljava/lang/String;

.field private preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

.field preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

.field private preMunalDayBetween:I

.field private prePosition:I

.field rlTips:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090519
    .end annotation
.end field

.field private scrollDay:I

.field private scrollMonth:I

.field private scrollYear:I

.field showDate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09056b
    .end annotation
.end field

.field starBarDysm:Lcom/keephealth/android/views/StarBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090597
    .end annotation
.end field

.field starBarFlow:Lcom/keephealth/android/views/StarBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090598
    .end annotation
.end field

.field titleDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f1
    .end annotation
.end field

.field tvSymptom:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e5
    .end annotation
.end field

.field private vibrator:Landroid/os/Vibrator;

.field womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

.field year:I

.field private yearPre:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 121
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getCurrentDate()[I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    .line 127
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    .line 128
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    const/16 v0, 0x64

    .line 129
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->REQUET_SYMPTOM:I

    const/16 v0, 0xc8

    .line 130
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->REQUET_MAKELOVE:I

    const/16 v0, 0x12c

    .line 131
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->REQUET_SET:I

    const/4 v0, 0x0

    .line 1520
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    .line 2269
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->minpreMunalDayBetween:I

    const/4 v0, 0x1

    .line 3064
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isCanSetPregnancy:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;II)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    return p0
.end method

.method static synthetic access$1202(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    return p1
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    return p0
.end method

.method static synthetic access$1302(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    return p1
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    return p0
.end method

.method static synthetic access$1402(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    return p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->prePosition:I

    return p0
.end method

.method static synthetic access$1602(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->prePosition:I

    return p1
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextPosition:I

    return p0
.end method

.method static synthetic access$1702(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextPosition:I

    return p1
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Z
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->onlyOneMunalData()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;IZ)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setMood(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;IIII)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentMood:I

    return p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setMakeLove()V

    return-void
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setSymptom()V

    return-void
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;ZIII)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuData(ZIII)V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateOpenNext(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;IZIII)V
    .registers 6

    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastMunalData(IZIII)V

    return-void
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndYear:I

    return p0
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndMonth:I

    return p0
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndDay:I

    return p0
.end method

.method static synthetic access$2900(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;ILjava/util/Calendar;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;ZILjava/lang/String;IIILjava/util/Calendar;)V
    .registers 8

    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;III)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearPrePregnancy(III)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->sendWomenHealthData(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->objectAnimatorTranslateDown:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Z)Z
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    return p0
.end method

.method private calLastEndMunalDate(IIIZI)Z
    .registers 14

    .line 2192
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p5

    .line 2193
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    aget v3, p5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    aget v7, p5, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2194
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2193
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2194
    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    :cond_43
    :goto_43
    if-eqz v0, :cond_a8

    .line 2195
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v6, :cond_a8

    .line 2196
    aget v0, p5, v2

    aget v1, p5, v6

    aget p5, p5, v3

    invoke-static {v0, v1, p5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p5

    .line 2197
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v4, p5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v7, p5, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v7, p5, v3

    .line 2198
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2197
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2198
    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_43

    .line 2199
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v1

    if-ne v1, v6, :cond_43

    .line 2200
    aget v1, p5, v2

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->year:I

    .line 2201
    aget v1, p5, v6

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->month:I

    .line 2202
    aget v1, p5, v3

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->day:I

    goto :goto_43

    .line 2205
    :cond_a8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p5

    const/16 v0, 0xb

    .line 2206
    invoke-virtual {p5, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 2207
    invoke-virtual {p5, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 2208
    invoke-virtual {p5, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 2209
    invoke-virtual {p5, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 2210
    invoke-virtual {p5, v3, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2211
    invoke-virtual {p5, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 2213
    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->year:I

    if-eqz p2, :cond_1f1

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->month:I

    if-eqz p3, :cond_1f1

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->day:I

    if-eqz v0, :cond_1f1

    .line 2214
    invoke-static {p5, p2, p3, v0}, Lcom/keephealth/android/util/DateUtil;->isDateNowToday(Ljava/util/Calendar;III)Z

    move-result p2

    if-eqz p2, :cond_1e5

    .line 2215
    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->year:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->month:I

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->day:I

    invoke-static {p2, p3, v0}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object p2

    .line 2216
    invoke-static {p2, p5}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p2

    if-eqz p2, :cond_fb

    .line 2217
    invoke-virtual {p5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndYear:I

    .line 2218
    invoke-virtual {p5, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v6

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndMonth:I

    .line 2219
    invoke-virtual {p5, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndDay:I

    return v6

    .line 2223
    :cond_fb
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->year:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->month:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->day:I

    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2224
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    new-array v0, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v4, p1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget p1, p1, v3

    .line 2225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v0, v6

    .line 2224
    invoke-virtual {p2, p3, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2225
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p2, v2

    :goto_144
    if-eqz p1, :cond_1f1

    .line 2228
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object p3

    .line 2229
    invoke-static {p3, p5}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p3

    if-eqz p3, :cond_16f

    .line 2230
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndYear:I

    .line 2231
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndMonth:I

    .line 2232
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndDay:I

    return v6

    .line 2235
    :cond_16f
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    invoke-static {p3, v0, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2236
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v1, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v1, v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v5, p1, v3

    .line 2237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v1, v6

    .line 2236
    invoke-virtual {p3, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    .line 2237
    invoke-virtual {p3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p4, :cond_1c0

    return v2

    :cond_1c0
    if-eqz p3, :cond_1d5

    .line 2242
    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v6, :cond_1d5

    .line 2243
    aget p2, p1, v2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndYear:I

    .line 2244
    aget p2, p1, v6

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndMonth:I

    .line 2245
    aget p1, p1, v3

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndDay:I

    return v6

    .line 2251
    :cond_1d5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    if-le p2, p1, :cond_1e0

    goto :goto_1f1

    :cond_1e0
    add-int/lit8 p2, p2, 0x1

    move-object p1, p3

    goto/16 :goto_144

    .line 2257
    :cond_1e5
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->year:I

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndYear:I

    .line 2258
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->month:I

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndMonth:I

    .line 2259
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->day:I

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndDay:I

    :cond_1f1
    :goto_1f1
    return v2
.end method

.method private caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 3

    .line 2381
    new-instance p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$10;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearForecastMunalPregna(I)V
    .registers 13

    .line 1366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1367
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1368
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 1369
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1372
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {v0, v4, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1374
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v7, p1, v1

    .line 1375
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v5, v4

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1374
    invoke-virtual {v0, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1375
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move v3, v1

    move v5, v4

    :goto_69
    if-eqz v0, :cond_10d

    .line 1377
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v1, :cond_10d

    .line 1378
    const-string v6, "6t6tyg"

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-eq v7, v1, :cond_97

    .line 1379
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v1, :cond_82

    move v3, v4

    :cond_82
    if-eqz v3, :cond_97

    .line 1383
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1384
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1385
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1386
    const-string v7, "4"

    invoke-static {v6, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v7, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1390
    :cond_97
    aget v0, p1, v4

    aget v7, p1, v1

    aget p1, p1, v2

    invoke-static {v0, v7, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1392
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v10, p1, v1

    .line 1393
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v4

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v10, p1, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v1

    .line 1392
    invoke-virtual {v0, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1393
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_e8

    .line 1394
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v1, :cond_e8

    goto :goto_10d

    .line 1397
    :cond_e8
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v1, :cond_ef

    move v3, v4

    :cond_ef
    if-eqz v3, :cond_104

    .line 1401
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1402
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1403
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1404
    const-string v7, "6"

    invoke-static {v6, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_104
    const/16 v6, 0xb4

    if-le v5, v6, :cond_109

    goto :goto_10d

    :cond_109
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_69

    :cond_10d
    :goto_10d
    return-void
.end method

.method private clearLastOneMunalafterData(Ljava/util/Calendar;)V
    .registers 6

    .line 1418
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x3

    invoke-static {v1, v0, v2, v3, p1}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    return-void
.end method

.method private clearNextLastPregnancy(III)V
    .registers 6

    const/4 v0, 0x4

    .line 1515
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 1516
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private clearNextPregnancy(III)V
    .registers 11

    .line 1483
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1484
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    aget v5, p1, v4

    .line 1485
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1484
    invoke-virtual {p2, p3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1485
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p3, v0

    :goto_46
    if-eqz p2, :cond_4e

    .line 1487
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-eqz v2, :cond_54

    :cond_4e
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result p2

    if-ne p2, v1, :cond_d4

    .line 1488
    :cond_54
    aget p2, p1, v0

    aget v2, p1, v4

    aget p1, p1, v1

    invoke-static {p2, v2, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1489
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v6, p1, v4

    .line 1490
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v0

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v6, p1, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1489
    invoke-virtual {p2, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1490
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_a5

    .line 1491
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v4, :cond_a5

    goto :goto_d4

    :cond_a5
    if-eqz p2, :cond_d4

    .line 1494
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-nez v2, :cond_d4

    .line 1495
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1496
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1497
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1498
    const-string v2, "6t6tyg"

    const-string v3, "11"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1500
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1506
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    if-le p3, v2, :cond_d0

    goto :goto_d4

    :cond_d0
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_46

    .line 1511
    :cond_d4
    :goto_d4
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private clearPrePregnancy(III)V
    .registers 11

    .line 1451
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1452
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    aget v5, p1, v4

    .line 1453
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1452
    invoke-virtual {p2, p3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1453
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1455
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "womenHealthBean-clear-0:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "6t6tyg"

    invoke-static {v2, p3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v0

    :goto_63
    if-eqz p2, :cond_da

    .line 1456
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result p2

    if-nez p2, :cond_da

    .line 1457
    aget p2, p1, v0

    aget v2, p1, v4

    aget p1, p1, v1

    invoke-static {p2, v2, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1458
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v6, p1, v4

    .line 1459
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v0

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v6, p1, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1458
    invoke-virtual {p2, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1459
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_bc

    .line 1460
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v4, :cond_bc

    goto :goto_da

    :cond_bc
    if-eqz p2, :cond_da

    .line 1463
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-nez v2, :cond_da

    .line 1464
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1465
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1466
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1467
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    const/16 v2, 0xb4

    if-le p3, v2, :cond_d7

    goto :goto_da

    :cond_d7
    add-int/lit8 p3, p3, 0x1

    goto :goto_63

    .line 1478
    :cond_da
    :goto_da
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private closeMenutralCal()V
    .registers 6

    .line 2371
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v4, 0x9

    invoke-static {v4, v0, v1, v2, v3}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 2372
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 2373
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 2374
    const-string v0, "6t6tyg"

    const-string v1, "preMenstrual  .setStartMenstrualYear  7  year:-1"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    return-void
.end method

.method private currentEndMenuralDelayOnDay()V
    .registers 10

    .line 1905
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1906
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1907
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1908
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1909
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v0

    .line 1910
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v8, v0, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v0, v0, v5

    .line 1911
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v6, v1

    .line 1910
    invoke-virtual {v3, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1911
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1912
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1913
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1914
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_a9

    .line 1916
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1917
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1918
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1919
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1920
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1922
    :cond_a9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    .line 1923
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v2

    const/4 v3, 0x6

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private getCloseCurrentMunalNextObj(III)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 11

    .line 2329
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2330
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget p1, p1, v1

    .line 2331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v4

    .line 2330
    invoke-virtual {p2, p3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2331
    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p2, v0

    :goto_46
    if-eqz p1, :cond_4e

    .line 2333
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result p3

    if-eqz p3, :cond_56

    :cond_4e
    if-eqz p1, :cond_bb

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result p3

    if-ne p3, v4, :cond_bb

    :cond_56
    if-eqz p1, :cond_5f

    .line 2334
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result p3

    if-ne p3, v4, :cond_5f

    return-object p1

    .line 2338
    :cond_5f
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    invoke-static {p3, v2, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2339
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v0

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget p1, p1, v1

    .line 2340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v3, v4

    .line 2339
    invoke-virtual {p3, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2340
    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2341
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p3

    mul-int/lit8 p3, p3, 0x3

    if-le p2, p3, :cond_b8

    goto :goto_bb

    :cond_b8
    add-int/lit8 p2, p2, 0x1

    goto :goto_46

    :cond_bb
    :goto_bb
    return-object p1
.end method

.method private getPreMunalData(III)Ljava/util/Calendar;
    .registers 12

    .line 1424
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1426
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1427
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object p3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x1

    aget v6, p1, v5

    .line 1428
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1427
    invoke-virtual {p2, p3, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1428
    invoke-virtual {p2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p3, v1

    :goto_4a
    if-eqz p2, :cond_bb

    .line 1431
    aget p2, p1, v1

    aget v3, p1, v5

    aget p1, p1, v2

    invoke-static {p2, v3, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1432
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v7, p1, v5

    .line 1433
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v4, v1

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1432
    invoke-virtual {p2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1433
    invoke-virtual {p2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_b3

    .line 1434
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v3

    if-ne v3, v5, :cond_b3

    .line 1435
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 1436
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 1437
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_bb

    :cond_b3
    const/16 v3, 0xb4

    if-le p3, v3, :cond_b8

    goto :goto_bb

    :cond_b8
    add-int/lit8 p3, p3, 0x1

    goto :goto_4a

    :cond_bb
    :goto_bb
    return-object v0
.end method

.method private hasPreMunal(III)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 2273
    iput v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->minpreMunalDayBetween:I

    .line 2274
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    if-eqz v5, :cond_e6

    .line 2275
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v5

    .line 2276
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    if-eqz v5, :cond_50

    .line 2277
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_50

    move v9, v4

    .line 2278
    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_50

    .line 2279
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v10

    if-ne v10, v8, :cond_4d

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v10

    if-ne v10, v8, :cond_4d

    .line 2281
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 2285
    :cond_50
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e6

    .line 2286
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v9, 0xb

    .line 2288
    invoke-virtual {v5, v9, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    .line 2289
    invoke-virtual {v5, v10, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xd

    .line 2290
    invoke-virtual {v5, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 2291
    invoke-virtual {v5, v8, v1}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x2

    .line 2292
    invoke-virtual {v5, v13, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    .line 2293
    invoke-virtual {v5, v12, v3}, Ljava/util/Calendar;->set(II)V

    move v14, v4

    const/4 v15, 0x0

    .line 2295
    :goto_7b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_e7

    .line 2296
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2297
    invoke-virtual {v6, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 2298
    invoke-virtual {v6, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 2299
    invoke-virtual {v6, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 2300
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v6, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 2301
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v6, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 2302
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-virtual {v6, v12, v4}, Ljava/util/Calendar;->set(II)V

    .line 2304
    invoke-static {v6, v1, v2, v3}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 2306
    iget v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->minpreMunalDayBetween:I

    if-nez v4, :cond_ce

    .line 2307
    invoke-static {v6, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v4

    iput v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->minpreMunalDayBetween:I

    .line 2308
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    goto :goto_e1

    .line 2310
    :cond_ce
    invoke-static {v6, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v8

    if-le v4, v8, :cond_e1

    .line 2311
    invoke-static {v6, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v4

    iput v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->minpreMunalDayBetween:I

    .line 2312
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    :cond_e1
    :goto_e1
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_7b

    :cond_e6
    const/4 v15, 0x0

    :cond_e7
    if-eqz v15, :cond_ea

    return-object v15

    :cond_ea
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$initView$10(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$11(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$12(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$13(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$14(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$15(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$16(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$7(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$8(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$initView$9(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method private lastMunalData(IZIII)V
    .registers 22

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2110
    :try_start_8
    iget-object v0, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    if-eqz v0, :cond_2c1

    .line 2111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2112
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2113
    iget-object v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2c1

    const-string v3, ""

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v2, :cond_11b

    move v2, v10

    .line 2117
    :goto_34
    :try_start_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11b

    .line 2118
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v11, :cond_117

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v4

    if-ne v4, v11, :cond_117

    .line 2120
    new-instance v4, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;-><init>()V

    .line 2121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartYear(J)V

    .line 2122
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartMonth(I)V

    .line 2123
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartDay(I)V

    .line 2124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    const/16 v12, 0xa

    if-ge v5, v12, :cond_d2

    .line 2125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "0"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setDate(Ljava/lang/String;)V

    goto :goto_114

    .line 2127
    :cond_d2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setDate(Ljava/lang/String;)V

    .line 2129
    :goto_114
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_117
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_34

    .line 2133
    :cond_11b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b3

    .line 2134
    new-instance v0, Lcom/keephealth/android/util/MyBeanComparator;

    invoke-direct {v0}, Lcom/keephealth/android/util/MyBeanComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/16 v0, 0xb

    .line 2136
    invoke-virtual {v12, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 2137
    invoke-virtual {v12, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 2138
    invoke-virtual {v12, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartYear()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v12, v11, v0}, Ljava/util/Calendar;->set(II)V

    .line 2140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartMonth()I

    move-result v0

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 2141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->getStartDay()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {v12, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 2143
    invoke-static {v12, v7, v8, v9}, Lcom/keephealth/android/util/DateUtil;->isDateNowToday(Ljava/util/Calendar;III)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 2144
    invoke-static/range {p3 .. p5}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object v0

    .line 2145
    invoke-static {v0, v12}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 2146
    iput v7, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalYear:I

    .line 2147
    iput v8, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalMonth:I

    .line 2148
    iput v9, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalDay:I

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    .line 2149
    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calLastEndMunalDate(IIIZI)Z

    goto/16 :goto_2b3

    .line 2151
    :cond_1b3
    invoke-static/range {p3 .. p5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v0

    .line 2152
    iget-object v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v3, v0, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v5, v0, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v10

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v0, v0, v13

    .line 2153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v3, v11

    .line 2152
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2153
    invoke-virtual {v0, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move v14, v10

    :goto_1f6
    if-eqz v0, :cond_2b3

    .line 2156
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object v1

    .line 2157
    invoke-static {v1, v12}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_236

    .line 2158
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iput v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalYear:I

    .line 2159
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iput v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalMonth:I

    .line 2160
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    iput v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalDay:I

    .line 2161
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calLastEndMunalDate(IIIZI)Z

    goto/16 :goto_2b3

    .line 2164
    :cond_236
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v0

    .line 2165
    iget-object v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v3, v0, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v5, v0, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v10

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v5, v0, v13

    .line 2166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v11

    .line 2165
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2166
    invoke-virtual {v1, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_295

    .line 2168
    aget v1, v0, v10

    aget v2, v0, v11

    aget v3, v0, v13

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calLastEndMunalDate(IIIZI)Z

    .line 2171
    :cond_295
    iget-object v0, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    if-lt v14, v0, :cond_2a0

    goto :goto_2b3

    :cond_2a0
    add-int/lit8 v14, v14, 0x1

    move-object v0, v15

    goto/16 :goto_1f6

    :cond_2a5
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    .line 2179
    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calLastEndMunalDate(IIIZI)Z

    :cond_2b3
    :goto_2b3
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    .line 2182
    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calLastEndMunalDate(IIIZI)Z
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_2c1} :catch_2c1

    :catch_2c1
    :cond_2c1
    return-void
.end method

.method private measuData(ZIII)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3068
    iput v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    .line 3069
    iput v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    .line 3070
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v3

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result v4

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v2

    .line 3071
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    .line 3072
    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 3073
    invoke-virtual {v4, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 3074
    invoke-virtual {v4, v7, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xe

    .line 3075
    invoke-virtual {v4, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x1

    move/from16 v9, p2

    .line 3076
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v9, p3, -0x1

    const/4 v10, 0x2

    .line 3077
    invoke-virtual {v4, v10, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    move/from16 v11, p4

    .line 3078
    invoke-virtual {v4, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 3079
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0xa

    invoke-static {v15, v11, v12, v13, v14}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 3080
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v13, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3081
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v1

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v8

    .line 3080
    invoke-virtual {v11, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    .line 3081
    invoke-virtual {v11, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v12, 0x4

    if-eqz v11, :cond_eb

    .line 3083
    invoke-virtual {v11, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3084
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    if-nez v13, :cond_bf

    .line 3085
    invoke-virtual {v11, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_bc
    move/from16 v13, p1

    goto :goto_df

    .line 3087
    :cond_bf
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    iget-object v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v14

    iget-object v15, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v15

    invoke-static {v4, v13, v14, v15}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v13

    if-eqz v13, :cond_db

    .line 3088
    invoke-virtual {v11, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_bc

    .line 3090
    :cond_db
    invoke-virtual {v11, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_bc

    .line 3093
    :goto_df
    invoke-virtual {v11, v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3094
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    if-ge v13, v12, :cond_eb

    .line 3095
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v13, v11}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 3099
    :cond_eb
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 3100
    invoke-virtual {v11, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 3101
    invoke-virtual {v11, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 3102
    invoke-virtual {v11, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 3103
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v11, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 3104
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v11, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 3105
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v11, v9, v5}, Ljava/util/Calendar;->set(II)V

    move v5, v1

    move v6, v8

    :goto_10f
    const/16 v7, 0x13

    const/4 v13, -0x1

    if-ge v5, v7, :cond_1a7

    .line 3108
    invoke-virtual {v11, v9, v13}, Ljava/util/Calendar;->add(II)V

    .line 3109
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3110
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v14, v1

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v14, v8

    .line 3109
    invoke-virtual {v7, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 3110
    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v7, :cond_1a2

    .line 3112
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 3113
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 3114
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 3115
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 3116
    invoke-virtual {v7, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3117
    invoke-virtual {v7, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const/16 v12, 0x9

    if-lt v5, v12, :cond_19f

    .line 3119
    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v12

    if-ne v12, v8, :cond_191

    move v6, v1

    :cond_191
    if-eqz v6, :cond_1a2

    .line 3123
    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 3124
    invoke-virtual {v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3125
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v12, v7}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1a2

    .line 3128
    :cond_19f
    invoke-virtual {v7, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    :cond_1a2
    :goto_1a2
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x4

    goto/16 :goto_10f

    .line 3132
    :cond_1a7
    :goto_1a7
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_3c7

    move v5, v8

    .line 3134
    :goto_1b4
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    if-ge v5, v6, :cond_258

    .line 3135
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_254

    .line 3136
    invoke-virtual {v4, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 3137
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v11, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3138
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v1

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v8

    .line 3137
    invoke-virtual {v6, v7, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 3138
    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_254

    .line 3140
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3141
    iget v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    if-nez v7, :cond_216

    .line 3142
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_235

    .line 3145
    :cond_216
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v7

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-static {v4, v7, v11, v12}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v7

    if-eqz v7, :cond_232

    .line 3146
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_235

    .line 3148
    :cond_232
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 3151
    :goto_235
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3153
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v7

    sub-int/2addr v7, v8

    if-ne v5, v7, :cond_245

    .line 3154
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_24f

    .line 3156
    :cond_245
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 3157
    const-string v7, "6t6ty1g"

    const-string v11, "setIsEndMenstrualDate_11"

    invoke-static {v7, v11}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    :goto_24f
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v7, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_254
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1b4

    .line 3163
    :cond_258
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    .line 3164
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v5

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v8

    invoke-virtual {v4, v9, v5}, Ljava/util/Calendar;->add(II)V

    .line 3166
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v5, v5, v11

    if-gez v5, :cond_2ba

    .line 3167
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preMenstrual  .setStartMenstrualYear  9  year:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "6t6tyg"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 3169
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 3170
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 3171
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 3172
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 3174
    :cond_2ba
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_338

    .line 3175
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v11, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3176
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v1

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v8

    .line 3175
    invoke-virtual {v5, v7, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 3176
    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v5, :cond_338

    .line 3178
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3179
    iget v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    if-nez v7, :cond_311

    .line 3180
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_330

    .line 3182
    :cond_311
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v7

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-static {v4, v7, v11, v12}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v7

    if-eqz v7, :cond_32d

    .line 3183
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_330

    .line 3185
    :cond_32d
    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 3188
    :goto_330
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3189
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v7, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 3193
    :cond_338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 3194
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, -0x9

    .line 3198
    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->add(II)V

    move v7, v1

    move v11, v8

    const/16 v12, 0xa

    :goto_34c
    if-ge v7, v12, :cond_3bf

    .line 3201
    iget v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    const/4 v15, 0x3

    if-ge v14, v15, :cond_3b8

    .line 3202
    invoke-virtual {v5, v9, v13}, Ljava/util/Calendar;->add(II)V

    .line 3203
    iget-object v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v15, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3204
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v15, v1

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v15, v8

    .line 3203
    invoke-virtual {v14, v6, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 3204
    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_3b8

    .line 3206
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v12

    if-eq v12, v8, :cond_3aa

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v12

    if-ne v12, v10, :cond_3ab

    :cond_3aa
    move v11, v1

    :cond_3ab
    if-eqz v11, :cond_3b8

    .line 3210
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 3211
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3212
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v12, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_3b8
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x4

    const/16 v12, 0xa

    const/4 v13, -0x1

    goto :goto_34c

    .line 3217
    :cond_3bf
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    const/4 v13, -0x1

    goto/16 :goto_1a7

    :cond_3c7
    return-void
.end method

.method private measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V
    .registers 34

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    .line 1523
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "measuDataAfter_a:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   pre:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   next:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "6t6ty10g"

    invoke-static {v8, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "6t6tyg"

    invoke-static {v7, v6}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    const/4 v6, 0x1

    .line 1532
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isCanSetPregnancy:Z

    const/16 v9, 0x9

    const/16 v10, 0xa

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ne v1, v6, :cond_7a

    .line 1534
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_7a
    if-ne v1, v13, :cond_7f

    .line 1536
    iput v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_7f
    if-ne v1, v12, :cond_84

    .line 1538
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_84
    if-ne v1, v9, :cond_89

    .line 1540
    iput v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_89
    if-ne v1, v10, :cond_8e

    .line 1542
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_8e
    if-ne v1, v11, :cond_92

    .line 1544
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    :cond_92
    :goto_92
    const/4 v14, 0x0

    .line 1546
    iput v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    .line 1547
    iput v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    .line 1549
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v15

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v15

    .line 1550
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v10

    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v9

    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v12

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v11

    invoke-static {v12, v11}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result v11

    filled-new-array {v10, v9, v11}, [I

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v9

    .line 1551
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xb

    .line 1552
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    .line 1553
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 1554
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xe

    .line 1555
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    .line 1556
    invoke-virtual {v11, v6, v2}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v12, v3, -0x1

    .line 1557
    invoke-virtual {v11, v13, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    .line 1558
    invoke-virtual {v11, v12, v4}, Ljava/util/Calendar;->set(II)V

    .line 1559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/4 v6, 0x4

    if-eq v1, v6, :cond_500

    if-eq v1, v13, :cond_23c

    const/4 v6, 0x3

    if-eq v1, v6, :cond_23c

    const/16 v6, 0x9

    if-eq v1, v6, :cond_23c

    const/16 v6, 0xb

    if-ne v1, v6, :cond_101

    goto/16 :goto_23c

    :cond_101
    if-eqz v5, :cond_149

    const/16 v6, 0xa

    if-ne v1, v6, :cond_110

    .line 1657
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v6

    invoke-virtual {v5, v12, v6}, Ljava/util/Calendar;->add(II)V

    .line 1659
    :cond_110
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "\u5f00\u59cb\u5220\u9664\u7ecf\u671f\u548c\u5b55\u671f\u7684\u65f6\u95f43:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v13, v20, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v12, 0x7

    invoke-static {v12, v6, v14, v13, v8}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    move-wide/from16 v24, v9

    const/4 v6, 0x1

    const/4 v9, 0x2

    goto/16 :goto_504

    .line 1662
    :cond_149
    invoke-static/range {p4 .. p6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v6

    .line 1663
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x0

    aget v19, v6, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    move-wide/from16 v24, v9

    const/4 v13, 0x2

    new-array v9, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x1

    aget v19, v6, v13

    .line 1664
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x2

    aget v23, v6, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    .line 1663
    invoke-virtual {v8, v12, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 1664
    invoke-virtual {v8, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v9, 0x0

    :goto_192
    if-eqz v8, :cond_223

    .line 1666
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v13, :cond_223

    const/4 v8, 0x0

    .line 1667
    aget v10, v6, v8

    aget v12, v6, v13

    const/4 v13, 0x2

    aget v6, v6, v13

    invoke-static {v10, v12, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v6

    .line 1668
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v19, v6, v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v12, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x1

    aget v19, v6, v2

    .line 1669
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v12, v13

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x2

    aget v23, v6, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v13, 0x1

    aput-object v2, v12, v13

    .line 1668
    invoke-virtual {v10, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1669
    invoke-virtual {v2, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v8, :cond_217

    .line 1671
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-eq v2, v13, :cond_217

    const/16 v2, 0xb

    const/4 v10, 0x0

    .line 1672
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1673
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1674
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1675
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1676
    aget v2, v6, v10

    invoke-virtual {v14, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1677
    aget v2, v6, v13

    sub-int/2addr v2, v13

    const/4 v8, 0x2

    invoke-virtual {v14, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 1678
    aget v2, v6, v8

    const/4 v6, 0x5

    invoke-virtual {v14, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_223

    :cond_217
    const/16 v2, 0xb4

    if-le v9, v2, :cond_21c

    goto :goto_223

    :cond_21c
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p4

    const/4 v13, 0x1

    goto/16 :goto_192

    .line 1689
    :cond_223
    :goto_223
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v14, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v6

    const/4 v6, 0x5

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v6, 0x8

    invoke-static {v6, v2, v8, v10, v12}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    goto/16 :goto_503

    :cond_23c
    :goto_23c
    move-wide/from16 v24, v9

    move v9, v13

    if-eqz v5, :cond_2c0

    .line 1564
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    if-ne v1, v9, :cond_278

    const/16 v6, 0xb

    const/4 v8, 0x0

    .line 1566
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 1567
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 1568
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 1569
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x1

    .line 1570
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 1571
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    .line 1572
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1573
    invoke-virtual {v2, v9, v6}, Ljava/util/Calendar;->add(II)V

    const/4 v10, 0x2

    goto :goto_2ac

    :cond_278
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/16 v10, 0xb

    .line 1575
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    .line 1576
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    .line 1577
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xe

    .line 1578
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 1580
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->getLastCalendar()Ljava/util/Calendar;

    move-result-object v8

    .line 1581
    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x2

    .line 1582
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v2, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 1583
    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 1584
    invoke-virtual {v2, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 1586
    :goto_2ac
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v9, v8, v12, v13, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    goto/16 :goto_4fe

    :cond_2c0
    move v10, v9

    const/16 v2, 0xb

    const/4 v6, 0x1

    const/4 v9, 0x5

    if-eq v1, v2, :cond_4fe

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3b2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3b2

    .line 1590
    const-string v2, "womenHealthBeanHas == null 0:"

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v2, v8, v12}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v2

    .line 1592
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v12, 0x0

    aget v13, v2, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    new-array v13, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v19, v2, v6

    .line 1593
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v13, v12

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x2

    aget v12, v2, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v13, v10

    .line 1592
    invoke-virtual {v8, v9, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1593
    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v8, 0x0

    :goto_324
    if-eqz v6, :cond_4c9

    .line 1595
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v10, :cond_4c9

    const/4 v6, 0x0

    .line 1596
    aget v9, v2, v6

    aget v12, v2, v10

    const/4 v13, 0x2

    aget v2, v2, v13

    invoke-static {v9, v12, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v2

    .line 1597
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v9

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v19, v2, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v12, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v19, v2, v10

    .line 1598
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v12, v13

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x2

    aget v23, v2, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v12, v13

    .line 1597
    invoke-virtual {v9, v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1598
    invoke-virtual {v6, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_3a7

    .line 1600
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-ne v9, v13, :cond_3a7

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 1601
    invoke-virtual {v14, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 1602
    invoke-virtual {v14, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 1603
    invoke-virtual {v14, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 1604
    invoke-virtual {v14, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 1605
    aget v6, v2, v10

    invoke-virtual {v14, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 1606
    aget v6, v2, v13

    const/4 v8, 0x2

    invoke-virtual {v14, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 1607
    aget v2, v2, v8

    const/4 v6, 0x5

    invoke-virtual {v14, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_4c9

    :cond_3a7
    const/16 v9, 0xb4

    if-le v8, v9, :cond_3ad

    goto/16 :goto_4c9

    :cond_3ad
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    goto/16 :goto_324

    :cond_3b2
    move v2, v6

    .line 1619
    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v8, 0x2

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v2

    const/4 v10, 0x5

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v6, v9, v12}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v6

    .line 1620
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v9

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v12, 0x0

    aget v13, v6, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v13, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v19, v6, v2

    .line 1621
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    aput-object v2, v13, v12

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x2

    aget v12, v6, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v13, v8

    .line 1620
    invoke-virtual {v9, v10, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1621
    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1622
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "womenHealthBeanHas == null 1:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v9, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_421
    if-eqz v2, :cond_4c9

    const/4 v2, 0x0

    .line 1625
    aget v9, v6, v2

    const/4 v10, 0x1

    aget v12, v6, v10

    const/4 v13, 0x2

    aget v6, v6, v13

    invoke-static {v9, v12, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v6

    .line 1626
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v9

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v19, v6, v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v12, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v19, v6, v10

    .line 1627
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v12, v13

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x2

    aget v23, v6, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v12, v13

    .line 1626
    invoke-virtual {v9, v2, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1627
    invoke-virtual {v2, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_4bb

    .line 1629
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "womenHealthBeanHas:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v10, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4c0

    const/16 v9, 0xb

    const/4 v12, 0x0

    .line 1631
    invoke-virtual {v14, v9, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1632
    invoke-virtual {v14, v2, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1633
    invoke-virtual {v14, v2, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1634
    invoke-virtual {v14, v2, v12}, Ljava/util/Calendar;->set(II)V

    .line 1635
    aget v2, v6, v12

    invoke-virtual {v14, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 1636
    aget v2, v6, v10

    sub-int/2addr v2, v10

    const/4 v8, 0x2

    invoke-virtual {v14, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 1637
    aget v2, v6, v8

    const/4 v6, 0x5

    invoke-virtual {v14, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_4c9

    .line 1641
    :cond_4bb
    const-string v9, "womenHealthBeanHas == null 2:"

    invoke-static {v7, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c0
    const/16 v9, 0xb4

    if-le v8, v9, :cond_4c5

    goto :goto_4c9

    :cond_4c5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_421

    .line 1650
    :cond_4c9
    :goto_4c9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "\u5f00\u59cb\u5220\u9664\u7ecf\u671f\u548c\u5b55\u671f\u7684\u65f6\u95f42--2:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v14, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v6

    const/4 v12, 0x5

    invoke-virtual {v14, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v12, 0x6

    invoke-static {v12, v2, v8, v10, v13}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    goto :goto_504

    :cond_4fe
    :goto_4fe
    move v9, v10

    goto :goto_504

    :cond_500
    move-wide/from16 v24, v9

    move v9, v13

    :goto_503
    const/4 v6, 0x1

    :goto_504
    if-eq v1, v9, :cond_552

    const/16 v2, 0x9

    if-eq v1, v2, :cond_552

    if-ne v1, v6, :cond_543

    .line 1695
    iget v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-lez v2, :cond_543

    if-lez v2, :cond_552

    .line 1697
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    const/4 v8, 0x5

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    const/4 v9, 0x0

    .line 1700
    invoke-virtual {v11, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1701
    invoke-virtual {v11, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1702
    invoke-virtual {v11, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 1703
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v11, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 1704
    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 1705
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_553

    :cond_543
    const/4 v8, 0x5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_548

    goto :goto_553

    .line 1710
    :cond_548
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_553

    :cond_552
    const/4 v8, 0x5

    :goto_553
    const/16 v2, 0xb

    if-ne v1, v2, :cond_561

    .line 1714
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    :cond_561
    const/4 v2, 0x1

    if-ne v1, v2, :cond_569

    const/16 v2, 0xc

    .line 1717
    invoke-direct {v0, v2, v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    :cond_569
    const/4 v2, 0x3

    if-ne v1, v2, :cond_590

    .line 1722
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u9700\u8981\u8ba1\u7b97\u524d\u9762\u7684\u6613\u5b55\u671f\u65f6\u95f4:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    .line 1723
    invoke-direct {v0, v2, v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto :goto_5a0

    :cond_590
    const/16 v2, 0xf

    const/4 v6, 0x4

    if-ne v1, v6, :cond_599

    .line 1726
    invoke-direct {v0, v2, v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto :goto_5a0

    :cond_599
    const/16 v6, 0xa

    if-ne v1, v6, :cond_5a0

    .line 1729
    invoke-direct {v0, v2, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 1732
    :cond_5a0
    :goto_5a0
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v8, 0x2

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1733
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x5

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v9, v6

    .line 1732
    invoke-virtual {v2, v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1733
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1734
    const-string v5, "erer4e"

    if-eqz v2, :cond_690

    .line 1735
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1736
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    if-nez v8, :cond_626

    if-ne v1, v6, :cond_604

    .line 1738
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-lez v8, :cond_5fd

    const/4 v8, 0x2

    .line 1739
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_600

    .line 1741
    :cond_5fd
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_600
    move/from16 v9, p4

    move v8, v6

    goto :goto_63a

    :cond_604
    const/4 v6, 0x3

    if-ne v1, v6, :cond_60b

    .line 1744
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-gtz v6, :cond_60e

    :cond_60b
    const/4 v6, 0x4

    if-ne v1, v6, :cond_616

    :cond_60e
    const/4 v6, 0x2

    .line 1745
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_612
    move/from16 v9, p4

    const/4 v8, 0x1

    goto :goto_63a

    :cond_616
    const/4 v6, 0x2

    const/16 v8, 0xa

    if-ne v1, v8, :cond_61f

    .line 1748
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_612

    :cond_61f
    const/4 v8, 0x1

    .line 1750
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    move/from16 v9, p4

    goto :goto_63a

    :cond_626
    move/from16 v9, p4

    move v8, v6

    const/4 v6, 0x2

    .line 1755
    invoke-static {v11, v9, v3, v4}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v10

    if-eqz v10, :cond_637

    .line 1756
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1757
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_63a

    .line 1759
    :cond_637
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1762
    :goto_63a
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1763
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    if-ge v6, v8, :cond_663

    if-eqz v2, :cond_663

    .line 1765
    invoke-virtual {v15, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1766
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\u8ba1\u7b97\u7ecf\u671f1:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_663
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "\u8ba1\u7b97\u7ecf\u671f\u7684\u5f00\u59cb\u65f6\u95f4----:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "  endTime:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v24 .. v25}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b0

    :cond_690
    move/from16 v9, p4

    .line 1772
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "bean == null\uff1a"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    :goto_6b0
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v2, v12, v24

    if-gtz v2, :cond_9d9

    .line 1778
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "preMenstrual.getMenstrualDuration():"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "    "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1779
    :goto_6eb
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    if-ge v2, v6, :cond_7c2

    .line 1780
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    if-ge v6, v8, :cond_7be

    const/4 v6, 0x5

    const/4 v8, 0x1

    .line 1781
    invoke-virtual {v11, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1782
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v12, 0x2

    new-array v13, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1783
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v13, v14

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v8

    .line 1782
    invoke-virtual {v6, v10, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1783
    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_7be

    const/4 v10, 0x0

    .line 1785
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1786
    iget v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    if-nez v10, :cond_77d

    if-ne v1, v8, :cond_75f

    .line 1788
    iget v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-lez v10, :cond_75a

    const/4 v10, 0x2

    .line 1789
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_75d

    .line 1791
    :cond_75a
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_75d
    move v10, v8

    goto :goto_78c

    :cond_75f
    const/4 v8, 0x3

    if-ne v1, v8, :cond_766

    .line 1794
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-gtz v8, :cond_769

    :cond_766
    const/4 v8, 0x4

    if-ne v1, v8, :cond_76f

    :cond_769
    const/4 v8, 0x2

    .line 1795
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_76d
    const/4 v10, 0x1

    goto :goto_78c

    :cond_76f
    const/4 v8, 0x2

    const/16 v10, 0xa

    if-ne v1, v10, :cond_778

    .line 1798
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_76d

    :cond_778
    const/4 v10, 0x1

    .line 1800
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_78c

    :cond_77d
    move v10, v8

    const/4 v8, 0x2

    .line 1805
    invoke-static {v11, v9, v3, v4}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v12

    if-eqz v12, :cond_789

    .line 1806
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_78c

    .line 1808
    :cond_789
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1811
    :goto_78c
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1812
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v8

    sub-int/2addr v8, v10

    if-ne v2, v8, :cond_79c

    .line 1813
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_7a0

    :cond_79c
    const/4 v8, 0x0

    .line 1815
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1817
    :goto_7a0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "\u8ba1\u7b97\u7ecf\u671f2:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v10, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v15, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_7be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6eb

    .line 1824
    :cond_7c2
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    sub-int/2addr v2, v6

    const/4 v6, 0x1

    add-int/2addr v2, v6

    const/4 v8, 0x5

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    .line 1826
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    cmp-long v2, v12, v17

    if-gez v2, :cond_821

    .line 1827
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "preMenstrual  .setStartMenstrualYear  6  year:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 1829
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v8, 0x2

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v2, v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 1830
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v6, 0x5

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 1831
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 1832
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 1834
    :cond_821
    iget v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    iput v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    .line 1835
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->maxMunalTimes:I

    if-ge v2, v8, :cond_892

    .line 1836
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v10, 0x2

    new-array v12, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1837
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v12, v13

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v12, v6

    .line 1836
    invoke-virtual {v2, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1837
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_892

    .line 1839
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1840
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstMenuralData:I

    if-nez v8, :cond_87e

    .line 1841
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_88c

    .line 1843
    :cond_87e
    invoke-static {v11, v9, v3, v4}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v8

    if-eqz v8, :cond_888

    .line 1844
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_88c

    :cond_888
    const/4 v8, 0x2

    .line 1846
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1849
    :goto_88c
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1851
    invoke-virtual {v15, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1856
    :cond_892
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1857
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v8, -0x9

    const/4 v10, 0x5

    .line 1862
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 1864
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isCanSetPregnancy:Z

    const/16 v8, 0xa

    const/4 v13, 0x0

    :goto_8a8
    if-ge v13, v8, :cond_9cd

    const/4 v12, -0x1

    .line 1866
    invoke-virtual {v2, v10, v12}, Ljava/util/Calendar;->add(II)V

    if-eq v1, v6, :cond_934

    const/4 v6, 0x3

    if-eq v1, v6, :cond_934

    if-eq v1, v8, :cond_934

    const/4 v10, 0x4

    if-ne v1, v10, :cond_8ba

    goto/16 :goto_934

    :cond_8ba
    const/4 v12, 0x2

    if-eq v1, v12, :cond_8c2

    const/16 v12, 0x9

    if-ne v1, v12, :cond_930

    goto :goto_8c4

    :cond_8c2
    const/16 v12, 0x9

    .line 1883
    :goto_8c4
    iget v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    if-ge v14, v6, :cond_930

    .line 1884
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v10, 0x2

    new-array v12, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1885
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v12, v10

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v12, v8

    .line 1884
    invoke-virtual {v14, v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1885
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v1, :cond_92d

    .line 1887
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v8, :cond_91f

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_922

    :cond_91f
    const/4 v6, 0x0

    .line 1888
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isCanSetPregnancy:Z

    .line 1890
    :cond_922
    iget-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isCanSetPregnancy:Z

    if-eqz v6, :cond_92d

    .line 1891
    invoke-virtual {v1, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1892
    invoke-virtual {v15, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_930

    :cond_92d
    move v10, v8

    goto/16 :goto_9bd

    :cond_930
    :goto_930
    const/4 v6, 0x0

    const/4 v8, 0x2

    goto/16 :goto_9c2

    .line 1868
    :cond_934
    :goto_934
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    const/4 v6, 0x2

    if-ge v1, v6, :cond_9c0

    .line 1869
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v12, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1870
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v12, v14

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v12, v10

    .line 1869
    invoke-virtual {v1, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1870
    invoke-virtual {v1, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v1, :cond_9bd

    .line 1872
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v10, :cond_992

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_990

    goto :goto_993

    :cond_990
    const/4 v6, 0x0

    goto :goto_996

    :cond_992
    const/4 v8, 0x2

    :goto_993
    const/4 v6, 0x0

    .line 1873
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isCanSetPregnancy:Z

    .line 1875
    :goto_996
    iget-boolean v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isCanSetPregnancy:Z

    if-eqz v10, :cond_9c2

    .line 1876
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "\u8ba1\u7b97\u6613\u5b55\u671f:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v12, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 1877
    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1878
    invoke-virtual {v15, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_9c3

    :cond_9bd
    :goto_9bd
    const/4 v6, 0x0

    const/4 v8, 0x2

    goto :goto_9c3

    :cond_9c0
    move v8, v6

    const/4 v6, 0x0

    :cond_9c2
    :goto_9c2
    const/4 v10, 0x1

    :goto_9c3
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    move v6, v10

    const/16 v8, 0xa

    const/4 v10, 0x5

    goto/16 :goto_8a8

    :cond_9cd
    move v10, v6

    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 1899
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->firstPregnancyData:I

    move/from16 v1, p2

    goto/16 :goto_6b0

    :cond_9d9
    return-void
.end method

.method private notifyMonthView(IIII)V
    .registers 13

    .line 2955
    invoke-static {p2, p3}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result p1

    .line 2956
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2957
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2958
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :goto_15
    if-gt v4, p1, :cond_21

    .line 2960
    filled-new-array {p3, v4}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 2962
    :cond_21
    invoke-static {p2, p3, p4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextMonth(III)[I

    move-result-object p1

    const/4 v4, 0x0

    .line 2963
    aget v5, p1, v4

    aget v6, p1, v3

    invoke-static {v5, v6}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v5

    .line 2964
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4e0b\u4e00\u4e2a\u6708:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "6t6tyg"

    invoke-static {v7, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    :goto_43
    if-gt v6, v5, :cond_51

    .line 2967
    aget v7, p1, v3

    filled-new-array {v7, v6}, [I

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 2970
    :cond_51
    invoke-static {p2, p3, p4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreMonth(III)[I

    move-result-object p1

    .line 2971
    aget p2, p1, v4

    aget p3, p1, v3

    invoke-static {p2, p3}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result p2

    move p3, v3

    :goto_5e
    if-gt p3, p2, :cond_6c

    .line 2973
    aget p4, p1, v3

    filled-new-array {p4, p3}, [I

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_5e

    .line 2975
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 2976
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    const/4 p2, 0x7

    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    return-void
.end method

.method private onlyOneMunalData()Z
    .registers 7

    .line 2351
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 2352
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 2353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v3, 0x1

    if-eqz v0, :cond_49

    .line 2355
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_49

    move v4, v1

    .line 2356
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 2357
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-ne v5, v3, :cond_46

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v5

    if-ne v5, v3, :cond_46

    .line 2359
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 2363
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_50

    return v3

    :cond_50
    return v1
.end method

.method private openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V
    .registers 15

    if-eqz p1, :cond_116

    .line 2432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 2433
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 2434
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 2435
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2436
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 2437
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 2438
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 2440
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2441
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2442
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2443
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    .line 2444
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 2445
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2446
    invoke-virtual {p1, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2447
    invoke-virtual {p1, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2448
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    if-ne p2, v6, :cond_6a

    .line 2451
    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    :cond_6a
    move p1, v4

    .line 2453
    :goto_6b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result p2

    if-ge p1, p2, :cond_107

    .line 2454
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 2455
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v9, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 2456
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v2

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2457
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v4

    .line 2455
    invoke-virtual {p2, v1, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 2457
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_103

    .line 2459
    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2460
    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2461
    invoke-virtual {p2, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2462
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_d3

    .line 2463
    invoke-virtual {p2, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_d6

    .line 2465
    :cond_d3
    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2467
    :goto_d6
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2468
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v4

    if-le p2, v8, :cond_f3

    .line 2469
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 2471
    :cond_f3
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_103
    :goto_103
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_6b

    .line 2475
    :cond_107
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    .line 2476
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1, v3, v7, v4}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V

    :cond_116
    return-void
.end method

.method private reCalPrePregnancyData(ILjava/util/Calendar;)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0xe

    const/4 v4, 0x3

    const/16 v5, 0xc

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v1, v8, :cond_14

    if-eq v1, v5, :cond_14

    if-ne v1, v3, :cond_35

    .line 2484
    :cond_14
    new-instance v9, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v9}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 2485
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 2486
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 2487
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 2488
    invoke-static {v4, v9}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v9

    iput v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    .line 2491
    :cond_35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, 0xb

    const/4 v11, 0x0

    .line 2492
    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 2493
    invoke-virtual {v9, v5, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 2494
    invoke-virtual {v9, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 2495
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v9, v7, v13}, Ljava/util/Calendar;->set(II)V

    .line 2499
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-lez v13, :cond_124

    .line 2500
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v15, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-static {v13, v14, v15}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v13

    .line 2501
    iget-object v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v16, v13, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v15, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v17, v13, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v15, v11

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v12, v13, v8

    .line 2502
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v15, v7

    .line 2501
    invoke-virtual {v14, v3, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2502
    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move v5, v7

    move v12, v11

    :goto_9c
    if-eqz v3, :cond_124

    .line 2503
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-eq v3, v7, :cond_124

    .line 2504
    aget v3, v13, v11

    aget v14, v13, v7

    aget v13, v13, v8

    invoke-static {v3, v14, v13}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v13

    .line 2505
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v15, v13, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    new-array v15, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v18, v13, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v15, v11

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v10, v13, v8

    .line 2506
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v15, v7

    .line 2505
    invoke-virtual {v3, v14, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2506
    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_f5

    .line 2507
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v7, :cond_f5

    goto :goto_124

    :cond_f5
    if-eqz v3, :cond_fd

    .line 2510
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-eq v4, v7, :cond_105

    :cond_fd
    if-eqz v3, :cond_106

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v8, :cond_106

    :cond_105
    move v5, v11

    :cond_106
    if-eqz v5, :cond_118

    if-eqz v3, :cond_118

    .line 2514
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v4

    if-ne v4, v7, :cond_118

    .line 2515
    invoke-virtual {v3, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2516
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_118
    const/16 v4, 0xb4

    if-le v12, v4, :cond_11d

    goto :goto_124

    :cond_11d
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x3

    const/16 v10, 0xb

    goto/16 :goto_9c

    :cond_124
    :goto_124
    const/4 v3, 0x6

    const/16 v4, 0x9

    if-eq v1, v6, :cond_173

    if-eq v1, v3, :cond_173

    const/4 v5, 0x3

    if-eq v1, v5, :cond_173

    const/16 v5, 0x8

    if-ne v1, v5, :cond_133

    goto :goto_173

    :cond_133
    if-ne v1, v4, :cond_145

    .line 2531
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v9, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 2532
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v9, v6, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_181

    :cond_145
    const/16 v5, 0xb

    if-eq v1, v5, :cond_164

    const/16 v5, 0xc

    if-eq v1, v5, :cond_164

    const/16 v5, 0xd

    if-eq v1, v5, :cond_164

    if-eq v1, v8, :cond_164

    const/16 v5, 0xe

    if-eq v1, v5, :cond_164

    const/4 v5, 0x4

    if-ne v1, v5, :cond_15b

    goto :goto_164

    .line 2537
    :cond_15b
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v9, v8, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_16b

    .line 2535
    :cond_164
    :goto_164
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v9, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 2539
    :goto_16b
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v9, v6, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_181

    .line 2527
    :cond_173
    :goto_173
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v9, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 2528
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v9, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 2542
    :goto_181
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    const/16 v10, 0x13

    if-nez v5, :cond_18a

    .line 2543
    iput v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPregnancyNumber:I

    goto :goto_191

    :cond_18a
    if-ge v5, v10, :cond_18f

    .line 2546
    iput v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPregnancyNumber:I

    goto :goto_191

    .line 2548
    :cond_18f
    iput v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPregnancyNumber:I

    .line 2551
    :goto_191
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "calPregnancyNumber:"

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPregnancyNumber:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "  a:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "   "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "6t6tyg"

    invoke-static {v12, v5}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf

    .line 2553
    const-string v14, "calendarPre-bean---null:"

    const/4 v15, -0x1

    const-string v13, "calendarPre:"

    if-ne v1, v5, :cond_348

    .line 2554
    invoke-virtual {v9, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2556
    new-instance v5, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 2557
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 2558
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 2559
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 2560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "45er456"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "dateBean:"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    invoke-static {v3, v5}, Lcom/keephealth/android/util/WomenHealthUtil;->calFiftyProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    if-nez v2, :cond_22d

    goto :goto_230

    :cond_22d
    if-ge v2, v10, :cond_230

    move v10, v2

    .line 2572
    :cond_230
    :goto_230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preMunalDayBetweenFifty:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    const/4 v2, 0x0

    :goto_244
    if-ge v2, v10, :cond_45f

    .line 2574
    invoke-virtual {v9, v6, v15}, Ljava/util/Calendar;->add(II)V

    .line 2575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v11, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v11, v15

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v11, v7

    invoke-virtual {v4, v5, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v4, :cond_33d

    .line 2578
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v5, 0x2

    .line 2579
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v4, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 2580
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 2581
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 2582
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2db

    const/4 v5, 0x0

    .line 2583
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    :cond_2db
    const/16 v5, 0x9

    if-lt v2, v5, :cond_2fb

    .line 2586
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-eq v5, v6, :cond_2ec

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2ed

    :cond_2ec
    const/4 v3, 0x0

    :cond_2ed
    if-eqz v3, :cond_340

    .line 2590
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2591
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2592
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_340

    .line 2595
    :cond_2fb
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-eq v5, v6, :cond_308

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_309

    :cond_308
    const/4 v3, 0x0

    :cond_309
    if-eqz v3, :cond_340

    if-eq v1, v6, :cond_31d

    const/4 v5, 0x7

    if-eq v1, v5, :cond_31d

    const/16 v5, 0xb

    if-ne v1, v5, :cond_315

    goto :goto_31d

    :cond_315
    const/4 v5, 0x0

    .line 2605
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2606
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_331

    :cond_31d
    :goto_31d
    const/4 v5, 0x0

    .line 2600
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-eq v7, v6, :cond_331

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    const/4 v11, 0x2

    if-eq v7, v11, :cond_331

    .line 2601
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2602
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2608
    :cond_331
    :goto_331
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2609
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2610
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_340

    .line 2615
    :cond_33d
    invoke-static {v12, v14}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_340
    :goto_340
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v15, -0x1

    goto/16 :goto_244

    :cond_348
    const/4 v2, 0x1

    const/4 v15, 0x0

    .line 2619
    :goto_34a
    iget v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPregnancyNumber:I

    if-ge v15, v3, :cond_45f

    const/4 v3, -0x1

    const/4 v4, 0x5

    .line 2620
    invoke-virtual {v9, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 2621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x2

    new-array v10, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v10, v11

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x5

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-virtual {v4, v5, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v4, :cond_451

    .line 2624
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v5, 0x2

    .line 2625
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    const/4 v5, 0x5

    .line 2626
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 2627
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 2628
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-eq v7, v6, :cond_3e8

    const/4 v7, 0x0

    .line 2629
    invoke-virtual {v4, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    :cond_3e8
    const/16 v7, 0x9

    if-lt v15, v7, :cond_40d

    .line 2632
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v6, :cond_3f9

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3fa

    :cond_3f9
    const/4 v2, 0x0

    :cond_3fa
    if-eqz v2, :cond_407

    .line 2636
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2637
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2638
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_407
    const/4 v5, 0x2

    const/4 v8, 0x7

    const/16 v10, 0xb

    const/4 v11, 0x0

    goto :goto_45b

    .line 2641
    :cond_40d
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v6, :cond_41a

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_41b

    :cond_41a
    const/4 v2, 0x0

    :cond_41b
    if-eqz v2, :cond_407

    const/4 v8, 0x7

    const/16 v10, 0xb

    if-eq v1, v6, :cond_42f

    if-eq v1, v8, :cond_42f

    if-ne v1, v10, :cond_427

    goto :goto_42f

    :cond_427
    const/4 v11, 0x0

    .line 2651
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2652
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_444

    :cond_42f
    :goto_42f
    const/4 v11, 0x0

    .line 2646
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-eq v3, v6, :cond_444

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_445

    .line 2647
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2648
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_445

    :cond_444
    :goto_444
    const/4 v5, 0x2

    .line 2654
    :cond_445
    :goto_445
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2655
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2656
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_45b

    :cond_451
    const/4 v5, 0x2

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/16 v10, 0xb

    const/4 v11, 0x0

    .line 2661
    invoke-static {v12, v14}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_34a

    .line 2665
    :cond_45f
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v4, 0xd

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private sendWomenHealthData(I)V
    .registers 5

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendWomenHealthData---a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "drer4re"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 1356
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealthProtocol()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceModel.isWomenHealthProtocol():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealthProtocol()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->sendData()V

    goto :goto_43

    .line 1360
    :cond_3e
    const-string p1, "false---"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method private setData(II)V
    .registers 7

    .line 2771
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    .line 2772
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2771
    invoke-virtual {p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2772
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 2773
    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setMakeLove()V
    .registers 3

    .line 2842
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    .line 2856
    const-string v0, ""

    goto :goto_43

    .line 2853
    :cond_14
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 2850
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 2847
    :cond_2c
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 2844
    :cond_38
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2859
    :goto_43
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setMood(IZ)V
    .registers 10

    .line 2980
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentMood:I

    .line 2981
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2982
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2981
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2982
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_59

    .line 2984
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMood(I)V

    .line 2985
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2987
    :cond_59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMood(I)V

    const v0, 0x7f0d00e7

    const v1, 0x7f0d00e6

    const v3, 0x7f0d00e5

    const v4, 0x7f0d00e4

    const v6, 0x7f0d00e3

    if-eqz p1, :cond_161

    if-eq p1, v5, :cond_134

    if-eq p1, v2, :cond_107

    const/4 v2, 0x3

    if-eq p1, v2, :cond_da

    const/4 v2, 0x4

    if-eq p1, v2, :cond_ac

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7e

    goto/16 :goto_17a

    .line 3033
    :cond_7e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3034
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3035
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3036
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3037
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    const v0, 0x7f0d00ec

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3039
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007ca

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto/16 :goto_17a

    .line 3024
    :cond_ac
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3025
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3026
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3027
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    const v1, 0x7f0d00eb

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3028
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3030
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto/16 :goto_17a

    .line 3015
    :cond_da
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3016
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3017
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    const v2, 0x7f0d00ea

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3018
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3019
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3021
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_17a

    .line 3006
    :cond_107
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3007
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    const v2, 0x7f0d00e9

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3008
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3009
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3010
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3012
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_17a

    .line 2997
    :cond_134
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    const v2, 0x7f0d00e8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2998
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2999
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3000
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3001
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3003
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_17a

    .line 2990
    :cond_161
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2991
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2992
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2993
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2994
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17a
    :goto_17a
    return-void
.end method

.method private setSymptom()V
    .registers 9

    .line 2863
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 2864
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2865
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2867
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_2b
    if-ge v6, v4, :cond_3f

    aget-object v7, v1, v6

    .line 2868
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v7, v0, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 2870
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->tvSymptom:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5a

    .line 2872
    :cond_53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->tvSymptom:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5a
    return-void
.end method

.method private updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V
    .registers 16

    if-eqz p2, :cond_15e

    .line 2670
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2671
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2672
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2673
    const-string p1, "womenHealthBean.getDysmenorrhea()  11:0"

    const-string v0, "6t6ty5rg"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2675
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2676
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2677
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2678
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2679
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2680
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2681
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    .line 2682
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    if-le v4, v5, :cond_57

    .line 2683
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 2685
    :cond_57
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2687
    :goto_66
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v4

    .line 2688
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v7, v4, p3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x1

    aget v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, p3

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v11, v4, v7

    .line 2689
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v10

    .line 2688
    invoke-virtual {v5, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 2689
    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    :goto_b6
    if-eqz v5, :cond_148

    .line 2690
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-ne v6, v10, :cond_148

    .line 2691
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2692
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2693
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2694
    const-string v6, "womenHealthBean.getDysmenorrhea()  12:0"

    invoke-static {v0, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2696
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2697
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2698
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2699
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2700
    aget v6, v4, v10

    if-le v6, v3, :cond_ef

    .line 2701
    aget v4, v4, v7

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    .line 2703
    :cond_ef
    aget v4, v4, v7

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2705
    :goto_f8
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v4, v6, v5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v4

    .line 2706
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v8, v4, p3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v8, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, p3

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v11, v4, v7

    .line 2707
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v10

    .line 2706
    invoke-virtual {v5, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 2707
    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    goto/16 :goto_b6

    :cond_148
    const/4 p1, 0x5

    .line 2709
    aget p3, v4, v7

    invoke-direct {p0, p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    .line 2710
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p2

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    :cond_15e
    return-void
.end method

.method private updateCloseNext(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1990
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1991
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 1990
    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1991
    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_61

    .line 1993
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1994
    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1995
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1996
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1999
    :cond_61
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 2000
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v6, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v10, v2, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v6, v7

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v10, v2, v4

    .line 2001
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v6, v8

    .line 2000
    invoke-virtual {v3, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2001
    invoke-virtual {v3, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2004
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2005
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2006
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2007
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    .line 2008
    const-string v10, "6t6ty5rg"

    if-nez v1, :cond_235

    :cond_dc
    :goto_dc
    if-eqz v3, :cond_3a5

    .line 2009
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v1

    if-ne v1, v8, :cond_3a5

    .line 2010
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2011
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2012
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v1, :cond_f1

    .line 2013
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2015
    :cond_f1
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2016
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v12, v2, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v12, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v14, v2, v8

    .line 2017
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v7

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v8

    .line 2016
    invoke-virtual {v1, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2017
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2019
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "womenHealthBean.getDysmenorrhea()  3:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2021
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2027
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2028
    aget v1, v2, v8

    if-ge v1, v9, :cond_16f

    .line 2029
    aget v3, v2, v4

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_178

    .line 2031
    :cond_16f
    aget v3, v2, v4

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2033
    :goto_178
    aget v1, v2, v7

    aget v3, v2, v8

    aget v2, v2, v4

    invoke-static {v1, v3, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 2034
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v11, v2, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v11, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v13, v2, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v7

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v13, v2, v4

    .line 2035
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v8

    .line 2034
    invoke-virtual {v1, v3, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2035
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_dc

    .line 2037
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v12, v2, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v12, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v14, v2, v8

    .line 2038
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v7

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v14, v2, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v8

    .line 2037
    invoke-virtual {v1, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2038
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2040
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "womenHealthBean.getDysmenorrhea()  5:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2042
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2048
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2049
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto/16 :goto_dc

    :cond_235
    move v11, v7

    :goto_236
    if-ge v11, v1, :cond_3a5

    if-eqz v3, :cond_39f

    .line 2055
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v12

    if-ne v12, v8, :cond_39f

    .line 2056
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2057
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2058
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2059
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v14, v2, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v16, v2, v8

    .line 2060
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v14, v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v15, v2, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v15, 0x1

    aput-object v8, v14, v15

    .line 2059
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 2060
    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2062
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "womenHealthBean.getDysmenorrhea()  7:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2064
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12, v8}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2070
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    const/4 v8, 0x1

    .line 2072
    aget v12, v2, v8

    if-ge v12, v9, :cond_2c6

    .line 2073
    aget v2, v2, v4

    filled-new-array {v12, v2}, [I

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2cf

    .line 2075
    :cond_2c6
    aget v2, v2, v4

    filled-new-array {v12, v2}, [I

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2077
    :goto_2cf
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-static {v2, v8, v3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 2078
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v12, v2, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v12, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x1

    aget v15, v2, v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v7

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v15, v2, v4

    .line 2079
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v14

    .line 2078
    invoke-virtual {v3, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2079
    invoke-virtual {v3, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_39d

    .line 2081
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v8, :cond_32a

    .line 2082
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2083
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2085
    :cond_32a
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2086
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v13, v2, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v13, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v15, 0x1

    aget v16, v2, v15

    .line 2087
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v7

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v15, v2, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 2086
    invoke-virtual {v8, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 2087
    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2089
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "womenHealthBean.getDysmenorrhea()  9:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2091
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12, v8}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2097
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_3a0

    :cond_39d
    const/4 v15, 0x1

    goto :goto_3a0

    :cond_39f
    move v15, v8

    :goto_3a0
    add-int/lit8 v11, v11, 0x1

    move v8, v15

    goto/16 :goto_236

    .line 2103
    :cond_3a5
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    .line 2104
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private updateOpen()V
    .registers 14

    const/4 v0, 0x0

    .line 2718
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->connLastOpen:I

    .line 2720
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2721
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2722
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->connLastOpen:I

    if-nez v1, :cond_18

    .line 2723
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_1d

    .line 2725
    :cond_18
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2727
    :goto_1d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2728
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v1

    .line 2729
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v0

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v8, v1, v5

    .line 2730
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v2

    .line 2729
    invoke-virtual {v3, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2730
    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_89

    .line 2731
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v4

    if-ne v4, v2, :cond_89

    .line 2732
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2733
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2735
    :cond_89
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2736
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2737
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2738
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    move v8, v0

    :goto_ad
    if-eqz v3, :cond_13a

    .line 2740
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-nez v9, :cond_13a

    .line 2741
    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2742
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2743
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2744
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2745
    aget v3, v1, v2

    if-ge v3, v7, :cond_d1

    .line 2746
    aget v9, v1, v5

    filled-new-array {v3, v9}, [I

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_da

    .line 2748
    :cond_d1
    aget v9, v1, v5

    filled-new-array {v3, v9}, [I

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2750
    :goto_da
    aget v3, v1, v0

    aget v9, v1, v2

    aget v1, v1, v5

    invoke-static {v3, v9, v1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v1

    .line 2751
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v10, v1, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    new-array v10, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v12, v1, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v0

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v12, v1, v5

    .line 2752
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v2

    .line 2751
    invoke-virtual {v3, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2752
    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_12c

    .line 2754
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2755
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2758
    :cond_12c
    iget v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->connLastOpen:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->connLastOpen:I

    const/16 v9, 0xb4

    if-le v8, v9, :cond_136

    goto :goto_13a

    :cond_136
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_ad

    :cond_13a
    :goto_13a
    const/4 v2, 0x6

    .line 2764
    aget v1, v1, v5

    invoke-direct {p0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    .line 2765
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v1, v4, v6, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V

    return-void
.end method

.method private updateOpenNext(I)V
    .registers 14

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateOpenNext_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "6t6tyg"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1931
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1930
    invoke-virtual {p1, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1931
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p1, :cond_75

    .line 1933
    invoke-virtual {p1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1934
    invoke-virtual {p1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1935
    invoke-virtual {p1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1936
    invoke-virtual {p1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1937
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_90

    .line 1939
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "while_nextDate1:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    :goto_90
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1942
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v4, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v8, p1, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v4, v5

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v8, p1, v2

    .line 1943
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1942
    invoke-virtual {v1, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1943
    invoke-virtual {v1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1944
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1945
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1948
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    if-eqz v1, :cond_105

    .line 1950
    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1951
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1952
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1953
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_120

    .line 1955
    :cond_105
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "while_nextDate2:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v9, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_120
    move v0, v5

    :goto_121
    if-eqz v1, :cond_1b4

    .line 1958
    aget v1, p1, v5

    aget v8, p1, v6

    aget p1, p1, v2

    invoke-static {v1, v8, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1959
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v9, p1, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v9, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v11, p1, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v5

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v11, p1, v2

    .line 1960
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v6

    .line 1959
    invoke-virtual {v1, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1960
    invoke-virtual {v1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1961
    aget v8, p1, v6

    if-ge v8, v7, :cond_179

    .line 1962
    aget v9, p1, v2

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_182

    .line 1964
    :cond_179
    aget v9, p1, v2

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_182
    if-eqz v1, :cond_1a5

    .line 1967
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v6, :cond_199

    .line 1968
    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1969
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1970
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1971
    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1a5

    .line 1973
    :cond_199
    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1974
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1975
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1b4

    .line 1979
    :cond_1a5
    :goto_1a5
    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    if-le v0, v8, :cond_1b0

    goto :goto_1b4

    :cond_1b0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_121

    .line 1984
    :cond_1b4
    :goto_1b4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    .line 1985
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    return-void
.end method


# virtual methods
.method public calPreAndNextLength()V
    .registers 4

    .line 3221
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 3222
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 3223
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 3224
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v1, 0x4

    .line 3225
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    .line 3226
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c009e

    return v0
.end method

.method protected initView()V
    .registers 15

    .line 147
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10074c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/StarBar;->setIntegerMark(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dura"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->dura:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "perimeter"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->perimeter:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "year"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->yearPre:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "month"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->monthPre:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "day"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->dayPre:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "home"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->home:Ljava/lang/String;

    const/4 v0, 0x4

    .line 163
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 164
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    .line 171
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->yearPre:Ljava/lang/String;

    const-string v3, "t6t566t"

    const/4 v4, 0x5

    const-string v5, "6t6tyg"

    const-string v6, "-"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v2, :cond_163

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_163

    .line 172
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->yearPre:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "preMenstrual  .setStartMenstrualYear  1  year:"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->yearPre:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->monthPre:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 175
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->dayPre:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 176
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->perimeter:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 177
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->dura:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "year : "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->yearPre:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->monthPre:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->dayPre:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "  dura"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->dura:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "  per:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->perimeter:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "preMenstrual1:"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f6

    .line 182
    :cond_163
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v2

    if-nez v2, :cond_18a

    .line 183
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v9, v9, v8

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "preMenstrual  .setStartMenstrualYear  2  year:"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v9, v9, v8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_18a
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v2

    if-nez v2, :cond_19b

    .line 187
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v9, v9, v1

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 189
    :cond_19b
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v2

    if-nez v2, :cond_1ac

    .line 190
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v9, v9, v7

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 192
    :cond_1ac
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    if-nez v2, :cond_1b9

    .line 193
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 195
    :cond_1b9
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v2

    if-nez v2, :cond_1cd

    .line 196
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/16 v9, 0x1c

    invoke-virtual {v2, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 197
    const-string v2, "preMenstrual.  setMenstrualDuration   111"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1cd
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 200
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "preMenstrual2:"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_1f6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v3

    const/4 v9, 0x3

    mul-int/2addr v3, v9

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 207
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    .line 208
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/2addr v2, v9

    const/16 v3, 0x1e

    const/4 v10, 0x7

    if-le v2, v3, :cond_21f

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_274

    .line 210
    :cond_21f
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/2addr v2, v9

    const/16 v3, 0x3c

    if-le v2, v3, :cond_230

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_274

    .line 212
    :cond_230
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/2addr v2, v9

    const/16 v3, 0x5a

    if-le v2, v3, :cond_241

    .line 213
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v2, v7, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_274

    .line 214
    :cond_241
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v9

    const/16 v2, 0x78

    if-le v0, v2, :cond_252

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_274

    .line 216
    :cond_252
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v9

    const/16 v2, 0x96

    if-le v0, v2, :cond_264

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_274

    .line 218
    :cond_264
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v9

    const/16 v2, 0xb4

    if-le v0, v2, :cond_274

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->add(II)V

    .line 221
    :cond_274
    :goto_274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "preMenstrual.getMenstrualCycle():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "t6t56t"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/StarBar;->setOnStarChangeListener(Lcom/keephealth/android/views/StarBar$OnStarChangeListener;)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/StarBar;->setIntegerMark(Z)V

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/StarBar;->setOnStarChangeListener(Lcom/keephealth/android/views/StarBar$OnStarChangeListener;)V

    .line 280
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->vibrator:Landroid/os/Vibrator;

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rightImg:Landroid/widget/ImageView;

    const v3, 0x7f0d0336

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itSymptom:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v9, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    .line 316
    invoke-static {v12}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v8

    .line 315
    invoke-virtual {v0, v3, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v9, v3, v8

    .line 316
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 317
    const-string v3, "6t6tg"

    if-eqz v0, :cond_3ad

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3ad

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "preMenstrual  .setStartMenstrualYear  3  year:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 320
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 321
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u6700\u8fd1\u4e00\u6b21\u7ecf\u671f:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_3ad
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v9, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v12, v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v8

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v12, v12, v7

    .line 327
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v1

    .line 326
    invoke-virtual {v0, v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v0, :cond_425

    .line 329
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 330
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v5, v5, v8

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 331
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v5, v5, v7

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 333
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 334
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    .line 337
    :cond_425
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setShowClick(Z)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartYear()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartMonthr()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 341
    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartYear()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartMonthr()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setStartEndDate(Ljava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v11, v11, v8

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v11, v11, v1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setInitDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v11, v11, v8

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v11, v11, v1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v9, v9, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setSingleDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->init()V

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v0, v0, v7

    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    .line 346
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v5, v0, v8

    aget v0, v0, v1

    invoke-static {v5, v0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getMonthRows(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "currentRows:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 350
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Ljava/util/Calendar;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 380
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 383
    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    mul-int/2addr v2, v10

    sub-int/2addr v0, v2

    div-int/2addr v0, v10

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->monthViewHeight:I

    .line 385
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rlTips:Landroid/widget/LinearLayout;

    neg-int v0, v0

    int-to-float v0, v0

    new-array v5, v7, [F

    const/4 v9, 0x0

    aput v9, v5, v8

    aput v0, v5, v1

    const-string v0, "translationY"

    invoke-static {v2, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x1f4

    .line 386
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 388
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rlTips:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->monthViewHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    new-array v7, v7, [F

    aput v5, v7, v8

    aput v9, v7, v1

    invoke-static {v2, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->objectAnimatorTranslateDown:Landroid/animation/ObjectAnimator;

    .line 389
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 391
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentRows:I

    if-ne v0, v4, :cond_599

    .line 392
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->rlTips:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 395
    :cond_599
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->titleDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v4, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->cDate:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02d"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u4e00\u6b21\u7ecf\u671fnext1:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    .line 401
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setOnMultiChooseListener(Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;)V

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setOnPagerChangeListener(Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;)V

    .line 561
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v1, :cond_677

    .line 562
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v1, :cond_663

    .line 563
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_67c

    .line 565
    :cond_663
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v1, :cond_671

    .line 566
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_67c

    .line 568
    :cond_671
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_67c

    .line 572
    :cond_677
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v8}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 576
    :goto_67c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-WomenHealthOldActivity(F)V
    .registers 8

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 246
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 245
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 247
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 248
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    if-ne p1, v5, :cond_6c

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b2

    :cond_6c
    if-ne p1, v2, :cond_7d

    .line 252
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b2

    :cond_7d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8f

    .line 254
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b2

    :cond_8f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a1

    .line 256
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b2

    :cond_a1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b2

    .line 258
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-WomenHealthOldActivity(F)V
    .registers 8

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 265
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 264
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 266
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 267
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    if-ne p1, v5, :cond_70

    .line 269
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b6

    :cond_70
    if-ne p1, v2, :cond_81

    .line 271
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b6

    :cond_81
    const/4 v0, 0x3

    if-ne p1, v0, :cond_93

    .line 273
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b6

    :cond_93
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a5

    .line 275
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_b6

    :cond_a5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b6

    .line 277
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    return-void
.end method

.method synthetic lambda$initView$17$com-keephealth-android-ui-device-activity-WomenHealthOldActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 19

    .line 0
    move-object/from16 v8, p0

    move/from16 v0, p2

    .line 577
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSwitchOn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "6t6tyg"

    invoke-static {v6, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 582
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xc

    .line 583
    invoke-virtual {v1, v11, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 584
    invoke-virtual {v1, v12, v10}, Ljava/util/Calendar;->set(II)V

    .line 585
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 586
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    const/4 v14, 0x2

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 587
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v15, 0x5

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 589
    invoke-static {v1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_fe0

    .line 590
    iput-boolean v13, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    .line 591
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    const-string v1, "6t6tyf"

    const-string v2, "visible  1"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 595
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 597
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    .line 598
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v13

    .line 597
    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 599
    new-instance v2, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 600
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 601
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 602
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v7, 0x4

    .line 603
    invoke-static {v7, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v4

    iput v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    .line 604
    invoke-static {v7, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    iput v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->onlyOneMunalData()Z

    .line 606
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-static {v2, v4}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result v2

    .line 607
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    if-le v4, v2, :cond_e4

    .line 608
    iput v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    .line 610
    :cond_e4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "closeBore:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openNewCyc_a"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x29

    .line 611
    const-string v5, "preMunalDayBetween:"

    const-string v12, "-"

    if-nez v0, :cond_7ca

    .line 612
    const-string v0, "isSwitchOn:\u5173\u95ed"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 613
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v9, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 614
    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    aput-object v2, v4, v10

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v9, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    aput-object v2, v4, v13

    .line 613
    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 614
    invoke-virtual {v0, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 615
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 616
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 617
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 631
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x7e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 632
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v10

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v13

    .line 631
    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 632
    invoke-virtual {v0, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "womenHealthBean.getDysmenorrhea()  14:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "6t6ty5rg"

    invoke-static {v9, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f100687

    invoke-virtual {v8, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentDate.getIsStartData():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "erer46e"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v13, :cond_5a2

    .line 638
    const-string v0, "isSwitchOn:\u5173\u95ed\u5f00\u542f\u65e5"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 639
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->onlyOneMunalData()Z

    move-result v0

    if-eqz v0, :cond_248

    .line 640
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearPrePregnancy(III)V

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->closeMenutralCal()V

    .line 643
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 644
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 645
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v1, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4ec5\u4ec5\u53ea\u6709\u4e00\u4e2a\u7ecf\u671f \u5173\u95ed\u6240\u6709:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->sendClearData()V

    goto/16 :goto_7c1

    .line 649
    :cond_248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u95ed\u7684\u5f53\u524d\u65e5\u671f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v7, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v11, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastMunalData(IZIII)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u95ed\u7684\u5f53\u524d\u65e5\u671fnextMunalDayBetween:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    const/4 v1, 0x0

    if-nez v0, :cond_34f

    .line 656
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v1, v0, v13}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-nez v0, :cond_2db

    goto/16 :goto_59d

    .line 665
    :cond_2db
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getPreMunalData(III)Ljava/util/Calendar;

    move-result-object v0

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preMunalDayBetween: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9700\u8981\u83b7\u53d6\u4e0a\u4e00\u4e2a\u7ecf\u671f\u7684\u5f00\u59cb\u65e5\u671f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6t6ty10g"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {v8, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearLastOneMunalafterData(Ljava/util/Calendar;)V

    .line 671
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "close"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 672
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v3, 0x34

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    goto/16 :goto_59d

    .line 675
    :cond_34f
    const-string v0, "\u5173\u95ed\u7684\u4e0d\u662f\u6700\u540e\u4e00\u4e2a\u7ecf\u671f..."

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearPrePregnancy(III)V

    .line 678
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->hasPreMunal(III)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    .line 679
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getCloseCurrentMunalNextObj(III)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    if-eqz v0, :cond_4f8

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u524d\u4e00\u4e2a\u7ecf\u671f\u7684\u7ed3\u675f\u65e5\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v1, "bean"

    iget-object v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v1, v3, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "preMunalDayBetween\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    const-string v3, "drer4re"

    if-eqz v1, :cond_46c

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-eqz v4, :cond_46c

    .line 691
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v4, 0xb

    .line 692
    invoke-virtual {v1, v4, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 693
    invoke-virtual {v1, v4, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 694
    invoke-virtual {v1, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 695
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v1, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 696
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v1, v14, v4}, Ljava/util/Calendar;->set(II)V

    .line 697
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-virtual {v1, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 698
    const-string v0, "1111111"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearPrePregnancy(III)V

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 705
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearNextPregnancy(III)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 707
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v2, :cond_59d

    const/16 v1, 0xb

    .line 709
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 710
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 711
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 712
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 713
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 714
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u65b0\u7ed8\u5236\u7684\u5b55\u671f2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "45er455"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-direct {v8, v14, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto/16 :goto_59d

    :cond_46c
    if-eqz v1, :cond_59d

    .line 718
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_59d

    .line 719
    const-string v0, "222222"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scrollYear:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 724
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastMunalData(IZIII)V

    .line 725
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getPreMunalData(III)Ljava/util/Calendar;

    move-result-object v0

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calendar:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drer5re"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "close"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 728
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v3, 0xd

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    goto/16 :goto_59d

    .line 732
    :cond_4f8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "scrollYear:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "45er45t5"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 735
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v3, 0x3

    invoke-direct {v8, v1, v0, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    if-eqz v2, :cond_59d

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u4e00\u4e2a\u7ecf\u671f\u7684\u7ed3\u675f\u65e5\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 741
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-direct {v8, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearPrePregnancy(III)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 743
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 744
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 745
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 746
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 747
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 748
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 749
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x3

    .line 750
    invoke-direct {v8, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 754
    :cond_59d
    :goto_59d
    invoke-direct {v8, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->sendWomenHealthData(I)V

    goto/16 :goto_7c1

    .line 757
    :cond_5a2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u95ed55555_currentDate.getIsEndMenstrualDate():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "\u5173\u95ed77777\uff1a"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v13, :cond_7bd

    .line 762
    const-string v0, "\u5173\u95ed55555:"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-eqz v0, :cond_6c3

    if-nez v0, :cond_5d4

    goto/16 :goto_6c3

    .line 801
    :cond_5d4
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----5nextMunalDayBetween\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 804
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 805
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 806
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v1, 0x3

    .line 807
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    iput v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    .line 808
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v0

    iput v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----153:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-gt v0, v15, :cond_671

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_671

    .line 813
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100688

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda1;-><init>()V

    const v2, 0x7f100257

    .line 815
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    .line 817
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 818
    const-string v0, "\u6253\u5f00\u2014\u2014-----4"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7bd

    :cond_671
    if-gt v0, v15, :cond_7bd

    .line 819
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_7bd

    .line 821
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {v14, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_6b9

    .line 822
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 823
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 824
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda2;-><init>()V

    const v2, 0x7f100257

    .line 826
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_6bc

    .line 829
    :cond_6b9
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentEndMenuralDelayOnDay()V

    .line 831
    :goto_6bc
    const-string v0, "\u6253\u5f00\u2014\u2014-----45"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7bd

    .line 764
    :cond_6c3
    :goto_6c3
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {v13, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_705

    .line 765
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 766
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 767
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda15;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    const v2, 0x7f100257

    .line 769
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 775
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_7b8

    .line 777
    :cond_705
    const-string v0, "\u5173\u95ed66666\uff1acurrentEndMenuralDelayOnDay"

    const-string v1, "6t6tyfg"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 779
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 780
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v2, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 781
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v3, v13

    invoke-virtual {v2, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 782
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v2, v15, v3}, Ljava/util/Calendar;->set(II)V

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calendar:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 785
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 786
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "womenHealthBean_\u5e74\u6708\u65e5:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-static {v7, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_7b0

    .line 789
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 790
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda17;-><init>()V

    const v2, 0x7f100257

    .line 792
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_7b8

    .line 795
    :cond_7b0
    const-string v0, "\u5173\u95ed66666\uff1acurrentEndMenuralDelayOnDay"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentEndMenuralDelayOnDay()V

    .line 799
    :goto_7b8
    const-string v0, "\u5173\u95ed66666\uff1a"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7bd
    :goto_7bd
    const/4 v0, 0x3

    .line 835
    invoke-direct {v8, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->sendWomenHealthData(I)V

    .line 837
    :goto_7c1
    const-string v0, "ere4re4"

    const-string v1, "----------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fdc

    :cond_7ca
    move-object v11, v5

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pre:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  next:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_87b

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preMenstrual  .setStartMenstrualYear  4  year:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 847
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 848
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 850
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 851
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 852
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 864
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----1_cycle\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6ty56g"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_878
    :goto_878
    move v9, v7

    goto/16 :goto_fd9

    .line 869
    :cond_87b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentDate.getIsMenstrual():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 871
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-nez v0, :cond_d89

    .line 873
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-eqz v0, :cond_c27

    .line 875
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v1, :cond_991

    if-gt v0, v15, :cond_8f2

    .line 879
    const-string v0, "\u6253\u5f00\u2014\u2014-----2"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {v15, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_8ee

    .line 883
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 884
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 885
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda3;-><init>()V

    const v2, 0x7f100257

    .line 887
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_878

    .line 890
    :cond_8ee
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateOpen()V

    goto :goto_878

    .line 893
    :cond_8f2
    const-string v0, "6t6tyhg"

    const-string v1, "\u6253\u5f00\u2014\u2014-----3_lastNextMunalYear:"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v0, v13}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 896
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastMunalData(IZIII)V

    .line 897
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_878

    .line 898
    const-string v0, "\u6253\u5f00\u2014\u2014-----3_lastNextMunalYear  \u662f\u6700\u540e\u4e00\u4e2a\u7ecf\u671f:"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 901
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v9, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 902
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v0, v13

    invoke-virtual {v9, v14, v0}, Ljava/util/Calendar;->set(II)V

    .line 903
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v9, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 904
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v6, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "open"

    move-object/from16 v0, p0

    move v12, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  preMenstrual.getMenstrualCycle():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6ty10g"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-direct {v8, v13}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearForecastMunalPregna(I)V

    .line 910
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 911
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 912
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 913
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 914
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 915
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 916
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x7

    .line 917
    invoke-direct {v8, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 918
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v12, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    goto/16 :goto_c82

    :cond_991
    move v12, v7

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   nextMunalDayBetween:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-gt v0, v15, :cond_9eb

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-gt v1, v15, :cond_9eb

    .line 926
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100688

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda4;-><init>()V

    const v2, 0x7f100257

    .line 928
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    .line 930
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 931
    const-string v0, "\u6253\u5f00\u2014\u2014-----4"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c82

    :cond_9eb
    if-gt v0, v15, :cond_a62

    .line 932
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-le v1, v15, :cond_a62

    .line 935
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calPreMuntralStart(III)Ljava/util/Calendar;

    move-result-object v0

    .line 936
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 937
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 938
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 939
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 940
    const-string v2, "\u6253\u5f00\u2014\u2014-----551"

    invoke-static {v6, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    if-le v0, v1, :cond_a58

    .line 942
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 944
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda5;-><init>()V

    const v2, 0x7f100257

    .line 946
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_a5b

    .line 949
    :cond_a58
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateOpen()V

    .line 951
    :goto_a5b
    const-string v0, "\u6253\u5f00\u2014\u2014-----551"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c82

    :cond_a62
    if-le v0, v15, :cond_bd5

    .line 952
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    add-int/2addr v1, v15

    if-ge v0, v1, :cond_bd5

    .line 954
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 955
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 956
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 957
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 958
    new-instance v1, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 959
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 960
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 961
    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v0, 0x3

    .line 962
    invoke-static {v0, v1}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v0

    .line 963
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    if-lt v0, v1, :cond_ad9

    .line 964
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 965
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda6;-><init>()V

    const v2, 0x7f100257

    .line 967
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_c82

    .line 971
    :cond_ad9
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralAndOldEnd(IIII)Ljava/util/Calendar;

    move-result-object v0

    .line 972
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 973
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 974
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 975
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nextMutael:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6t6ty6g"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5f00\u2014\u2014-----551  11:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6t6ty6g"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    if-le v0, v1, :cond_ba0

    .line 979
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 980
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 981
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100689

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda7;-><init>()V

    const v2, 0x7f100257

    .line 983
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_c82

    .line 986
    :cond_ba0
    new-instance v0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$7;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    const v2, 0x7f100193

    .line 988
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$6;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    const v4, 0x7f100257

    .line 995
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->create()Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->show()V

    goto/16 :goto_c82

    .line 1069
    :cond_bd5
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-le v0, v15, :cond_c21

    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    add-int/2addr v1, v15

    if-lt v0, v1, :cond_c21

    .line 1071
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v0, v12}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 1072
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1073
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 1074
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 1075
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5f00\u2014\u2014-----7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    .line 1077
    invoke-direct {v8, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto :goto_c82

    .line 1080
    :cond_c21
    const-string v0, "\u6253\u5f00\u2014\u2014-----17"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c82

    :cond_c27
    move v12, v7

    const v3, 0x7f100689

    const v4, 0x7f100257

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 1086
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_c85

    .line 1087
    const-string v0, "\u6253\u5f00-----14"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preMenstrual  .setStartMenstrualYear  5  year:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 1090
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 1091
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 1092
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 1093
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 1094
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v10, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuData(ZIII)V

    .line 1095
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v3, 0x7

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    :goto_c82
    move v9, v12

    goto/16 :goto_fd9

    .line 1097
    :cond_c85
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    add-int/2addr v1, v15

    if-ge v0, v1, :cond_d82

    .line 1104
    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v7, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v9, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v11, v3

    move v3, v5

    move v5, v4

    move v4, v7

    move v7, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastMunalData(IZIII)V

    .line 1105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1106
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 1107
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 1108
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1109
    new-instance v1, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 1110
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 1111
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 1112
    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v2, 0x3

    .line 1113
    invoke-static {v2, v1}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dateBean:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "calendarNow:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    if-lt v2, v0, :cond_d50

    .line 1118
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 1119
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda8;-><init>()V

    .line 1121
    invoke-virtual {v0, v7, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_c82

    .line 1124
    :cond_d50
    new-instance v0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$9;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    const v2, 0x7f100193

    .line 1126
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$8;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    .line 1133
    invoke-virtual {v0, v7, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->create()Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->show()V

    goto/16 :goto_c82

    .line 1236
    :cond_d82
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v0, v15}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    goto/16 :goto_c82

    :cond_d89
    move v9, v7

    const v7, 0x7f100257

    const v11, 0x7f100689

    .line 1240
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v13, :cond_ee8

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 1245
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_e56

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00-----45:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-direct {v8, v10}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateCloseNext(I)V

    .line 1249
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 1250
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 1251
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 1252
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 1253
    invoke-static {v14, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextWillMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)Ljava/util/Calendar;

    move-result-object v1

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---------------dateBean:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearPrePregnancy(III)V

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "---------------:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 1259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    .line 1260
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1261
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 1262
    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 1263
    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 1264
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1265
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 1266
    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1267
    invoke-direct {v8, v2, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto/16 :goto_fd9

    .line 1269
    :cond_e56
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 1270
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 1271
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 1272
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00-----20_scrollYear:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00-----20:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralStartTime(III)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-direct {v8, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateCloseNext(I)V

    .line 1277
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralStartTime(III)Ljava/util/Calendar;

    move-result-object v0

    .line 1278
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {v8, v1, v2, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearPrePregnancy(III)V

    .line 1279
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralStartTime(III)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {v8, v15, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto/16 :goto_fd9

    .line 1282
    :cond_ee8
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5f00-----IsMenstrual == 2:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMunalDayBetween:I

    if-gt v0, v15, :cond_f4a

    .line 1288
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_f45

    .line 1289
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1290
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 1291
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$$ExternalSyntheticLambda16;-><init>()V

    .line 1293
    invoke-virtual {v0, v7, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1294
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_fd9

    .line 1296
    :cond_f45
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateOpen()V

    goto/16 :goto_fd9

    .line 1300
    :cond_f4a
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calPreAndNextLength()V

    .line 1302
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_f97

    .line 1304
    invoke-direct {v8, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->clearForecastMunalPregna(I)V

    .line 1305
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v6, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v3, "open"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 1306
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 1307
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 1308
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 1309
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 1310
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 1311
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 1312
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1314
    invoke-direct {v8, v15, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 1315
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/16 v3, 0x9

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    goto :goto_fd9

    .line 1317
    :cond_f97
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v2

    add-int/2addr v2, v15

    if-ge v0, v2, :cond_fca

    .line 1318
    invoke-direct {v8, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->updateOpenNext(I)V

    .line 1319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    .line 1320
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1321
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1322
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1323
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1324
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    invoke-virtual {v0, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1325
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 1327
    invoke-direct {v8, v15, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto :goto_fd0

    .line 1329
    :cond_fca
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v2, 0x6

    invoke-direct {v8, v0, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 1331
    :goto_fd0
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-direct {v8, v1, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    .line 1336
    :goto_fd9
    invoke-direct {v8, v9}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->sendWomenHealthData(I)V

    .line 1338
    :goto_fdc
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->onlyOneMunalData()Z

    goto :goto_ffd

    .line 1341
    :cond_fe0
    iput-boolean v10, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    .line 1342
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1343
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1344
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 1345
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1346
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    :goto_ffd
    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-WomenHealthOldActivity(Landroid/view/View;)V
    .registers 8

    .line 283
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastMunalData(IZIII)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bean == null-----current:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "6t6t6g"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 286
    const-string v0, "from"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v0, "year"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v0, "month"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v0, "day"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v0, "lastNextMunalEndYear"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v0, "lastNextMunalEndMonth"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndMonth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string v0, "lastNextMunalEndDay"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lastNextMunalEndDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-class v0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;

    const/16 v1, 0x12c

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-device-activity-WomenHealthOldActivity(Landroid/view/View;)V
    .registers 4

    .line 296
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    if-eqz p1, :cond_1c

    .line 297
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 298
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    const-string v1, "MakeLove"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-class v0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;

    const/16 v1, 0xc8

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_21

    .line 301
    :cond_1c
    const-string p1, "\u8d85\u8fc7180\u7684\u6570\u636e\u4e0d\u53ef\u4fee\u6539"

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method synthetic lambda$initView$4$com-keephealth-android-ui-device-activity-WomenHealthOldActivity(Landroid/view/View;)V
    .registers 4

    .line 305
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    if-eqz p1, :cond_1c

    .line 306
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Symptom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-class v0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;

    const/16 v1, 0x64

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_21

    .line 310
    :cond_1c
    const-string p1, "\u8d85\u8fc7180\u7684\u6570\u636e\u4e0d\u53ef\u4fee\u6539"

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method synthetic lambda$initView$5$com-keephealth-android-ui-device-activity-WomenHealthOldActivity([I)V
    .registers 9

    .line 0
    const/4 v0, 0x0

    .line 527
    aget v1, p1, v0

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    const/4 v1, 0x1

    .line 528
    aget v2, p1, v1

    iput v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    const/4 v2, 0x2

    .line 529
    aget v3, p1, v2

    iput v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    .line 530
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->titleDate:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02d"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    .line 532
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 533
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 534
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 535
    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 536
    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 537
    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 538
    invoke-static {v3}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-gt v3, v4, :cond_bc

    .line 539
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    .line 540
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 542
    const-string v1, "6t6tyf"

    const-string v3, "visible  4"

    invoke-static {v1, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-----------\u5de6\u53f3\u6ed1\u52a8----------------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollMonth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ttt55tt"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 548
    :cond_bc
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    .line 549
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 559
    :goto_ca
    aget p1, p1, v2

    invoke-direct {p0, v5, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V

    return-void
.end method

.method synthetic lambda$initView$6$com-keephealth-android-ui-device-activity-WomenHealthOldActivity(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 771
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 772
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 773
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 774
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public lastMonth(Landroid/view/View;)V
    .registers 2

    .line 3055
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastMonth()V

    return-void
.end method

.method moodOnClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090210,
            0x7f090211,
            0x7f090212,
            0x7f090213,
            0x7f090214
        }
    .end annotation

    .line 3046
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3047
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 3048
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setMood(IZ)V

    goto :goto_18

    .line 3050
    :cond_13
    const-string p1, "\u8d85\u8fc7180\u7684\u6570\u636e\u4e0d\u53ef\u4fee\u6539"

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public nextMonth(Landroid/view/View;)V
    .registers 2

    .line 3059
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->nextMonth()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    .line 2878
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_6

    return-void

    :cond_6
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_197

    const/16 p2, 0x64

    if-eq p1, p2, :cond_17f

    if-eq p1, v0, :cond_147

    const/16 p2, 0x12c

    if-eq p1, p2, :cond_16

    goto/16 :goto_197

    .line 2894
    :cond_16
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v0, "perimeter"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 2895
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "dura"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2896
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2897
    invoke-static {p0, p2, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2898
    invoke-static {p0, v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2899
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    if-nez v4, :cond_8a

    .line 2901
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$12;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2912
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 2913
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p3

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->notifyMonthView(IIII)V

    goto/16 :goto_197

    .line 2915
    :cond_8a
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "year"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2916
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "month"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2917
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "day"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2918
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2919
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    .line 2920
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "preMenstrual  .setStartMenstrualYear  8  year:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "6t6tyg"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 2922
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 2923
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 2924
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 2925
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 2926
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2927
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->add(II)V

    .line 2928
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    .line 2929
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$13;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$13;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;IIIII)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2947
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_197

    .line 2887
    :cond_147
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "backMakeLove"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMakeLove(I)V

    .line 2888
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2889
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p3

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2890
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V

    .line 2891
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setMakeLove()V

    goto :goto_197

    .line 2883
    :cond_17f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "backSymptom"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSymptom(Ljava/lang/String;)V

    .line 2884
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setSymptom()V

    :cond_197
    :goto_197
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 3237
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/greenrobot/greendao/DaoException; {:try_start_0 .. :try_end_7} :catch_7

    .line 3241
    :catch_7
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 3242
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
