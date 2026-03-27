.class public Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "WomenHealthActivity.java"


# instance fields
.field private final REQUET_MAKELOVE:I

.field private final REQUET_SET:I

.field private final REQUET_SYMPTOM:I

.field private cDate:[I

.field private calPregnancyNumber:I

.field calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

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

.field private home:Ljava/lang/String;

.field ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

.field imgMood1:Landroid/widget/ImageView;

.field imgMood2:Landroid/widget/ImageView;

.field imgMood3:Landroid/widget/ImageView;

.field imgMood4:Landroid/widget/ImageView;

.field imgMood5:Landroid/widget/ImageView;

.field private isCanSetPregnancy:Z

.field private isLessOrEqual:Z

.field itMen:Lcom/keephealth/android/views/ItemToggleLayout;

.field itSymptom:Landroid/widget/LinearLayout;

.field private lastNextMunalDay:I

.field private lastNextMunalEndDay:I

.field private lastNextMunalEndMonth:I

.field private lastNextMunalEndYear:I

.field private lastNextMunalMonth:I

.field private lastNextMunalYear:I

.field lin_mood_makelove:Landroid/widget/LinearLayout;

.field lin_out_women_date:Landroid/widget/LinearLayout;

.field llMenstrual:Landroid/widget/LinearLayout;

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

.field private scrollDay:I

.field private scrollMonth:I

.field private scrollYear:I

.field showDate:Landroid/widget/LinearLayout;

.field starBarDysm:Lcom/keephealth/android/views/StarBar;

.field starBarFlow:Lcom/keephealth/android/views/StarBar;

.field titleDate:Landroid/widget/TextView;

.field tvSymptom:Landroid/widget/TextView;

.field private vibrator:Landroid/os/Vibrator;

.field view_out_women_date:Landroid/view/View;

.field womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

.field year:I

.field private yearPre:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 98
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getCurrentDate()[I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    .line 104
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    .line 105
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    const/16 v0, 0x64

    .line 106
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->REQUET_SYMPTOM:I

    const/16 v0, 0xc8

    .line 107
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->REQUET_MAKELOVE:I

    const/16 v0, 0x12c

    .line 108
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->REQUET_SET:I

    const/4 v0, 0x0

    .line 1552
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    .line 2309
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->minpreMunalDayBetween:I

    const/4 v0, 0x1

    .line 3179
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isCanSetPregnancy:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    return p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;II)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    return p0
.end method

.method static synthetic access$1202(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    return p1
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    return p0
.end method

.method static synthetic access$1302(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    return p1
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    return p0
.end method

.method static synthetic access$1402(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    return p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->prePosition:I

    return p0
.end method

.method static synthetic access$1602(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->prePosition:I

    return p1
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextPosition:I

    return p0
.end method

.method static synthetic access$1702(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextPosition:I

    return p1
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Z
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onlyOneMunalData()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IZ)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setMood(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentMood:I

    return p1
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setMakeLove()V

    return-void
.end method

.method static synthetic access$2200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setSymptom()V

    return-void
.end method

.method static synthetic access$2300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Landroid/view/View;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->moodOnClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ZIII)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuData(ZIII)V

    return-void
.end method

.method static synthetic access$2500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpenNext(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IZIII)V
    .registers 6

    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastMunalData(IZIII)V

    return-void
.end method

.method static synthetic access$2700(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I

    return p0
.end method

.method static synthetic access$2800(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I

    return p0
.end method

.method static synthetic access$2900(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V
    .registers 5

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method static synthetic access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILjava/util/Calendar;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;III)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ZILjava/lang/String;IIILjava/util/Calendar;)V
    .registers 8

    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->objectAnimatorTranslateDown:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Z)Z
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    return p0
.end method

.method private calLastEndMunalDate(IIIZI)Z
    .registers 14

    .line 2232
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p5

    .line 2233
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2234
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2233
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2234
    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    :cond_43
    :goto_43
    if-eqz v0, :cond_a8

    .line 2235
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v6, :cond_a8

    .line 2236
    aget v0, p5, v2

    aget v1, p5, v6

    aget p5, p5, v3

    invoke-static {v0, v1, p5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p5

    .line 2237
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2238
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2237
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2238
    invoke-virtual {v0, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_43

    .line 2239
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v1

    if-ne v1, v6, :cond_43

    .line 2240
    aget v1, p5, v2

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->year:I

    .line 2241
    aget v1, p5, v6

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->month:I

    .line 2242
    aget v1, p5, v3

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->day:I

    goto :goto_43

    .line 2245
    :cond_a8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p5

    const/16 v0, 0xb

    .line 2246
    invoke-virtual {p5, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 2247
    invoke-virtual {p5, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 2248
    invoke-virtual {p5, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 2249
    invoke-virtual {p5, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 2250
    invoke-virtual {p5, v3, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2251
    invoke-virtual {p5, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 2253
    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->year:I

    if-eqz p2, :cond_1f1

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->month:I

    if-eqz p3, :cond_1f1

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->day:I

    if-eqz v0, :cond_1f1

    .line 2254
    invoke-static {p5, p2, p3, v0}, Lcom/keephealth/android/util/DateUtil;->isDateNowToday(Ljava/util/Calendar;III)Z

    move-result p2

    if-eqz p2, :cond_1e5

    .line 2255
    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->year:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->month:I

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->day:I

    invoke-static {p2, p3, v0}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object p2

    .line 2256
    invoke-static {p2, p5}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p2

    if-eqz p2, :cond_fb

    .line 2257
    invoke-virtual {p5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I

    .line 2258
    invoke-virtual {p5, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v6

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I

    .line 2259
    invoke-virtual {p5, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I

    return v6

    .line 2263
    :cond_fb
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->year:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->month:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->day:I

    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2264
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v0, v6

    .line 2264
    invoke-virtual {p2, p3, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2265
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p2, v2

    :goto_144
    if-eqz p1, :cond_1f1

    .line 2268
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object p3

    .line 2269
    invoke-static {p3, p5}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p3

    if-eqz p3, :cond_16f

    .line 2270
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I

    .line 2271
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I

    .line 2272
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I

    return v6

    .line 2275
    :cond_16f
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    invoke-static {p3, v0, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2276
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v1, v6

    .line 2276
    invoke-virtual {p3, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    .line 2277
    invoke-virtual {p3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p4, :cond_1c0

    return v2

    :cond_1c0
    if-eqz p3, :cond_1d5

    .line 2282
    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v6, :cond_1d5

    .line 2283
    aget p2, p1, v2

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I

    .line 2284
    aget p2, p1, v6

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I

    .line 2285
    aget p1, p1, v3

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I

    return v6

    .line 2291
    :cond_1d5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    if-le p2, p1, :cond_1e0

    goto :goto_1f1

    :cond_1e0
    add-int/lit8 p2, p2, 0x1

    move-object p1, p3

    goto/16 :goto_144

    .line 2297
    :cond_1e5
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->year:I

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I

    .line 2298
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->month:I

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I

    .line 2299
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->day:I

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I

    :cond_1f1
    :goto_1f1
    return v2
.end method

.method private caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 3

    .line 2421
    new-instance p1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearForecastMunalPregna(I)V
    .registers 13

    .line 1396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1397
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1398
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 1399
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1402
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {v0, v4, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1404
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1405
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

    .line 1404
    invoke-virtual {v0, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1405
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move v3, v1

    move v5, v4

    :goto_69
    if-eqz v0, :cond_111

    .line 1407
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v1, :cond_111

    .line 1408
    const-string v6, "6t6tyg"

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-eq v7, v1, :cond_97

    .line 1409
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v1, :cond_82

    move v3, v4

    :cond_82
    if-eqz v3, :cond_97

    .line 1413
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1414
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1415
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1416
    const-string v7, "4"

    invoke-static {v6, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v7, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1420
    :cond_97
    aget v0, p1, v4

    aget v7, p1, v1

    aget p1, p1, v2

    invoke-static {v0, v7, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1422
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1423
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

    .line 1422
    invoke-virtual {v0, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1423
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_e8

    .line 1424
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v1, :cond_e8

    goto :goto_111

    :cond_e8
    if-eqz v0, :cond_f1

    .line 1427
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-ne v7, v1, :cond_f1

    move v3, v4

    :cond_f1
    if-eqz v3, :cond_108

    if-eqz v0, :cond_108

    .line 1432
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1433
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1434
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1435
    const-string v7, "6"

    invoke-static {v6, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_108
    const/16 v6, 0xb4

    if-le v5, v6, :cond_10d

    goto :goto_111

    :cond_10d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_69

    :cond_111
    :goto_111
    return-void
.end method

.method private clearLastOneMunalafterData(Ljava/util/Calendar;)V
    .registers 6

    .line 1450
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 1547
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 1548
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private clearNextPregnancy(III)V
    .registers 11

    .line 1515
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1516
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1517
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

    .line 1516
    invoke-virtual {p2, p3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1517
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p3, v0

    :goto_46
    if-eqz p2, :cond_4e

    .line 1519
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-eqz v2, :cond_54

    :cond_4e
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result p2

    if-ne p2, v1, :cond_d4

    .line 1520
    :cond_54
    aget p2, p1, v0

    aget v2, p1, v4

    aget p1, p1, v1

    invoke-static {p2, v2, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1521
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1522
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

    .line 1521
    invoke-virtual {p2, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1522
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_a5

    .line 1523
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v4, :cond_a5

    goto :goto_d4

    :cond_a5
    if-eqz p2, :cond_d4

    .line 1526
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-nez v2, :cond_d4

    .line 1527
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1528
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1529
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1530
    const-string v2, "6t6tyg"

    const-string v3, "11"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1532
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1538
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    if-le p3, v2, :cond_d0

    goto :goto_d4

    :cond_d0
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_46

    .line 1543
    :cond_d4
    :goto_d4
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private clearPrePregnancy(III)V
    .registers 11

    .line 1483
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1484
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1487
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

    .line 1488
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result p2

    if-nez p2, :cond_da

    .line 1489
    aget p2, p1, v0

    aget v2, p1, v4

    aget p1, p1, v1

    invoke-static {p2, v2, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1490
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1491
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

    .line 1490
    invoke-virtual {p2, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1491
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_bc

    .line 1492
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v4, :cond_bc

    goto :goto_da

    :cond_bc
    if-eqz p2, :cond_da

    .line 1495
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-nez v2, :cond_da

    .line 1496
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1497
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1498
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1499
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    const/16 v2, 0xb4

    if-le p3, v2, :cond_d7

    goto :goto_da

    :cond_d7
    add-int/lit8 p3, p3, 0x1

    goto :goto_63

    .line 1510
    :cond_da
    :goto_da
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private closeMenutralCal()V
    .registers 6

    .line 2411
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v4, 0x9

    invoke-static {v4, v0, v1, v2, v3}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 2412
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 2413
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 2414
    const-string v0, "6t6tyg"

    const-string v1, "preMenstrual  .setStartMenstrualYear  7  year:-1"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    return-void
.end method

.method private currentEndMenuralDelayOnDay()V
    .registers 10

    .line 1937
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1938
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1939
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1940
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1941
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v0

    .line 1942
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1943
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v6, v1

    .line 1942
    invoke-virtual {v3, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1943
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1944
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1945
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1946
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_a9

    .line 1948
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1949
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1950
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1951
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1952
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1954
    :cond_a9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    .line 1955
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v2

    const/4 v3, 0x6

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private getCloseCurrentMunalNextObj(III)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 11

    .line 2369
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2370
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v2, v4

    .line 2370
    invoke-virtual {p2, p3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2371
    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p2, v0

    :goto_46
    if-eqz p1, :cond_4e

    .line 2373
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

    .line 2374
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result p3

    if-ne p3, v4, :cond_5f

    return-object p1

    .line 2378
    :cond_5f
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p3

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    invoke-static {p3, v2, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 2379
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    aput-object p1, v3, v4

    .line 2379
    invoke-virtual {p3, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2380
    invoke-virtual {p1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2381
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 1456
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1458
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1459
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1460
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

    .line 1459
    invoke-virtual {p2, p3, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1460
    invoke-virtual {p2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move p3, v1

    :goto_4a
    if-eqz p2, :cond_bb

    .line 1463
    aget p2, p1, v1

    aget v3, p1, v5

    aget p1, p1, v2

    invoke-static {p2, v3, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object p1

    .line 1464
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1465
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

    .line 1464
    invoke-virtual {p2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 1465
    invoke-virtual {p2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_b3

    .line 1466
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v3

    if-ne v3, v5, :cond_b3

    .line 1467
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 1468
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 1469
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

    .line 2313
    iput v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->minpreMunalDayBetween:I

    .line 2314
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    if-eqz v5, :cond_e6

    .line 2315
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v5

    .line 2316
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    if-eqz v5, :cond_50

    .line 2317
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_50

    move v9, v4

    .line 2318
    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_50

    .line 2319
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

    .line 2321
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 2325
    :cond_50
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e6

    .line 2326
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2327
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v9, 0xb

    .line 2328
    invoke-virtual {v5, v9, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    .line 2329
    invoke-virtual {v5, v10, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xd

    .line 2330
    invoke-virtual {v5, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 2331
    invoke-virtual {v5, v8, v1}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x2

    .line 2332
    invoke-virtual {v5, v13, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    .line 2333
    invoke-virtual {v5, v12, v3}, Ljava/util/Calendar;->set(II)V

    move v14, v4

    const/4 v15, 0x0

    .line 2335
    :goto_7b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_e7

    .line 2336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2337
    invoke-virtual {v6, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 2338
    invoke-virtual {v6, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 2339
    invoke-virtual {v6, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 2340
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v6, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 2341
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v6, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 2342
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-virtual {v6, v12, v4}, Ljava/util/Calendar;->set(II)V

    .line 2344
    invoke-static {v6, v1, v2, v3}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 2346
    iget v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->minpreMunalDayBetween:I

    if-nez v4, :cond_ce

    .line 2347
    invoke-static {v6, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v4

    iput v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->minpreMunalDayBetween:I

    .line 2348
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    goto :goto_e1

    .line 2350
    :cond_ce
    invoke-static {v6, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v8

    if-le v4, v8, :cond_e1

    .line 2351
    invoke-static {v6, v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v4

    iput v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->minpreMunalDayBetween:I

    .line 2352
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

.method private initListener()V
    .registers 3

    .line 3137
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$15;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$15;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3143
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$16;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$16;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3149
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$17;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$17;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3155
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$18;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$18;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$19;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$19;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
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

    .line 2150
    :try_start_8
    iget-object v0, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    if-eqz v0, :cond_2c1

    .line 2151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2153
    iget-object v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2155
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2c1

    const-string v3, ""

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v2, :cond_11b

    move v2, v10

    .line 2157
    :goto_34
    :try_start_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11b

    .line 2158
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

    .line 2160
    new-instance v4, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;-><init>()V

    .line 2161
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartYear(J)V

    .line 2162
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartMonth(I)V

    .line 2163
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/model/bean/WomenHealthDeviceBean;->setStartDay(I)V

    .line 2164
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    const/16 v12, 0xa

    if-ge v5, v12, :cond_d2

    .line 2165
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

    .line 2167
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

    .line 2169
    :goto_114
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_117
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_34

    .line 2173
    :cond_11b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b3

    .line 2174
    new-instance v0, Lcom/keephealth/android/util/MyBeanComparator;

    invoke-direct {v0}, Lcom/keephealth/android/util/MyBeanComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/16 v0, 0xb

    .line 2176
    invoke-virtual {v12, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 2177
    invoke-virtual {v12, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 2178
    invoke-virtual {v12, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 2179
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

    .line 2180
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

    .line 2181
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

    .line 2183
    invoke-static {v12, v7, v8, v9}, Lcom/keephealth/android/util/DateUtil;->isDateNowToday(Ljava/util/Calendar;III)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 2184
    invoke-static/range {p3 .. p5}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object v0

    .line 2185
    invoke-static {v0, v12}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 2186
    iput v7, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalYear:I

    .line 2187
    iput v8, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalMonth:I

    .line 2188
    iput v9, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalDay:I

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    .line 2189
    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calLastEndMunalDate(IIIZI)Z

    goto/16 :goto_2b3

    .line 2191
    :cond_1b3
    invoke-static/range {p3 .. p5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v0

    .line 2192
    iget-object v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v3, v11

    .line 2192
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2193
    invoke-virtual {v0, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move v14, v10

    :goto_1f6
    if-eqz v0, :cond_2b3

    .line 2196
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/DateUtil;->getCalendarBean(III)Ljava/util/Calendar;

    move-result-object v1

    .line 2197
    invoke-static {v1, v12}, Lcom/keephealth/android/util/DateUtil;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_236

    .line 2198
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iput v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalYear:I

    .line 2199
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iput v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalMonth:I

    .line 2200
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    iput v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalDay:I

    .line 2201
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calLastEndMunalDate(IIIZI)Z

    goto/16 :goto_2b3

    .line 2204
    :cond_236
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v0

    .line 2205
    iget-object v1, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v11

    .line 2205
    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2206
    invoke-virtual {v1, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_295

    .line 2208
    aget v1, v0, v10

    aget v2, v0, v11

    aget v3, v0, v13

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calLastEndMunalDate(IIIZI)Z

    .line 2211
    :cond_295
    iget-object v0, v6, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 2219
    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calLastEndMunalDate(IIIZI)Z

    :cond_2b3
    :goto_2b3
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    .line 2222
    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calLastEndMunalDate(IIIZI)Z
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_2c1} :catch_2c1

    :catch_2c1
    :cond_2c1
    return-void
.end method

.method private measuData(ZIII)V
    .registers 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3183
    iput v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    .line 3184
    iput v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    .line 3185
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v3

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result v4

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v2

    .line 3186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    .line 3187
    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 3188
    invoke-virtual {v4, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 3189
    invoke-virtual {v4, v7, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xe

    .line 3190
    invoke-virtual {v4, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x1

    move/from16 v9, p2

    .line 3191
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v9, p3, -0x1

    const/4 v10, 0x2

    .line 3192
    invoke-virtual {v4, v10, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    move/from16 v11, p4

    .line 3193
    invoke-virtual {v4, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 3194
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0xa

    invoke-static {v15, v11, v12, v13, v14}, Lcom/keephealth/android/util/WomenHealthUtil;->clearChooseDayback(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 3195
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 3196
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

    .line 3195
    invoke-virtual {v11, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    .line 3196
    invoke-virtual {v11, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v12, 0x4

    if-eqz v11, :cond_eb

    .line 3198
    invoke-virtual {v11, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3199
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    if-nez v13, :cond_bf

    .line 3200
    invoke-virtual {v11, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_bc
    move/from16 v13, p1

    goto :goto_df

    .line 3202
    :cond_bf
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v13

    iget-object v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v14}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v14

    iget-object v15, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v15}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v15

    invoke-static {v4, v13, v14, v15}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v13

    if-eqz v13, :cond_db

    .line 3203
    invoke-virtual {v11, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_bc

    .line 3205
    :cond_db
    invoke-virtual {v11, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_bc

    .line 3208
    :goto_df
    invoke-virtual {v11, v13}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3209
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    if-ge v13, v12, :cond_eb

    .line 3210
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v13, v11}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 3214
    :cond_eb
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 3215
    invoke-virtual {v11, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 3216
    invoke-virtual {v11, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 3217
    invoke-virtual {v11, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 3218
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v8, v13}, Ljava/util/Calendar;->set(II)V

    .line 3219
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v10, v13}, Ljava/util/Calendar;->set(II)V

    .line 3220
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v9, v13}, Ljava/util/Calendar;->set(II)V

    move v13, v1

    move v14, v8

    :goto_10f
    const/16 v15, 0x13

    const/4 v12, -0x1

    .line 3222
    const-string v7, "6t6tyg"

    if-ge v13, v15, :cond_22e

    .line 3223
    invoke-virtual {v11, v9, v12}, Ljava/util/Calendar;->add(II)V

    .line 3224
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v15, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v15, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3225
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v15, v1

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v15, v8

    .line 3224
    invoke-virtual {v12, v6, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 3225
    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v5, :cond_21a

    .line 3227
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v6, 0x2

    .line 3228
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v5, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 3229
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 3230
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 3231
    invoke-virtual {v5, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3232
    invoke-virtual {v5, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    const/16 v6, 0x9

    if-lt v13, v6, :cond_21d

    .line 3234
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-ne v6, v8, :cond_194

    move v14, v1

    :cond_194
    if-eqz v14, :cond_21a

    .line 3238
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v9, 0xb

    .line 3240
    invoke-virtual {v6, v9, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    .line 3241
    invoke-virtual {v6, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 3242
    invoke-virtual {v6, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 3243
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 3244
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    sub-int/2addr v9, v8

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 3245
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v6, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 3246
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "calendarClick_:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getDaysBetweenTwo:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    invoke-static {v6}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xb4

    if-gt v6, v7, :cond_211

    .line 3249
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 3250
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_222

    .line 3252
    :cond_211
    invoke-virtual {v5, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 3253
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_222

    :cond_21a
    const/16 v12, 0xd

    goto :goto_222

    :cond_21d
    const/16 v12, 0xd

    .line 3257
    invoke-virtual {v5, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    :goto_222
    add-int/lit8 v13, v13, 0x1

    move v7, v12

    const/16 v5, 0xb

    const/16 v6, 0xc

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v12, 0x4

    goto/16 :goto_10f

    .line 3261
    :cond_22e
    :goto_22e
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_460

    move v5, v8

    .line 3263
    :goto_23b
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    if-ge v5, v6, :cond_2e3

    .line 3264
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    const/4 v9, 0x4

    if-ge v6, v9, :cond_2df

    const/4 v6, 0x5

    .line 3265
    invoke-virtual {v4, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 3266
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3267
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v11, v1

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v11, v8

    .line 3266
    invoke-virtual {v6, v9, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 3267
    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_2df

    .line 3269
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3270
    iget v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    if-nez v9, :cond_2a0

    .line 3271
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_2c0

    .line 3274
    :cond_2a0
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v11

    invoke-static {v4, v9, v10, v11}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v9

    if-eqz v9, :cond_2bc

    .line 3275
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_2c0

    :cond_2bc
    const/4 v9, 0x2

    .line 3277
    invoke-virtual {v6, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 3280
    :goto_2c0
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3282
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v9

    sub-int/2addr v9, v8

    if-ne v5, v9, :cond_2d0

    .line 3283
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_2da

    .line 3285
    :cond_2d0
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 3286
    const-string v9, "6t6ty1g"

    const-string v10, "setIsEndMenstrualDate_11"

    invoke-static {v9, v10}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    :goto_2da
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_2df
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_23b

    .line 3292
    :cond_2e3
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    .line 3293
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v5

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v8

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 3295
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-gez v5, :cond_346

    .line 3296
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preMenstrual  .setStartMenstrualYear  9  year:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 3298
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v5, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 3299
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 3300
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 3301
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 3303
    :cond_346
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3c7

    .line 3304
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v9, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3305
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v11, v1

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v11, v8

    .line 3304
    invoke-virtual {v5, v9, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 3305
    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v5, :cond_3c7

    .line 3307
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 3308
    iget v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    if-nez v9, :cond_39f

    .line 3309
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_3bf

    .line 3311
    :cond_39f
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v9

    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v11

    invoke-static {v4, v9, v10, v11}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v9

    if-eqz v9, :cond_3bb

    .line 3312
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_3bf

    :cond_3bb
    const/4 v9, 0x2

    .line 3314
    invoke-virtual {v5, v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 3317
    :goto_3bf
    invoke-virtual {v5, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3318
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 3322
    :cond_3c7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 3323
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v9, -0x9

    const/4 v10, 0x5

    .line 3327
    invoke-virtual {v5, v10, v9}, Ljava/util/Calendar;->add(II)V

    move v9, v1

    move v11, v8

    :goto_3da
    const/16 v13, 0xa

    if-ge v9, v13, :cond_456

    .line 3330
    iget v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    const/4 v15, 0x3

    if-ge v14, v15, :cond_44e

    .line 3331
    invoke-virtual {v5, v10, v12}, Ljava/util/Calendar;->add(II)V

    .line 3332
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v10

    sget-object v14, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v14, 0x2

    new-array v12, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 3333
    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v1

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x5

    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v8

    .line 3332
    invoke-virtual {v10, v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 3333
    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_44f

    .line 3335
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v10

    if-eq v10, v8, :cond_43e

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v10

    const/4 v12, 0x2

    if-ne v10, v12, :cond_440

    goto :goto_43f

    :cond_43e
    const/4 v12, 0x2

    :goto_43f
    move v11, v1

    :cond_440
    if-eqz v11, :cond_450

    .line 3339
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 3340
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 3341
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v10, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_450

    :cond_44e
    move v14, v10

    :cond_44f
    const/4 v12, 0x2

    :cond_450
    :goto_450
    add-int/lit8 v9, v9, 0x1

    move v10, v14

    const/4 v6, 0x4

    const/4 v12, -0x1

    goto :goto_3da

    :cond_456
    move v14, v10

    const/4 v12, 0x2

    .line 3346
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    const/4 v12, -0x1

    goto/16 :goto_22e

    :cond_460
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

    .line 1555
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "measuDataAfter_a:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   pre:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "   next:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "6t6ty10g"

    invoke-static {v8, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
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

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    const/4 v6, 0x1

    .line 1564
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isCanSetPregnancy:Z

    const/16 v9, 0x9

    const/16 v10, 0xa

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ne v1, v6, :cond_7a

    .line 1566
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_7a
    if-ne v1, v13, :cond_7f

    .line 1568
    iput v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_7f
    if-ne v1, v12, :cond_84

    .line 1570
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_84
    if-ne v1, v9, :cond_89

    .line 1572
    iput v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_89
    if-ne v1, v10, :cond_8e

    .line 1574
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    goto :goto_92

    :cond_8e
    if-ne v1, v11, :cond_92

    .line 1576
    iput v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    :cond_92
    :goto_92
    const/4 v14, 0x0

    .line 1578
    iput v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    .line 1579
    iput v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    .line 1581
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v15

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v15

    .line 1582
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v10

    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v9

    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v12

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v11

    invoke-static {v12, v11}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result v11

    filled-new-array {v10, v9, v11}, [I

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v9

    .line 1583
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xb

    .line 1584
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xc

    .line 1585
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 1586
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xe

    .line 1587
    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    .line 1588
    invoke-virtual {v11, v6, v2}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v12, v3, -0x1

    .line 1589
    invoke-virtual {v11, v13, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x5

    .line 1590
    invoke-virtual {v11, v12, v4}, Ljava/util/Calendar;->set(II)V

    .line 1591
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

    .line 1689
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v6

    invoke-virtual {v5, v12, v6}, Ljava/util/Calendar;->add(II)V

    .line 1691
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

    .line 1692
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 1694
    :cond_149
    invoke-static/range {p4 .. p6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v6

    .line 1695
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

    .line 1696
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

    .line 1695
    invoke-virtual {v8, v12, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 1696
    invoke-virtual {v8, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v9, 0x0

    :goto_192
    if-eqz v8, :cond_223

    .line 1698
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v13, :cond_223

    const/4 v8, 0x0

    .line 1699
    aget v10, v6, v8

    aget v12, v6, v13

    const/4 v13, 0x2

    aget v6, v6, v13

    invoke-static {v10, v12, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v6

    .line 1700
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

    .line 1701
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

    .line 1700
    invoke-virtual {v10, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1701
    invoke-virtual {v2, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v8, :cond_217

    .line 1703
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-eq v2, v13, :cond_217

    const/16 v2, 0xb

    const/4 v10, 0x0

    .line 1704
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1705
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1706
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1707
    invoke-virtual {v14, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1708
    aget v2, v6, v10

    invoke-virtual {v14, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1709
    aget v2, v6, v13

    sub-int/2addr v2, v13

    const/4 v8, 0x2

    invoke-virtual {v14, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 1710
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

    .line 1721
    :cond_223
    :goto_223
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 1596
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    if-ne v1, v9, :cond_278

    const/16 v6, 0xb

    const/4 v8, 0x0

    .line 1598
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 1599
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 1600
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 1601
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x1

    .line 1602
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 1603
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    .line 1604
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1605
    invoke-virtual {v2, v9, v6}, Ljava/util/Calendar;->add(II)V

    const/4 v10, 0x2

    goto :goto_2ac

    :cond_278
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/16 v10, 0xb

    .line 1607
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    .line 1608
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    .line 1609
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xe

    .line 1610
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 1612
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->getLastCalendar()Ljava/util/Calendar;

    move-result-object v8

    .line 1613
    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x2

    .line 1614
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v2, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 1615
    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 1616
    invoke-virtual {v2, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 1618
    :goto_2ac
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 1622
    const-string v2, "womenHealthBeanHas == null 0:"

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v2, v8, v12}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v2

    .line 1624
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

    .line 1625
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

    .line 1624
    invoke-virtual {v8, v9, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1625
    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v8, 0x0

    :goto_324
    if-eqz v6, :cond_4c9

    .line 1627
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v10, :cond_4c9

    const/4 v6, 0x0

    .line 1628
    aget v9, v2, v6

    aget v12, v2, v10

    const/4 v13, 0x2

    aget v2, v2, v13

    invoke-static {v9, v12, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v2

    .line 1629
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

    .line 1630
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

    .line 1629
    invoke-virtual {v9, v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1630
    invoke-virtual {v6, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_3a7

    .line 1632
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-ne v9, v13, :cond_3a7

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 1633
    invoke-virtual {v14, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 1634
    invoke-virtual {v14, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 1635
    invoke-virtual {v14, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 1636
    invoke-virtual {v14, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 1637
    aget v6, v2, v10

    invoke-virtual {v14, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 1638
    aget v6, v2, v13

    const/4 v8, 0x2

    invoke-virtual {v14, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 1639
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

    .line 1651
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

    .line 1652
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

    .line 1653
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

    .line 1652
    invoke-virtual {v9, v10, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1653
    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1654
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

    .line 1657
    aget v9, v6, v2

    const/4 v10, 0x1

    aget v12, v6, v10

    const/4 v13, 0x2

    aget v6, v6, v13

    invoke-static {v9, v12, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v6

    .line 1658
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

    .line 1659
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

    .line 1658
    invoke-virtual {v9, v2, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1659
    invoke-virtual {v2, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_4bb

    .line 1661
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

    .line 1662
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4c0

    const/16 v9, 0xb

    const/4 v12, 0x0

    .line 1663
    invoke-virtual {v14, v9, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1664
    invoke-virtual {v14, v2, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1665
    invoke-virtual {v14, v2, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1666
    invoke-virtual {v14, v2, v12}, Ljava/util/Calendar;->set(II)V

    .line 1667
    aget v2, v6, v12

    invoke-virtual {v14, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 1668
    aget v2, v6, v10

    sub-int/2addr v2, v10

    const/4 v8, 0x2

    invoke-virtual {v14, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 1669
    aget v2, v6, v8

    const/4 v6, 0x5

    invoke-virtual {v14, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_4c9

    .line 1673
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

    .line 1682
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

    .line 1683
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 1727
    iget v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-lez v2, :cond_543

    if-lez v2, :cond_552

    .line 1729
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    const/4 v8, 0x5

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    const/4 v9, 0x0

    .line 1732
    invoke-virtual {v11, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1733
    invoke-virtual {v11, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1734
    invoke-virtual {v11, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 1735
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v11, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 1736
    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 1737
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_553

    :cond_543
    const/4 v8, 0x5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_548

    goto :goto_553

    .line 1742
    :cond_548
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_553

    :cond_552
    const/4 v8, 0x5

    :goto_553
    const/16 v2, 0xb

    if-ne v1, v2, :cond_561

    .line 1746
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    :cond_561
    const/4 v2, 0x1

    if-ne v1, v2, :cond_569

    const/16 v2, 0xc

    .line 1749
    invoke-direct {v0, v2, v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    :cond_569
    const/4 v2, 0x3

    if-ne v1, v2, :cond_590

    .line 1754
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

    .line 1755
    invoke-direct {v0, v2, v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto :goto_5a0

    :cond_590
    const/16 v2, 0xf

    const/4 v6, 0x4

    if-ne v1, v6, :cond_599

    .line 1758
    invoke-direct {v0, v2, v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto :goto_5a0

    :cond_599
    const/16 v6, 0xa

    if-ne v1, v6, :cond_5a0

    .line 1761
    invoke-direct {v0, v2, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 1764
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

    .line 1765
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

    .line 1764
    invoke-virtual {v2, v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1765
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1766
    const-string v5, "erer4e"

    if-eqz v2, :cond_690

    .line 1767
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1768
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    if-nez v8, :cond_626

    if-ne v1, v6, :cond_604

    .line 1770
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-lez v8, :cond_5fd

    const/4 v8, 0x2

    .line 1771
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_600

    .line 1773
    :cond_5fd
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_600
    move/from16 v9, p4

    move v8, v6

    goto :goto_63a

    :cond_604
    const/4 v6, 0x3

    if-ne v1, v6, :cond_60b

    .line 1776
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-gtz v6, :cond_60e

    :cond_60b
    const/4 v6, 0x4

    if-ne v1, v6, :cond_616

    :cond_60e
    const/4 v6, 0x2

    .line 1777
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_612
    move/from16 v9, p4

    const/4 v8, 0x1

    goto :goto_63a

    :cond_616
    const/4 v6, 0x2

    const/16 v8, 0xa

    if-ne v1, v8, :cond_61f

    .line 1780
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_612

    :cond_61f
    const/4 v8, 0x1

    .line 1782
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    move/from16 v9, p4

    goto :goto_63a

    :cond_626
    move/from16 v9, p4

    move v8, v6

    const/4 v6, 0x2

    .line 1787
    invoke-static {v11, v9, v3, v4}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v10

    if-eqz v10, :cond_637

    .line 1788
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1789
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_63a

    .line 1791
    :cond_637
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1794
    :goto_63a
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1795
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    if-ge v6, v8, :cond_663

    if-eqz v2, :cond_663

    .line 1797
    invoke-virtual {v15, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1798
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

    .line 1801
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

    .line 1804
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

    .line 1807
    :goto_6b0
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v2, v12, v24

    if-gtz v2, :cond_9d9

    .line 1810
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "preMenstrual.getMenstrualDuration():"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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

    .line 1811
    :goto_6eb
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    if-ge v2, v6, :cond_7c2

    .line 1812
    iget v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    if-ge v6, v8, :cond_7be

    const/4 v6, 0x5

    const/4 v8, 0x1

    .line 1813
    invoke-virtual {v11, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1814
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

    .line 1815
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

    .line 1814
    invoke-virtual {v6, v10, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 1815
    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v6, :cond_7be

    const/4 v10, 0x0

    .line 1817
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1818
    iget v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    if-nez v10, :cond_77d

    if-ne v1, v8, :cond_75f

    .line 1820
    iget v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-lez v10, :cond_75a

    const/4 v10, 0x2

    .line 1821
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_75d

    .line 1823
    :cond_75a
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_75d
    move v10, v8

    goto :goto_78c

    :cond_75f
    const/4 v8, 0x3

    if-ne v1, v8, :cond_766

    .line 1826
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-gtz v8, :cond_769

    :cond_766
    const/4 v8, 0x4

    if-ne v1, v8, :cond_76f

    :cond_769
    const/4 v8, 0x2

    .line 1827
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    :goto_76d
    const/4 v10, 0x1

    goto :goto_78c

    :cond_76f
    const/4 v8, 0x2

    const/16 v10, 0xa

    if-ne v1, v10, :cond_778

    .line 1830
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_76d

    :cond_778
    const/4 v10, 0x1

    .line 1832
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_78c

    :cond_77d
    move v10, v8

    const/4 v8, 0x2

    .line 1837
    invoke-static {v11, v9, v3, v4}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v12

    if-eqz v12, :cond_789

    .line 1838
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_78c

    .line 1840
    :cond_789
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1843
    :goto_78c
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1844
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v8

    sub-int/2addr v8, v10

    if-ne v2, v8, :cond_79c

    .line 1845
    invoke-virtual {v6, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_7a0

    :cond_79c
    const/4 v8, 0x0

    .line 1847
    invoke-virtual {v6, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1849
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

    .line 1850
    invoke-virtual {v15, v6}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_7be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6eb

    .line 1856
    :cond_7c2
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v6

    sub-int/2addr v2, v6

    const/4 v6, 0x1

    add-int/2addr v2, v6

    const/4 v8, 0x5

    invoke-virtual {v11, v8, v2}, Ljava/util/Calendar;->add(II)V

    .line 1858
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    cmp-long v2, v12, v17

    if-gez v2, :cond_821

    .line 1859
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

    .line 1860
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 1861
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v8, 0x2

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v2, v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 1862
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/4 v6, 0x5

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 1863
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 1864
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 1866
    :cond_821
    iget v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    iput v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    .line 1867
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->maxMunalTimes:I

    if-ge v2, v8, :cond_892

    .line 1868
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

    .line 1869
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

    .line 1868
    invoke-virtual {v2, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1869
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_892

    .line 1871
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1872
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstMenuralData:I

    if-nez v8, :cond_87e

    .line 1873
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_88c

    .line 1875
    :cond_87e
    invoke-static {v11, v9, v3, v4}, Lcom/keephealth/android/util/DateUtil;->isDateNowTodayOrBefore(Ljava/util/Calendar;III)Z

    move-result v8

    if-eqz v8, :cond_888

    .line 1876
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    goto :goto_88c

    :cond_888
    const/4 v8, 0x2

    .line 1878
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1881
    :goto_88c
    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 1883
    invoke-virtual {v15, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 1888
    :cond_892
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1889
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v8, -0x9

    const/4 v10, 0x5

    .line 1894
    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 1896
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isCanSetPregnancy:Z

    const/16 v8, 0xa

    const/4 v13, 0x0

    :goto_8a8
    if-ge v13, v8, :cond_9cd

    const/4 v12, -0x1

    .line 1898
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

    .line 1915
    :goto_8c4
    iget v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    if-ge v14, v6, :cond_930

    .line 1916
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

    .line 1917
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

    .line 1916
    invoke-virtual {v14, v6, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1917
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v1, :cond_92d

    .line 1919
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v8, :cond_91f

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_922

    :cond_91f
    const/4 v6, 0x0

    .line 1920
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isCanSetPregnancy:Z

    .line 1922
    :cond_922
    iget-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isCanSetPregnancy:Z

    if-eqz v6, :cond_92d

    .line 1923
    invoke-virtual {v1, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1924
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

    .line 1900
    :cond_934
    :goto_934
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    const/4 v6, 0x2

    if-ge v1, v6, :cond_9c0

    .line 1901
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

    .line 1902
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

    .line 1901
    invoke-virtual {v1, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1902
    invoke-virtual {v1, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v1, :cond_9bd

    .line 1904
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

    .line 1905
    iput-boolean v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isCanSetPregnancy:Z

    .line 1907
    :goto_996
    iget-boolean v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isCanSetPregnancy:Z

    if-eqz v10, :cond_9c2

    .line 1908
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

    .line 1909
    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 1910
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

    .line 1931
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->firstPregnancyData:I

    move/from16 v1, p2

    goto/16 :goto_6b0

    :cond_9d9
    return-void
.end method

.method private moodOnClick(Landroid/view/View;)V
    .registers 4

    .line 3129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3130
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 3131
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setMood(IZ)V

    goto :goto_34

    .line 3133
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method private notifyMonthView(IIII)V
    .registers 13

    .line 3033
    invoke-static {p2, p3}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result p1

    .line 3034
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3035
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3036
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :goto_15
    if-gt v4, p1, :cond_21

    .line 3038
    filled-new-array {p3, v4}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 3040
    :cond_21
    invoke-static {p2, p3, p4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextMonth(III)[I

    move-result-object p1

    const/4 v4, 0x0

    .line 3041
    aget v5, p1, v4

    aget v6, p1, v3

    invoke-static {v5, v6}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v5

    .line 3042
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

    .line 3045
    aget v7, p1, v3

    filled-new-array {v7, v6}, [I

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 3048
    :cond_51
    invoke-static {p2, p3, p4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreMonth(III)[I

    move-result-object p1

    .line 3049
    aget p2, p1, v4

    aget p3, p1, v3

    invoke-static {p2, p3}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result p2

    move p3, v3

    :goto_5e
    if-gt p3, p2, :cond_6c

    .line 3051
    aget p4, p1, v3

    filled-new-array {p4, p3}, [I

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_5e

    .line 3053
    :cond_6c
    new-instance p1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$14;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3060
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    const/4 p2, 0x7

    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    return-void
.end method

.method private onlyOneMunalData()Z
    .registers 7

    .line 2391
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 2392
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 2393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2394
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v3, 0x1

    if-eqz v0, :cond_49

    .line 2395
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_49

    move v4, v1

    .line 2396
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 2397
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

    .line 2399
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 2403
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

    .line 2472
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 2473
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 2474
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 2475
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2476
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 2477
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 2478
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 2480
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2481
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2482
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2483
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    .line 2484
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 2485
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2486
    invoke-virtual {p1, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2487
    invoke-virtual {p1, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2488
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    if-ne p2, v6, :cond_6a

    .line 2491
    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    :cond_6a
    move p1, v4

    .line 2493
    :goto_6b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result p2

    if-ge p1, p2, :cond_107

    .line 2494
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 2495
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2496
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v2

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 2497
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v4

    .line 2495
    invoke-virtual {p2, v1, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    .line 2497
    invoke-virtual {p2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p2, :cond_103

    .line 2499
    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2500
    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2501
    invoke-virtual {p2, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2502
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_d3

    .line 2503
    invoke-virtual {p2, v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_d6

    .line 2505
    :cond_d3
    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2507
    :goto_d6
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2508
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v4

    if-le p2, v8, :cond_f3

    .line 2509
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 2511
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

    .line 2515
    :cond_107
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    .line 2516
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1, v3, v7, v4}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V

    :cond_116
    return-void
.end method

.method private reCalPrePregnancyData(ILjava/util/Calendar;)V
    .registers 26

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

    .line 2524
    :cond_14
    new-instance v9, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v9}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 2525
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 2526
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 2527
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 2528
    invoke-static {v4, v9}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v9

    iput v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    .line 2531
    :cond_35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, 0xb

    const/4 v11, 0x0

    .line 2532
    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 2533
    invoke-virtual {v9, v5, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 2534
    invoke-virtual {v9, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 2535
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v9, v7, v13}, Ljava/util/Calendar;->set(II)V

    .line 2539
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "reCalPrePregnancyData_a:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  preMunalDayBetween:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "6t6tyg"

    invoke-static {v14, v13}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-lez v13, :cond_15d

    .line 2541
    iget v13, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-static {v13, v3, v12}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v3

    .line 2542
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v16, v3, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v13, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v17, v3, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v13, v11

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v10, v3, v8

    .line 2543
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v13, v7

    .line 2542
    invoke-virtual {v12, v5, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 2543
    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move v5, v7

    move v10, v11

    :goto_bc
    if-eqz v4, :cond_15d

    .line 2544
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-eq v4, v7, :cond_15d

    .line 2545
    aget v4, v3, v11

    aget v12, v3, v7

    aget v3, v3, v8

    invoke-static {v4, v12, v3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v3

    .line 2546
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v12, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v13, v3, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v13, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v18, v3, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v13, v11

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v15, v3, v8

    .line 2547
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v13, v7

    .line 2546
    invoke-virtual {v4, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 2547
    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v4, :cond_115

    .line 2548
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-ne v6, v7, :cond_115

    goto :goto_15d

    .line 2551
    :cond_115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "reCalPrePregnancyData_womenHealthBean:"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v12, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_138

    .line 2552
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-eq v6, v7, :cond_140

    :cond_138
    if-eqz v4, :cond_141

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-ne v6, v8, :cond_141

    :cond_140
    move v5, v11

    :cond_141
    if-eqz v5, :cond_153

    if-eqz v4, :cond_153

    .line 2556
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v6

    if-ne v6, v7, :cond_153

    .line 2557
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2558
    iget-object v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    :cond_153
    const/16 v6, 0xb4

    if-le v10, v6, :cond_158

    goto :goto_15d

    :cond_158
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x5

    goto/16 :goto_bc

    :cond_15d
    :goto_15d
    const/4 v3, 0x6

    const/16 v4, 0x9

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1ae

    if-eq v1, v3, :cond_1ae

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1ae

    const/16 v6, 0x8

    if-ne v1, v6, :cond_16d

    goto :goto_1ae

    :cond_16d
    if-ne v1, v4, :cond_17f

    .line 2573
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v9, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 2574
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v9, v5, v6}, Ljava/util/Calendar;->set(II)V

    goto :goto_1bc

    :cond_17f
    const/16 v5, 0xb

    if-eq v1, v5, :cond_19e

    const/16 v5, 0xc

    if-eq v1, v5, :cond_19e

    const/16 v5, 0xd

    if-eq v1, v5, :cond_19e

    if-eq v1, v8, :cond_19e

    const/16 v5, 0xe

    if-eq v1, v5, :cond_19e

    const/4 v5, 0x4

    if-ne v1, v5, :cond_195

    goto :goto_19e

    .line 2579
    :cond_195
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v9, v8, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_1a5

    .line 2577
    :cond_19e
    :goto_19e
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v9, v8, v5}, Ljava/util/Calendar;->set(II)V

    :goto_1a5
    const/4 v5, 0x5

    .line 2581
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v9, v5, v6}, Ljava/util/Calendar;->set(II)V

    goto :goto_1bc

    .line 2569
    :cond_1ae
    :goto_1ae
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v9, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 2570
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v9, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 2584
    :goto_1bc
    iget v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    const/16 v6, 0x13

    if-nez v5, :cond_1c5

    .line 2585
    iput v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPregnancyNumber:I

    goto :goto_1cc

    :cond_1c5
    if-ge v5, v6, :cond_1ca

    .line 2588
    iput v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPregnancyNumber:I

    goto :goto_1cc

    .line 2590
    :cond_1ca
    iput v6, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPregnancyNumber:I

    .line 2593
    :goto_1cc
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "calPregnancyNumber:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPregnancyNumber:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "  a:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "   "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf

    .line 2595
    const-string v12, "Math.abs(DateUtil.getDaysBetweenTwo(calendarClick)):"

    const-string v13, "calendarPre-bean---null:"

    const/4 v15, -0x1

    const-string v10, "calendarPre:"

    if-ne v1, v5, :cond_41d

    .line 2596
    invoke-virtual {v9, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2598
    new-instance v5, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 2599
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 2600
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v5, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    const/4 v4, 0x5

    .line 2601
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 2602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "45er456"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
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

    .line 2604
    invoke-static {v3, v5}, Lcom/keephealth/android/util/WomenHealthUtil;->calFiftyProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    if-nez v2, :cond_26a

    goto :goto_26d

    :cond_26a
    if-ge v2, v6, :cond_26d

    move v6, v2

    .line 2614
    :cond_26d
    :goto_26d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preMunalDayBetweenFifty:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    const/4 v2, 0x0

    :goto_281
    if-ge v2, v6, :cond_5ce

    const/4 v4, 0x5

    .line 2616
    invoke-virtual {v9, v4, v15}, Ljava/util/Calendar;->add(II)V

    .line 2617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v14, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    const/4 v15, 0x5

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    if-eqz v4, :cond_413

    .line 2620
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v5, 0x2

    .line 2621
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v4, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    const/4 v5, 0x5

    .line 2622
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 2623
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 2624
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_31b

    const/4 v5, 0x0

    .line 2625
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    :cond_31b
    const/16 v5, 0x9

    if-lt v2, v5, :cond_3d0

    .line 2628
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "bean-------------:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_348

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_349

    :cond_348
    const/4 v3, 0x0

    :cond_349
    if-eqz v3, :cond_416

    .line 2633
    invoke-virtual {v4, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2634
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v8, 0xb

    const/4 v11, 0x0

    .line 2635
    invoke-virtual {v5, v8, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    .line 2636
    invoke-virtual {v5, v8, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 2637
    invoke-virtual {v5, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 2638
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 2639
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    sub-int/2addr v8, v7

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 2640
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v5, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 2641
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "calendarClick:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    invoke-static {v5}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v7, 0xb4

    if-gt v5, v7, :cond_3c6

    const/4 v5, 0x1

    .line 2644
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2645
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_416

    :cond_3c6
    const/4 v5, 0x0

    .line 2647
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2648
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_416

    .line 2652
    :cond_3d0
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3de

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3df

    :cond_3de
    const/4 v3, 0x0

    :cond_3df
    if-eqz v3, :cond_416

    if-eq v1, v7, :cond_3f3

    const/4 v5, 0x7

    if-eq v1, v5, :cond_3f3

    const/16 v5, 0xb

    if-ne v1, v5, :cond_3eb

    goto :goto_3f3

    :cond_3eb
    const/4 v5, 0x0

    .line 2662
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2663
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_407

    :cond_3f3
    :goto_3f3
    const/4 v5, 0x0

    .line 2657
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v7, :cond_407

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    const/4 v11, 0x2

    if-eq v8, v11, :cond_407

    .line 2658
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2659
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2665
    :cond_407
    :goto_407
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2666
    invoke-virtual {v4, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2667
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_416

    .line 2672
    :cond_413
    invoke-static {v14, v13}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_416
    :goto_416
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v15, -0x1

    goto/16 :goto_281

    :cond_41d
    const/4 v2, 0x1

    const/4 v15, 0x0

    .line 2676
    :goto_41f
    iget v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPregnancyNumber:I

    if-ge v15, v3, :cond_5ce

    const/4 v3, -0x1

    const/4 v4, 0x5

    .line 2677
    invoke-virtual {v9, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 2678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v14, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    new-array v8, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v8, v11

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-virtual {v4, v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v4, :cond_5c1

    .line 2681
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    const/4 v5, 0x2

    .line 2682
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    const/4 v5, 0x5

    .line 2683
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 2684
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 2685
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v5

    if-eq v5, v6, :cond_4bd

    const/4 v5, 0x0

    .line 2686
    invoke-virtual {v4, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    :cond_4bd
    const/16 v5, 0x9

    if-lt v15, v5, :cond_574

    .line 2689
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    if-eq v7, v6, :cond_4ce

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4cf

    :cond_4ce
    const/4 v2, 0x0

    :cond_4cf
    if-eqz v2, :cond_56a

    .line 2693
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2694
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0xb

    const/4 v11, 0x0

    .line 2695
    invoke-virtual {v7, v8, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    .line 2696
    invoke-virtual {v7, v8, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 2697
    invoke-virtual {v7, v3, v11}, Ljava/util/Calendar;->set(II)V

    .line 2698
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    invoke-virtual {v7, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 2699
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    sub-int/2addr v3, v6

    const/4 v6, 0x2

    invoke-virtual {v7, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 2700
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/4 v6, 0x5

    invoke-virtual {v7, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 2701
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bean.getYear():"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "6t6ty6g"

    invoke-static {v5, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    invoke-static {v7}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v5, 0xb4

    if-gt v3, v5, :cond_560

    const/4 v3, 0x1

    .line 2704
    invoke-virtual {v4, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2705
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_56e

    :cond_560
    const/4 v3, 0x0

    .line 2707
    invoke-virtual {v4, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2708
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_56e

    :cond_56a
    const/16 v5, 0xb4

    const/16 v8, 0xc

    :goto_56e
    const/4 v5, 0x2

    const/4 v6, 0x1

    :goto_570
    const/16 v7, 0xb

    const/4 v11, 0x0

    goto :goto_5ca

    :cond_574
    const/16 v5, 0xb4

    const/16 v8, 0xc

    .line 2712
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_586

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_587

    :cond_586
    const/4 v2, 0x0

    :cond_587
    if-eqz v2, :cond_5bf

    if-eq v1, v6, :cond_59b

    const/4 v3, 0x7

    if-eq v1, v3, :cond_59b

    const/16 v7, 0xb

    if-ne v1, v7, :cond_593

    goto :goto_59d

    :cond_593
    const/4 v11, 0x0

    .line 2722
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2723
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_5b2

    :cond_59b
    const/16 v7, 0xb

    :goto_59d
    const/4 v11, 0x0

    .line 2717
    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-eq v3, v6, :cond_5b2

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5b3

    .line 2718
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2719
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    goto :goto_5b3

    :cond_5b2
    :goto_5b2
    const/4 v5, 0x2

    .line 2725
    :cond_5b3
    :goto_5b3
    invoke-virtual {v4, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2726
    invoke-virtual {v4, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 2727
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3, v4}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_5ca

    :cond_5bf
    const/4 v5, 0x2

    goto :goto_570

    :cond_5c1
    const/4 v5, 0x2

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/4 v11, 0x0

    .line 2732
    invoke-static {v14, v13}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5ca
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_41f

    .line 2736
    :cond_5ce
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v4, 0xd

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private sendWomenHealthData(I)V
    .registers 5

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendWomenHealthData---a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "drer4re"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 1386
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealthProtocol()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1387
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

    .line 1388
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->sendData()V

    goto :goto_43

    .line 1390
    :cond_3e
    const-string p1, "false---"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method private setData(II)V
    .registers 7

    .line 2842
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    .line 2843
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2842
    invoke-virtual {p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 2843
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 2844
    new-instance v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setMakeLove()V
    .registers 3

    .line 2916
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    .line 2930
    const-string v0, ""

    goto :goto_43

    .line 2927
    :cond_14
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 2924
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 2921
    :cond_2c
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 2918
    :cond_38
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2933
    :goto_43
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setMood(IZ)V
    .registers 10

    .line 3064
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentMood:I

    .line 3065
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 3066
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 3065
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 3066
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_59

    .line 3068
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMood(I)V

    .line 3069
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 3071
    :cond_59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

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

    .line 3117
    :cond_7e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3118
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3119
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3120
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3121
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    const v0, 0x7f0d00ec

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3123
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007ca

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto/16 :goto_17a

    .line 3108
    :cond_ac
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3109
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3110
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3111
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    const v1, 0x7f0d00eb

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3112
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3114
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto/16 :goto_17a

    .line 3099
    :cond_da
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3100
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3101
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    const v2, 0x7f0d00ea

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3102
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3103
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3105
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_17a

    .line 3090
    :cond_107
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3091
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    const v2, 0x7f0d00e9

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3092
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3093
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3094
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3096
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_17a

    .line 3081
    :cond_134
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    const v2, 0x7f0d00e8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3082
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3083
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3084
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3085
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_17a

    .line 3087
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1007c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_17a

    .line 3074
    :cond_161
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3075
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3076
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3077
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3078
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17a
    :goto_17a
    return-void
.end method

.method private setSymptom()V
    .registers 9

    .line 2937
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 2938
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2939
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2941
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_2b
    if-ge v6, v4, :cond_3f

    aget-object v7, v1, v6

    .line 2942
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v7, v0, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 2944
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->tvSymptom:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5a

    .line 2946
    :cond_53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->tvSymptom:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5a
    return-void
.end method

.method private updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V
    .registers 16

    if-eqz p2, :cond_15e

    .line 2741
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2742
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2743
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2744
    const-string p1, "womenHealthBean.getDysmenorrhea()  11:0"

    const-string v0, "6t6ty5rg"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2746
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2747
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2748
    invoke-virtual {p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2749
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2750
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2751
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2752
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    .line 2753
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    if-le v4, v5, :cond_57

    .line 2754
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 2756
    :cond_57
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2758
    :goto_66
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v4

    .line 2759
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2760
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v10

    .line 2759
    invoke-virtual {v5, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 2760
    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    :goto_b6
    if-eqz v5, :cond_148

    .line 2761
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v6

    if-ne v6, v10, :cond_148

    .line 2762
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2763
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2764
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2765
    const-string v6, "womenHealthBean.getDysmenorrhea()  12:0"

    invoke-static {v0, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2767
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2768
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2769
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2770
    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v6, v5}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2771
    aget v6, v4, v10

    if-le v6, v3, :cond_ef

    .line 2772
    aget v4, v4, v7

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    .line 2774
    :cond_ef
    aget v4, v4, v7

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2776
    :goto_f8
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v4, v6, v5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v4

    .line 2777
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2778
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v10

    .line 2777
    invoke-virtual {v5, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 2778
    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    goto/16 :goto_b6

    :cond_148
    const/4 p1, 0x5

    .line 2780
    aget p3, v4, v7

    invoke-direct {p0, p1, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    .line 2781
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p3

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p2

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    :cond_15e
    return-void
.end method

.method private updateCloseNext(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2022
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2023
    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 2022
    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 2023
    invoke-virtual {v2, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v2, :cond_61

    .line 2025
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2026
    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2027
    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2028
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2031
    :cond_61
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 2032
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2033
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v6, v8

    .line 2032
    invoke-virtual {v3, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2033
    invoke-virtual {v3, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2036
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2037
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2038
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2039
    iget-object v9, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v9}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v9

    .line 2040
    const-string v10, "6t6ty5rg"

    if-nez v1, :cond_241

    :cond_dc
    :goto_dc
    if-eqz v3, :cond_3bd

    .line 2041
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v1

    if-ne v1, v8, :cond_3bd

    .line 2042
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2043
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2044
    iget v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v1, :cond_f1

    .line 2045
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2047
    :cond_f1
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2048
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2049
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

    .line 2048
    invoke-virtual {v1, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2049
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2051
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

    .line 2052
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2053
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2059
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2060
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2061
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2062
    aget v1, v2, v8

    if-ge v1, v9, :cond_175

    .line 2063
    aget v3, v2, v4

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17e

    .line 2065
    :cond_175
    aget v3, v2, v4

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2067
    :goto_17e
    aget v1, v2, v7

    aget v3, v2, v8

    aget v2, v2, v4

    invoke-static {v1, v3, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 2068
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2069
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v8

    .line 2068
    invoke-virtual {v1, v3, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2069
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_dc

    .line 2071
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2072
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

    .line 2071
    invoke-virtual {v1, v11, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 2072
    invoke-virtual {v1, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2074
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

    .line 2075
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2076
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2082
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2083
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2084
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2085
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto/16 :goto_dc

    :cond_241
    move v11, v7

    :goto_242
    if-ge v11, v1, :cond_3bd

    if-eqz v3, :cond_3b7

    .line 2091
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v12

    if-ne v12, v8, :cond_3b7

    .line 2092
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2093
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2094
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2095
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2096
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

    .line 2095
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 2096
    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2098
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

    .line 2099
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2100
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12, v8}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2106
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2107
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2108
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    const/4 v8, 0x1

    .line 2110
    aget v12, v2, v8

    if-ge v12, v9, :cond_2d8

    .line 2111
    aget v2, v2, v4

    filled-new-array {v12, v2}, [I

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2e1

    .line 2113
    :cond_2d8
    aget v2, v2, v4

    filled-new-array {v12, v2}, [I

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2115
    :goto_2e1
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v8

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-static {v2, v8, v3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object v2

    .line 2116
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2117
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v14

    .line 2116
    invoke-virtual {v3, v8, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2117
    invoke-virtual {v3, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_3b5

    .line 2119
    iget v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v8, :cond_33c

    .line 2120
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2121
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    .line 2123
    :cond_33c
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2124
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2125
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

    .line 2124
    invoke-virtual {v8, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 2125
    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2127
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

    .line 2128
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2129
    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12, v8}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2135
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 2136
    invoke-virtual {v3, v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 2137
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_3b8

    :cond_3b5
    const/4 v15, 0x1

    goto :goto_3b8

    :cond_3b7
    move v15, v8

    :goto_3b8
    add-int/lit8 v11, v11, 0x1

    move v8, v15

    goto/16 :goto_242

    .line 2143
    :cond_3bd
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    .line 2144
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method

.method private updateOpen()V
    .registers 14

    const/4 v0, 0x0

    .line 2789
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->connLastOpen:I

    .line 2791
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2792
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2793
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->connLastOpen:I

    if-nez v1, :cond_18

    .line 2794
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    goto :goto_1d

    .line 2796
    :cond_18
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2798
    :goto_1d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2799
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v1

    .line 2800
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2801
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v2

    .line 2800
    invoke-virtual {v3, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2801
    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_89

    .line 2802
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v4

    if-ne v4, v2, :cond_89

    .line 2803
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2804
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2806
    :cond_89
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2807
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2808
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2809
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    move v8, v0

    :goto_ad
    if-eqz v3, :cond_13a

    .line 2811
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v9

    if-nez v9, :cond_13a

    .line 2812
    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2813
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2814
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2815
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2816
    aget v3, v1, v2

    if-ge v3, v7, :cond_d1

    .line 2817
    aget v9, v1, v5

    filled-new-array {v3, v9}, [I

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_da

    .line 2819
    :cond_d1
    aget v9, v1, v5

    filled-new-array {v3, v9}, [I

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2821
    :goto_da
    aget v3, v1, v0

    aget v9, v1, v2

    aget v1, v1, v5

    invoke-static {v3, v9, v1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreDate(III)[I

    move-result-object v1

    .line 2822
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 2823
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v2

    .line 2822
    invoke-virtual {v3, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 2823
    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_12c

    .line 2825
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2826
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 2829
    :cond_12c
    iget v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->connLastOpen:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->connLastOpen:I

    const/16 v9, 0xb4

    if-le v8, v9, :cond_136

    goto :goto_13a

    :cond_136
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_ad

    :cond_13a
    :goto_13a
    const/4 v2, 0x6

    .line 2835
    aget v1, v1, v5

    invoke-direct {p0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    .line 2836
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v1, v4, v6, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V

    return-void
.end method

.method private updateOpenNext(I)V
    .registers 14

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateOpenNext_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "6t6tyg"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1963
    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1962
    invoke-virtual {p1, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 1963
    invoke-virtual {p1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz p1, :cond_75

    .line 1965
    invoke-virtual {p1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1966
    invoke-virtual {p1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1967
    invoke-virtual {p1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1968
    invoke-virtual {p1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1969
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_90

    .line 1971
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

    .line 1973
    :goto_90
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1974
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1975
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1974
    invoke-virtual {v1, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1975
    invoke-virtual {v1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1976
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1977
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1980
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v7

    if-eqz v1, :cond_105

    .line 1982
    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 1983
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 1984
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 1985
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_120

    .line 1987
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

    .line 1990
    aget v1, p1, v5

    aget v8, p1, v6

    aget p1, p1, v2

    invoke-static {v1, v8, p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextDate(III)[I

    move-result-object p1

    .line 1991
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    .line 1992
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v9, v6

    .line 1991
    invoke-virtual {v1, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 1992
    invoke-virtual {v1, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 1993
    aget v8, p1, v6

    if-ge v8, v7, :cond_179

    .line 1994
    aget v9, p1, v2

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_182

    .line 1996
    :cond_179
    aget v9, p1, v2

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_182
    if-eqz v1, :cond_1a5

    .line 1999
    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v8

    if-eq v8, v6, :cond_199

    .line 2000
    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2001
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2002
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 2003
    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v8, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1a5

    .line 2005
    :cond_199
    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    .line 2006
    invoke-virtual {v1, v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 2007
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    goto :goto_1b4

    .line 2011
    :cond_1a5
    :goto_1a5
    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    if-le v0, v8, :cond_1b0

    goto :goto_1b4

    :cond_1b0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_121

    .line 2016
    :cond_1b4
    :goto_1b4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    .line 2017
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    return-void
.end method


# virtual methods
.method public calPreAndNextLength()V
    .registers 4

    .line 3350
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 3351
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 3352
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 3353
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v1, 0x4

    .line 3354
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    .line 3355
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c009e

    return v0
.end method

.method protected initView()V
    .registers 14

    .line 124
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const v0, 0x7f0905f1

    .line 125
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->titleDate:Landroid/widget/TextView;

    const v0, 0x7f0900cf

    .line 126
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    const v0, 0x7f09026f

    .line 127
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f090597

    .line 128
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/StarBar;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    const v0, 0x7f090598

    .line 129
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/StarBar;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    const v0, 0x7f090210

    .line 130
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood1:Landroid/widget/ImageView;

    const v0, 0x7f090211

    .line 131
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood2:Landroid/widget/ImageView;

    const v0, 0x7f090212

    .line 132
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood3:Landroid/widget/ImageView;

    const v0, 0x7f090213

    .line 133
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood4:Landroid/widget/ImageView;

    const v0, 0x7f090214

    .line 134
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->imgMood5:Landroid/widget/ImageView;

    const v0, 0x7f09056b

    .line 135
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->showDate:Landroid/widget/LinearLayout;

    const v0, 0x7f0901b1

    .line 136
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->hideDate:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e1

    .line 137
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f09027f

    .line 138
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itSymptom:Landroid/widget/LinearLayout;

    const v0, 0x7f0906e5

    .line 139
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->tvSymptom:Landroid/widget/TextView;

    const v0, 0x7f090519

    .line 140
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rlTips:Landroid/widget/LinearLayout;

    const v0, 0x7f09038a

    .line 141
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const v0, 0x7f09033b

    .line 142
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    const v0, 0x7f09033c

    .line 143
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_out_women_date:Landroid/widget/LinearLayout;

    const v0, 0x7f0907c9

    .line 144
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->view_out_women_date:Landroid/view/View;

    .line 145
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->initListener()V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10074c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/StarBar;->setIntegerMark(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dura"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->dura:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "perimeter"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->perimeter:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "year"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->yearPre:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "month"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->monthPre:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "day"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->dayPre:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->titleBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "home"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->home:Ljava/lang/String;

    const/4 v0, 0x4

    .line 161
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 162
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->TAG:Ljava/lang/String;

    const-string v4, "initView: \u521b\u5efa"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    .line 181
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v2

    const-string v3, "6t6tyg"

    const/4 v4, 0x0

    if-nez v2, :cond_19a

    .line 182
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "preMenstrual  .setStartMenstrualYear  2  year:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_19a
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v2

    if-nez v2, :cond_1ab

    .line 186
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 188
    :cond_1ab
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_1bd

    .line 189
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 191
    :cond_1bd
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    const/4 v6, 0x5

    if-nez v2, :cond_1cb

    .line 192
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2, v6}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 194
    :cond_1cb
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v2

    const-string v7, "t6t566t"

    if-nez v2, :cond_1e1

    .line 195
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    const/16 v8, 0x1c

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 196
    const-string v2, "preMenstrual.  setMenstrualDuration   111"

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1e1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "preMenstrual2:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v8, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 203
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v7}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v7

    const/4 v8, 0x3

    mul-int/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 204
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    .line 205
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/2addr v2, v8

    const/16 v7, 0x1e

    const/4 v9, 0x7

    if-le v2, v7, :cond_227

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_27c

    .line 207
    :cond_227
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/2addr v2, v8

    const/16 v7, 0x3c

    if-le v2, v7, :cond_238

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_27c

    .line 209
    :cond_238
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    mul-int/2addr v2, v8

    const/16 v7, 0x5a

    if-le v2, v7, :cond_249

    .line 210
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_27c

    .line 211
    :cond_249
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v8

    const/16 v2, 0x78

    if-le v0, v2, :cond_25a

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_27c

    .line 213
    :cond_25a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v8

    const/16 v2, 0x96

    if-le v0, v2, :cond_26c

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_27c

    .line 215
    :cond_26c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v8

    const/16 v2, 0xb4

    if-le v0, v2, :cond_27c

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v9}, Ljava/util/Calendar;->add(II)V

    .line 219
    :cond_27c
    :goto_27c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarEndYear(I)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarEndMonth(I)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "preMenstrual.getMenstrualCycle():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "t6t56t"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/StarBar;->setOnStarChangeListener(Lcom/keephealth/android/views/StarBar$OnStarChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/StarBar;->setIntegerMark(Z)V

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/StarBar;->setOnStarChangeListener(Lcom/keephealth/android/views/StarBar$OnStarChangeListener;)V

    .line 292
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->vibrator:Landroid/os/Vibrator;

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rightImg:Landroid/widget/ImageView;

    const v7, 0x7f0d0336

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v7}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itSymptom:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v7, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsStartData:Lorg/greenrobot/greendao/Property;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    .line 328
    invoke-static {v11}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v8, v4

    .line 327
    invoke-virtual {v0, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v7, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->SolarDate:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v4

    .line 328
    invoke-virtual {v0, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 329
    const-string v7, "6t6tg"

    const-string v8, "-"

    if-eqz v0, :cond_3e9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3e9

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "preMenstrual  .setStartMenstrualYear  3  year:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 332
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 333
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 334
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u6700\u8fd1\u4e00\u6b21\u7ecf\u671f:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_3e9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v10, v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v10, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v12, v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v4

    sget-object v11, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v12, v12, v5

    .line 339
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v1

    .line 338
    invoke-virtual {v0, v3, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v0, :cond_461

    .line 341
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 342
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 343
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 344
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 346
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->save(Ljava/lang/Object;)V

    .line 349
    :cond_461
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setShowClick(Z)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartYear()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartMonthr()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v11, v11, v1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 353
    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartYear()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartMonthr()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v3, v11}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setStartEndDate(Ljava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v11, v11, v4

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v11, v11, v1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setInitDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v11, v11, v4

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v11, v11, v1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v10, v10, v5

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setSingleDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->init()V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v0, v0, v5

    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    .line 358
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v3, v0, v4

    aget v0, v0, v1

    invoke-static {v3, v0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getMonthRows(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "currentRows:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 362
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;Ljava/util/Calendar;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 400
    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    mul-int/2addr v2, v9

    sub-int/2addr v0, v2

    div-int/2addr v0, v9

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->monthViewHeight:I

    .line 402
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rlTips:Landroid/widget/LinearLayout;

    neg-int v0, v0

    int-to-float v0, v0

    new-array v3, v5, [F

    const/4 v9, 0x0

    aput v9, v3, v4

    aput v0, v3, v1

    const-string v0, "translationY"

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x1f4

    .line 403
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rlTips:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->monthViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    new-array v5, v5, [F

    aput v3, v5, v4

    aput v9, v5, v1

    invoke-static {v2, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->objectAnimatorTranslateDown:Landroid/animation/ObjectAnimator;

    .line 406
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 408
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentRows:I

    if-ne v0, v6, :cond_5e9

    .line 409
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->objectAnimatorTranslate:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 410
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->rlTips:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 412
    :cond_5e9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->titleDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->cDate:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02d"

    invoke-static {v5, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u4e00\u6b21\u7ecf\u671fnext1:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    .line 417
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    .line 418
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    .line 419
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->caulStart_End(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 420
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setOnMultiChooseListener(Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;)V

    .line 545
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setOnPagerChangeListener(Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;)V

    .line 582
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v1, :cond_6c7

    .line 583
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v1, :cond_6b3

    .line 584
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_6cc

    .line 586
    :cond_6b3
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v1, :cond_6c1

    .line 587
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_6cc

    .line 589
    :cond_6c1
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_6cc

    .line 593
    :cond_6c7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 597
    :goto_6cc
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-WomenHealthActivity(F)V
    .registers 8

    .line 248
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_b7

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 251
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 250
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 252
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 253
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    if-ne p1, v5, :cond_70

    .line 255
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_d8

    :cond_70
    if-ne p1, v2, :cond_81

    .line 257
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_d8

    :cond_81
    const/4 v0, 0x3

    if-ne p1, v0, :cond_93

    .line 259
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_d8

    :cond_93
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a5

    .line 261
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_d8

    :cond_a5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_d8

    .line 263
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_d8

    .line 266
    :cond_b7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_d8
    :goto_d8
    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-WomenHealthActivity(F)V
    .registers 8

    .line 271
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_bb

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 274
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 273
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 275
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 276
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    if-ne p1, v5, :cond_74

    .line 278
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_dc

    :cond_74
    if-ne p1, v2, :cond_85

    .line 280
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_dc

    :cond_85
    const/4 v0, 0x3

    if-ne p1, v0, :cond_97

    .line 282
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_dc

    :cond_97
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a9

    .line 284
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_dc

    :cond_a9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_dc

    .line 286
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_dc

    .line 289
    :cond_bb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_dc
    :goto_dc
    return-void
.end method

.method synthetic lambda$initView$17$com-keephealth-android-ui-device-activity-WomenHealthActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 19

    .line 0
    move-object/from16 v8, p0

    move/from16 v0, p2

    .line 598
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSwitchOn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "6t6tyg"

    invoke-static {v6, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 603
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xc

    .line 604
    invoke-virtual {v1, v11, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v12, 0xd

    .line 605
    invoke-virtual {v1, v12, v10}, Ljava/util/Calendar;->set(II)V

    .line 606
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 607
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    const/4 v14, 0x2

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 608
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v15, 0x5

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 610
    invoke-static {v1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_fc8

    .line 611
    iput-boolean v13, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    .line 612
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 613
    const-string v1, "6t6tyf"

    const-string v2, "visible  1"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 615
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 616
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 618
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    .line 619
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v13

    .line 618
    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 619
    invoke-virtual {v1, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 620
    new-instance v2, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 621
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 622
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 623
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v7, 0x4

    .line 624
    invoke-static {v7, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v4

    iput v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    .line 625
    invoke-static {v7, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    iput v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onlyOneMunalData()Z

    .line 627
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-static {v2, v4}, Lcom/keephealth/android/util/WomenHealthUtil;->getDaysInMonth(II)I

    move-result v2

    .line 628
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    if-le v4, v2, :cond_e4

    .line 629
    iput v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    .line 631
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

    .line 632
    const-string v5, "preMunalDayBetween:"

    const-string v7, "-"

    if-nez v0, :cond_7bc

    .line 633
    const-string v0, "isSwitchOn:\u5173\u95ed"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 634
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v12, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 635
    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    aput-object v2, v4, v10

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v12, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v12}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    aput-object v2, v4, v13

    .line 634
    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 635
    invoke-virtual {v0, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 636
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 637
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 638
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V

    .line 656
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f100687

    invoke-virtual {v8, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentDate.getIsStartData():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "erer46e"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v13, :cond_593

    .line 659
    const-string v0, "isSwitchOn:\u5173\u95ed\u5f00\u542f\u65e5"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onlyOneMunalData()Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 661
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V

    .line 663
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->closeMenutralCal()V

    .line 664
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    .line 665
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    .line 666
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v1, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4ec5\u4ec5\u53ea\u6709\u4e00\u4e2a\u7ecf\u671f \u5173\u95ed\u6240\u6709:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->sendClearData()V

    .line 670
    const-string v0, "\u6e05\u9664\u6700\u540e\u4e00\u4e2a\u7ecf\u671f"

    const-string v1, "frfr6r"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsMenstrual:Lorg/greenrobot/greendao/Property;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_235

    .line 672
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v13, :cond_235

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e05\u9664\u6700\u540e\u4e00\u4e2a\u7ecf\u671f\u540e\u7684\u7ecf\u671f\u5927\u5c0f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b3

    .line 675
    :cond_235
    const-string v0, "\u6e05\u9664\u6700\u540e\u4e00\u4e2a\u7ecf\u671f\u540e\u7684\u7ecf\u671f\u5927\u5c0f\u4e3a\u7a7a:"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b3

    .line 678
    :cond_23c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u95ed\u7684\u5f53\u524d\u65e5\u671f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v12, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object v11, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastMunalData(IZIII)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u95ed\u7684\u5f53\u524d\u65e5\u671fnextMunalDayBetween:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6ty5rg"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_345

    const/4 v0, 0x0

    .line 685
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v0, v1, v13}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-nez v0, :cond_2d1

    goto/16 :goto_58e

    .line 694
    :cond_2d1
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getPreMunalData(III)Ljava/util/Calendar;

    move-result-object v0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preMunalDayBetween: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9700\u8981\u83b7\u53d6\u4e0a\u4e00\u4e2a\u7ecf\u671f\u7684\u5f00\u59cb\u65e5\u671f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6t6ty10g"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-direct {v8, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearLastOneMunalafterData(Ljava/util/Calendar;)V

    .line 700
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

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 701
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v3, 0x34

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    goto/16 :goto_58e

    .line 704
    :cond_345
    const-string v0, "\u5173\u95ed\u7684\u4e0d\u662f\u6700\u540e\u4e00\u4e2a\u7ecf\u671f..."

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V

    .line 707
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->hasPreMunal(III)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    .line 708
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getCloseCurrentMunalNextObj(III)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    if-eqz v0, :cond_4ea

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u524d\u4e00\u4e2a\u7ecf\u671f\u7684\u7ed3\u675f\u65e5\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v3, "bean"

    iget-object v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v3, v4, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preMunalDayBetween\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    const-string v3, "drer4re"

    if-eqz v1, :cond_45e

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-eqz v4, :cond_45e

    .line 720
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 721
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 722
    invoke-virtual {v1, v4, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 723
    invoke-virtual {v1, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 724
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-virtual {v1, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 725
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v1, v14, v4}, Ljava/util/Calendar;->set(II)V

    .line 726
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-virtual {v1, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 727
    const-string v0, "1111111"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 734
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearNextPregnancy(III)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 736
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v2, :cond_58e

    .line 738
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 739
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 740
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 741
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 742
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 743
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 744
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

    .line 745
    invoke-direct {v8, v14, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto/16 :goto_58e

    :cond_45e
    if-eqz v1, :cond_58e

    .line 747
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_58e

    .line 748
    const-string v0, "222222"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scrollYear:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 753
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastMunalData(IZIII)V

    .line 754
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getPreMunalData(III)Ljava/util/Calendar;

    move-result-object v0

    .line 755
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

    .line 756
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

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 757
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v3, 0xd

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    goto/16 :goto_58e

    .line 761
    :cond_4ea
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "scrollYear:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "45er45t5"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    const/4 v0, 0x0

    .line 764
    iget-object v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v4, 0x3

    invoke-direct {v8, v0, v3, v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateClose(Ljava/lang/String;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    if-eqz v2, :cond_58e

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u4e00\u4e2a\u7ecf\u671f\u7684\u7ed3\u675f\u65e5\uff1a"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 770
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-direct {v8, v0, v1, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 772
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 773
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 774
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 775
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 776
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 777
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 778
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v1

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x3

    .line 779
    invoke-direct {v8, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 783
    :cond_58e
    :goto_58e
    invoke-direct {v8, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V

    goto/16 :goto_7b3

    .line 786
    :cond_593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5173\u95ed55555_currentDate.getIsEndMenstrualDate():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v0, "\u5173\u95ed77777\uff1a"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v13, :cond_7af

    .line 791
    const-string v0, "\u5173\u95ed55555:"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-eqz v0, :cond_6b4

    if-nez v0, :cond_5c5

    goto/16 :goto_6b4

    .line 830
    :cond_5c5
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----5nextMunalDayBetween\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 833
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 834
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 835
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v1, 0x3

    .line 836
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calProMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    iput v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    .line 837
    invoke-static {v1, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v0

    iput v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----153:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-gt v0, v15, :cond_662

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_662

    .line 842
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100688

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda1;-><init>()V

    const v2, 0x7f100257

    .line 844
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    .line 846
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 847
    const-string v0, "\u6253\u5f00\u2014\u2014-----4"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7af

    :cond_662
    if-gt v0, v15, :cond_7af

    .line 848
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_7af

    .line 850
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {v14, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_6aa

    .line 851
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 852
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 853
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda2;-><init>()V

    const v2, 0x7f100257

    .line 855
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_6ad

    .line 858
    :cond_6aa
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentEndMenuralDelayOnDay()V

    .line 860
    :goto_6ad
    const-string v0, "\u6253\u5f00\u2014\u2014-----45"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7af

    .line 793
    :cond_6b4
    :goto_6b4
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {v13, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_6f6

    .line 794
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 795
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 796
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda15;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    const v2, 0x7f100257

    .line 798
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_7aa

    .line 806
    :cond_6f6
    const-string v0, "\u5173\u95ed66666\uff1acurrentEndMenuralDelayOnDay"

    const-string v1, "6t6tyfg"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 808
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 809
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v2, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 810
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v3, v13

    invoke-virtual {v2, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 811
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v2, v15, v3}, Ljava/util/Calendar;->set(II)V

    .line 812
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

    .line 813
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 814
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 815
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "womenHealthBean_\u5e74\u6708\u65e5:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    .line 817
    invoke-static {v12, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_7a2

    .line 818
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 819
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda17;-><init>()V

    const v2, 0x7f100257

    .line 821
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_7aa

    .line 824
    :cond_7a2
    const-string v0, "\u5173\u95ed66666\uff1acurrentEndMenuralDelayOnDay"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentEndMenuralDelayOnDay()V

    .line 828
    :goto_7aa
    const-string v0, "\u5173\u95ed66666\uff1a"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7af
    :goto_7af
    const/4 v0, 0x3

    .line 864
    invoke-direct {v8, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V

    .line 866
    :goto_7b3
    const-string v0, "ere4re4"

    const-string v1, "----------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fc4

    :cond_7bc
    move-object v11, v5

    const/4 v12, 0x4

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pre:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  next:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_86d

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preMenstrual  .setStartMenstrualYear  4  year:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 876
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 877
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 879
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 880
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 881
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u2014\u2014-----1_cycle\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6ty56g"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fc1

    .line 899
    :cond_86d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentDate.getIsMenstrual():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 901
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-nez v0, :cond_d78

    .line 903
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-eqz v0, :cond_c18

    .line 905
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v1, :cond_981

    if-gt v0, v15, :cond_8e6

    .line 909
    const-string v0, "\u6253\u5f00\u2014\u2014-----2"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-static {v15, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v0

    if-eqz v0, :cond_8e1

    .line 913
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 914
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v1, 0x7f100686

    invoke-virtual {v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 915
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda3;-><init>()V

    const v2, 0x7f100257

    .line 917
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_fc1

    .line 920
    :cond_8e1
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpen()V

    goto/16 :goto_fc1

    .line 923
    :cond_8e6
    const-string v0, "6t6tyhg"

    const-string v1, "\u6253\u5f00\u2014\u2014-----3_lastNextMunalYear:"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v0, v13}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 926
    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastMunalData(IZIII)V

    .line 927
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_fc1

    .line 928
    const-string v0, "\u6253\u5f00\u2014\u2014-----3_lastNextMunalYear  \u662f\u6700\u540e\u4e00\u4e2a\u7ecf\u671f:"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 931
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v7, v13, v0}, Ljava/util/Calendar;->set(II)V

    .line 932
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v0, v13

    invoke-virtual {v7, v14, v0}, Ljava/util/Calendar;->set(II)V

    .line 933
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v7, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 934
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v6, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "open"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  preMenstrual.getMenstrualCycle():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6ty10g"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-direct {v8, v13}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearForecastMunalPregna(I)V

    .line 940
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 941
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 942
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 943
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 944
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 945
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 946
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x7

    .line 947
    invoke-direct {v8, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 948
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v12, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    goto/16 :goto_fc1

    .line 952
    :cond_981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   nextMunalDayBetween:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-gt v0, v15, :cond_9da

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-gt v1, v15, :cond_9da

    .line 956
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100688

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda4;-><init>()V

    const v2, 0x7f100257

    .line 958
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    .line 960
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 961
    const-string v0, "\u6253\u5f00\u2014\u2014-----4"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fc1

    :cond_9da
    if-gt v0, v15, :cond_a51

    .line 962
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-le v1, v15, :cond_a51

    .line 965
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calPreMuntralStart(III)Ljava/util/Calendar;

    move-result-object v0

    .line 966
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 967
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 968
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 969
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 970
    const-string v2, "\u6253\u5f00\u2014\u2014-----551"

    invoke-static {v6, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    if-lt v0, v1, :cond_a47

    .line 972
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 973
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 974
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda5;-><init>()V

    const v2, 0x7f100257

    .line 976
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_a4a

    .line 979
    :cond_a47
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpen()V

    .line 981
    :goto_a4a
    const-string v0, "\u6253\u5f00\u2014\u2014-----551"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fc1

    :cond_a51
    if-le v0, v15, :cond_bc4

    .line 982
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    add-int/2addr v1, v15

    if-ge v0, v1, :cond_bc4

    .line 984
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 985
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 986
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 987
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 988
    new-instance v1, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 989
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 990
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 991
    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v0, 0x3

    .line 992
    invoke-static {v0, v1}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v0

    .line 993
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    if-lt v0, v1, :cond_ac8

    .line 994
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 995
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda6;-><init>()V

    const v2, 0x7f100257

    .line 997
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_fc1

    .line 1001
    :cond_ac8
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralAndOldEnd(IIII)Ljava/util/Calendar;

    move-result-object v0

    .line 1002
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1003
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1004
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1005
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v1, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 1006
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

    .line 1007
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

    iget-object v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6t6ty6g"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    if-le v0, v1, :cond_b8f

    .line 1009
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 1010
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1011
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100689

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda7;-><init>()V

    const v2, 0x7f100257

    .line 1013
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_fc1

    .line 1016
    :cond_b8f
    new-instance v0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$7;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    const v2, 0x7f100193

    .line 1018
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    const v4, 0x7f100257

    .line 1025
    invoke-virtual {v0, v4, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->create()Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->show()V

    goto/16 :goto_fc1

    .line 1099
    :cond_bc4
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-le v0, v15, :cond_c11

    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    add-int/2addr v1, v15

    if-lt v0, v1, :cond_c11

    .line 1101
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v0, v12}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 1102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1103
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 1104
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 1105
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1106
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

    .line 1107
    invoke-direct {v8, v1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto/16 :goto_fc1

    .line 1110
    :cond_c11
    const-string v0, "\u6253\u5f00\u2014\u2014-----17"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fc1

    :cond_c18
    const v3, 0x7f100689

    const v4, 0x7f100257

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1116
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_c74

    .line 1117
    const-string v0, "\u6253\u5f00-----14"

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preMenstrual  .setStartMenstrualYear  5  year:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 1120
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 1121
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 1122
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 1123
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 1124
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v10, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuData(ZIII)V

    .line 1125
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v3, 0x7

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    goto/16 :goto_fc1

    .line 1127
    :cond_c74
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v1

    add-int/2addr v1, v15

    if-ge v0, v1, :cond_d71

    .line 1134
    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v7, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v9, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v11, v3

    move v3, v5

    move v5, v4

    move v4, v7

    move v7, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastMunalData(IZIII)V

    .line 1135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1136
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 1137
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 1138
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1139
    new-instance v1, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 1140
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 1141
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 1142
    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    const/4 v2, 0x3

    .line 1143
    invoke-static {v2, v1}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)I

    move-result v2

    .line 1144
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
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

    .line 1146
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

    .line 1147
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    if-lt v2, v0, :cond_d3f

    .line 1148
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 1149
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda8;-><init>()V

    .line 1151
    invoke-virtual {v0, v7, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1152
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_fc1

    .line 1154
    :cond_d3f
    new-instance v0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    invoke-direct {v0, v8}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$9;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    const v2, 0x7f100193

    .line 1156
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;

    invoke-direct {v1, v8}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    .line 1163
    invoke-virtual {v0, v7, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    .line 1261
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->create()Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->show()V

    goto/16 :goto_fc1

    .line 1266
    :cond_d71
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v8, v0, v15}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    goto/16 :goto_fc1

    :cond_d78
    const v0, 0x7f100257

    const v11, 0x7f100689

    .line 1270
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v2

    if-ne v2, v13, :cond_ed4

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1275
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_e42

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00-----45:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-direct {v8, v10}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateCloseNext(I)V

    .line 1279
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 1280
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 1281
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 1282
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 1283
    invoke-static {v14, v0}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextWillMunal(ILcom/keephealth/android/views/calendarview/bean/DateBean;)Ljava/util/Calendar;

    move-result-object v1

    .line 1285
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

    .line 1286
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v8, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V

    .line 1287
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

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1290
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1291
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 1292
    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 1293
    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 1294
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1295
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 1296
    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1297
    invoke-direct {v8, v2, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto/16 :goto_fc1

    .line 1299
    :cond_e42
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/DateBean;-><init>()V

    .line 1300
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarYear(I)V

    .line 1301
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarMonth(I)V

    .line 1302
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->setSolarDay(I)V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00-----20_scrollYear:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00-----20:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

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

    .line 1305
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-direct {v8, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateCloseNext(I)V

    .line 1307
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralStartTime(III)Ljava/util/Calendar;

    move-result-object v0

    .line 1308
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {v8, v1, v2, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearPrePregnancy(III)V

    .line 1309
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->calNextMuntralStartTime(III)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {v8, v15, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto/16 :goto_fc1

    .line 1312
    :cond_ed4
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5f00-----IsMenstrual == 2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMunalDayBetween:I

    if-gt v2, v15, :cond_f36

    .line 1318
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/keephealth/android/util/WomenHealthUtil;->isBiggerMunarlCycle(ILcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v1

    if-eqz v1, :cond_f31

    .line 1319
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1320
    iget-object v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v1, v10}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 1321
    new-instance v1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v1, v8}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$$ExternalSyntheticLambda16;-><init>()V

    .line 1323
    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto/16 :goto_fc1

    .line 1326
    :cond_f31
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpen()V

    goto/16 :goto_fc1

    .line 1330
    :cond_f36
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1332
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I

    if-nez v0, :cond_f81

    .line 1334
    invoke-direct {v8, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->clearForecastMunalPregna(I)V

    .line 1335
    iget v4, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v5, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v6, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v3, "open"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 1336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1337
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 1338
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 1339
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 1340
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v13, v1}, Ljava/util/Calendar;->set(II)V

    .line 1341
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v1, v13

    invoke-virtual {v0, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 1342
    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 1344
    invoke-direct {v8, v15, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    .line 1345
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v1, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/16 v3, 0x9

    invoke-direct {v8, v3, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    goto :goto_fc1

    .line 1347
    :cond_f81
    iget-object v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v2

    add-int/2addr v2, v15

    if-ge v0, v2, :cond_fb2

    .line 1348
    invoke-direct {v8, v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpenNext(I)V

    .line 1349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1350
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1351
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1352
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 1353
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v0, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 1354
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v2, v13

    invoke-virtual {v0, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1355
    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v0, v15, v2}, Ljava/util/Calendar;->set(II)V

    .line 1357
    invoke-direct {v8, v15, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V

    goto :goto_fb8

    .line 1359
    :cond_fb2
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 v2, 0x6

    invoke-direct {v8, v0, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->openNewCyc(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    .line 1361
    :goto_fb8
    iget v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v2, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v3, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-direct {v8, v1, v0, v2, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    .line 1366
    :cond_fc1
    :goto_fc1
    invoke-direct {v8, v12}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V

    .line 1368
    :goto_fc4
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onlyOneMunalData()Z

    goto :goto_fe5

    .line 1371
    :cond_fc8
    iput-boolean v10, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    .line 1372
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1373
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1374
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 1375
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1376
    iget-object v0, v8, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    :goto_fe5
    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-WomenHealthActivity(Landroid/view/View;)V
    .registers 8

    .line 295
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastMunalData(IZIII)V

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bean == null-----current:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "6t6t6g"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 298
    const-string v0, "from"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v0, "year"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v0, "month"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v0, "day"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v0, "lastNextMunalEndYear"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v0, "lastNextMunalEndMonth"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v0, "lastNextMunalEndDay"

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-class v0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;

    const/16 v1, 0x12c

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-device-activity-WomenHealthActivity(Landroid/view/View;)V
    .registers 4

    .line 308
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    if-eqz p1, :cond_1c

    .line 309
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    const-string v1, "MakeLove"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-class v0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;

    const/16 v1, 0xc8

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_3d

    .line 313
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method synthetic lambda$initView$4$com-keephealth-android-ui-device-activity-WomenHealthActivity(Landroid/view/View;)V
    .registers 4

    .line 317
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    if-eqz p1, :cond_1c

    .line 318
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Symptom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-class v0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;

    const/16 v1, 0x64

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_3d

    .line 322
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method synthetic lambda$initView$5$com-keephealth-android-ui-device-activity-WomenHealthActivity([I)V
    .registers 12

    .line 0
    const/4 v0, 0x0

    .line 546
    aget v1, p1, v0

    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    const/4 v1, 0x1

    .line 547
    aget v2, p1, v1

    iput v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    const/4 v2, 0x2

    .line 548
    aget v3, p1, v2

    iput v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    .line 549
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->titleDate:Landroid/widget/TextView;

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

    .line 550
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    .line 551
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 552
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 553
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 554
    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 555
    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 556
    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 557
    invoke-static {v3}, Lcom/keephealth/android/util/DateUtil;->getDaysBetweenTwo(Ljava/util/Calendar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    const/16 v6, 0x8

    if-gt v3, v4, :cond_c3

    .line 558
    iput-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    .line 559
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_mood_makelove:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    const-string v3, "6t6tyf"

    const-string v4, "visible  4"

    invoke-static {v3, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 562
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itSymptom:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 564
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_out_women_date:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->view_out_women_date:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-----------\u5de6\u53f3\u6ed1\u52a8----------------:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ttt55tt"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d4

    .line 568
    :cond_c3
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->isLessOrEqual:Z

    .line 569
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v3, v6}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 570
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lin_out_women_date:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 571
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->view_out_women_date:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 573
    :goto_d4
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    aget v7, p1, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    aget v9, p1, v1

    .line 574
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v0

    sget-object v8, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v9, p1, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v1

    .line 573
    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 574
    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v3, :cond_120

    .line 575
    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v3

    if-ne v3, v1, :cond_120

    .line 576
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_125

    .line 578
    :cond_120
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    :goto_125
    aget p1, p1, v2

    invoke-direct {p0, v5, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V

    return-void
.end method

.method synthetic lambda$initView$6$com-keephealth-android-ui-device-activity-WomenHealthActivity(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 800
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 801
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 802
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 803
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public lastMonth(Landroid/view/View;)V
    .registers 2

    .line 3170
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastMonth()V

    return-void
.end method

.method public nextMonth(Landroid/view/View;)V
    .registers 2

    .line 3174
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->nextMonth()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    .line 2952
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

    .line 2968
    :cond_16
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v0, "perimeter"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 2969
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "dura"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2970
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2971
    invoke-static {p0, p2, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2972
    invoke-static {p0, v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2973
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    if-nez v4, :cond_8a

    .line 2975
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$12;

    invoke-direct {p2, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2987
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 2988
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p3

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V

    goto/16 :goto_197

    .line 2990
    :cond_8a
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "year"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2991
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "month"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2992
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "day"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2993
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 2994
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    .line 2995
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

    .line 2996
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 2997
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 2998
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 2999
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 3000
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 3001
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 3002
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->add(II)V

    .line 3003
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    .line 3004
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIIII)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3025
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_197

    .line 2961
    :cond_147
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "backMakeLove"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMakeLove(I)V

    .line 2962
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2963
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p3

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2964
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calendarView:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V

    .line 2965
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setMakeLove()V

    goto :goto_197

    .line 2957
    :cond_17f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "backSymptom"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSymptom(Ljava/lang/String;)V

    .line 2958
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setSymptom()V

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

    .line 3366
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->update(Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/greenrobot/greendao/DaoException; {:try_start_0 .. :try_end_7} :catch_7

    .line 3370
    :catch_7
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 3371
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
