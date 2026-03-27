.class public Lcom/keephealth/android/viewmodel/mine/HRVViewModel;
.super Lcom/keephealth/android/base/BaseTimeViewmodel;
.source "HRVViewModel.java"


# instance fields
.field private endDate:Ljava/util/Date;

.field public hrvDayData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/keephealth/android/viewmodel/HRVDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public hrvMonthData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/keephealth/android/viewmodel/HRVDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseTimeViewmodel;-><init>()V

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvDayData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvMonthData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private isWeeks(ILjava/util/Calendar;)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 425
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-object v1, p0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public getHistoryData(III)V
    .registers 18

    move-object v0, p0

    .line 35
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVItemBeanDao()Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 37
    aput-object v6, v5, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 38
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    .line 37
    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v3, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v3, v7

    .line 39
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "list:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b6

    move v1, v7

    :goto_74
    const/16 v2, 0x18

    if-ge v1, v2, :cond_b2

    .line 49
    new-instance v2, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;-><init>()V

    .line 50
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setHour(I)V

    .line 51
    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setMinute(I)V

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "%02d"

    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setRemark(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setTmpHandler(I)V

    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_b2
    move v1, v7

    move v5, v1

    goto/16 :goto_1a6

    :cond_b6
    move v5, v7

    move v6, v5

    move v10, v6

    .line 57
    :goto_b9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_e7

    .line 58
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    .line 59
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getOffTime()I

    move-result v12

    invoke-virtual {p0, v5, v12}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getDayRemark(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setRemark(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v12

    if-lez v12, :cond_de

    add-int/lit8 v6, v6, 0x1

    .line 62
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_e1

    .line 64
    :cond_de
    invoke-virtual {v11, v7}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setTmpHandler(I)V

    .line 66
    :goto_e1
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b9

    :cond_e7
    if-nez v6, :cond_ea

    move v6, v9

    :cond_ea
    int-to-float v2, v10

    int-to-float v5, v6

    div-float/2addr v2, v5

    .line 69
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 71
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v10, 0x3

    new-array v11, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v7

    sget-object v12, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 73
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v9

    sget-object v12, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v12, v8}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v4

    .line 72
    invoke-virtual {v5, v6, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v6, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    aput-object v11, v6, v7

    .line 74
    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_14b

    .line 75
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14b

    .line 76
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v5

    goto :goto_14c

    :cond_14b
    move v5, v7

    .line 79
    :goto_14c
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v6, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v10, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v7

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 81
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v9

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v8}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v10, v4

    .line 80
    invoke-virtual {v1, v6, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v4, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    aput-object v6, v4, v7

    .line 82
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a4

    .line 83
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a4

    .line 84
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v7

    :cond_1a4
    move v1, v7

    move v7, v2

    .line 87
    :goto_1a6
    new-instance v2, Lcom/keephealth/android/viewmodel/HRVDataBean;

    invoke-direct {v2}, Lcom/keephealth/android/viewmodel/HRVDataBean;-><init>()V

    .line 88
    invoke-virtual {v2, v3}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setHrvItemList(Ljava/util/List;)V

    .line 89
    invoke-virtual {v2, v7}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setAvgHRV(I)V

    .line 90
    invoke-virtual {v2, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMaxHRV(I)V

    .line 91
    invoke-virtual {v2, v5}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMinHRV(I)V

    .line 92
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvDayData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getMonthData()V
    .registers 20

    move-object/from16 v0, p0

    .line 99
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v2, 0x17

    const/16 v3, 0xb

    .line 110
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    const/16 v4, 0x3b

    .line 111
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 112
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 115
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 117
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 118
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    .line 119
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVDayDataBeanDao()Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v5, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    .line 121
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v5, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 122
    invoke-virtual {v1, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 123
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 125
    iget-object v7, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz v1, :cond_1ea

    move v7, v4

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    .line 127
    :goto_95
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    iget-object v15, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_1e6

    .line 128
    new-instance v13, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-direct {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>()V

    .line 129
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1a1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    .line 130
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getYear()I

    move-result v4

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_198

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMonth()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v4, v17, 0x1

    if-ne v3, v4, :cond_198

    .line 131
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getDay()I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_198

    .line 133
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 134
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMinValue(I)V

    .line 135
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMaxValue(I)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u5fc3\u7387\u53d8\u5f02\u6027\u6700\u5927\u503c\u6700\u5c0f\u503c"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    if-lez v1, :cond_19a

    add-int/lit8 v7, v7, 0x1

    .line 140
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    add-int/2addr v8, v1

    .line 141
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    if-le v1, v11, :cond_151

    .line 142
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    move v11, v1

    :cond_151
    if-nez v12, :cond_159

    .line 145
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    :goto_157
    move v12, v1

    goto :goto_164

    .line 147
    :cond_159
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    if-ge v1, v12, :cond_164

    .line 148
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    goto :goto_157

    :cond_164
    :goto_164
    if-nez v9, :cond_16a

    .line 152
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v9

    .line 154
    :cond_16a
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    if-le v9, v1, :cond_17b

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    if-eqz v1, :cond_17b

    .line 155
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    move v9, v1

    .line 157
    :cond_17b
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v1

    if-ge v10, v1, :cond_186

    .line 158
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v1

    move v10, v1

    .line 161
    :cond_186
    sget-object v1, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setRemark(Ljava/lang/String;)V

    .line 162
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1a4

    :cond_198
    move-object/from16 v18, v1

    :cond_19a
    move-object/from16 v1, v18

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_b0

    :cond_1a1
    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_1a4
    if-nez v1, :cond_1d9

    .line 169
    new-instance v1, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>()V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v13, 0x1

    add-int/2addr v4, v13

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setRemark(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 172
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1dc

    :cond_1d9
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x5

    :goto_1dc
    const/4 v1, 0x1

    .line 175
    invoke-virtual {v6, v4, v1}, Ljava/util/Calendar;->add(II)V

    move v4, v2

    move v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_95

    :cond_1e6
    move v1, v2

    move v4, v7

    move v2, v8

    goto :goto_1ee

    :cond_1ea
    move v1, v2

    move v2, v4

    move v9, v4

    move v10, v9

    :goto_1ee
    if-nez v4, :cond_1f1

    goto :goto_1f2

    :cond_1f1
    move v1, v4

    :goto_1f2
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 179
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 180
    new-instance v2, Lcom/keephealth/android/viewmodel/HRVDataBean;

    invoke-direct {v2}, Lcom/keephealth/android/viewmodel/HRVDataBean;-><init>()V

    .line 181
    invoke-virtual {v2, v5}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setHrvDayList(Ljava/util/List;)V

    .line 182
    invoke-virtual {v2, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setAvgHRV(I)V

    .line 183
    invoke-virtual {v2, v10}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMaxHRV(I)V

    .line 184
    invoke-virtual {v2, v9}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMinHRV(I)V

    .line 185
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setStartDate(Ljava/util/Date;)V

    .line 186
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setEndDate(Ljava/util/Date;)V

    .line 187
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvMonthData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getOneYearData()V
    .registers 24

    move-object/from16 v0, p0

    .line 321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 322
    iget-object v2, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 323
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 324
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 325
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 326
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iput-object v7, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    const/16 v7, -0xb

    const/4 v8, 0x2

    .line 327
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 328
    invoke-virtual {v0, v1}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 329
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    .line 330
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVDayDataBeanDao()Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v9, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    .line 332
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v9, 0x0

    new-array v10, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v7, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v7, 0x1

    new-array v10, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v9

    .line 333
    invoke-virtual {v1, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 334
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_235

    .line 338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 339
    iget-object v12, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 340
    invoke-virtual {v11, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 341
    invoke-virtual {v11, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 342
    invoke-virtual {v11, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 343
    new-instance v2, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>()V

    move v3, v9

    move v4, v3

    move v5, v4

    move v6, v5

    move v12, v6

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 344
    :goto_9f
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    iget-object v8, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    cmp-long v8, v17, v19

    if-gtz v8, :cond_231

    .line 345
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v21, v16

    :goto_b7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_186

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    .line 346
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getYear()I

    move-result v7

    move-object/from16 v19, v1

    move-object/from16 v20, v8

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_17b

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMonth()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v8, v17, 0x1

    if-ne v7, v8, :cond_17b

    .line 347
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getDay()I

    move-result v1

    const/4 v7, 0x5

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v1, v7, :cond_17b

    .line 348
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    if-lez v1, :cond_fb

    add-int/lit8 v15, v15, 0x1

    .line 350
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    move/from16 v7, v21

    add-int v21, v7, v1

    goto :goto_fd

    :cond_fb
    move/from16 v7, v21

    .line 352
    :goto_fd
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 353
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMinValue(I)V

    .line 354
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMaxValue(I)V

    if-nez v5, :cond_118

    .line 356
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v5

    .line 358
    :cond_118
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    if-le v5, v1, :cond_128

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    if-eqz v1, :cond_128

    .line 359
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v5

    .line 361
    :cond_128
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v1

    if-ge v6, v1, :cond_132

    .line 362
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v6

    :cond_132
    if-nez v13, :cond_138

    .line 365
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v13

    .line 367
    :cond_138
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    if-le v13, v1, :cond_148

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v1

    if-eqz v1, :cond_148

    .line 368
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v13

    .line 370
    :cond_148
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v1

    if-ge v14, v1, :cond_152

    .line 371
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v14

    .line 374
    :cond_152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " -- "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "HRV\u6570\u636e\u6700\u5c0f\u503cdetail"

    invoke-static {v7, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17f

    :cond_17b
    move/from16 v7, v21

    move/from16 v21, v7

    :goto_17f
    move-object/from16 v1, v19

    move-object/from16 v8, v20

    const/4 v7, 0x1

    goto/16 :goto_b7

    :cond_186
    move-object/from16 v19, v1

    move/from16 v7, v21

    const/4 v1, 0x1

    .line 377
    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move/from16 v16, v5

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move/from16 v20, v6

    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v8, v5, v6}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->isEndMonth(III)Z

    move-result v1

    if-nez v1, :cond_1ba

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    cmp-long v1, v5, v21

    if-nez v1, :cond_1b6

    goto :goto_1ba

    :cond_1b6
    const/4 v1, 0x0

    :goto_1b7
    const/4 v5, 0x5

    const/4 v8, 0x1

    goto :goto_222

    :cond_1ba
    :goto_1ba
    if-eqz v15, :cond_204

    .line 379
    invoke-virtual {v2, v14}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMaxValue(I)V

    .line 380
    invoke-virtual {v2, v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMinValue(I)V

    int-to-float v1, v7

    int-to-float v5, v15

    div-float/2addr v1, v5

    .line 381
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    add-int/lit8 v3, v3, 0x1

    .line 383
    div-int v21, v7, v15

    add-int v4, v4, v21

    .line 384
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    if-le v1, v12, :cond_1dc

    .line 385
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v12

    :cond_1dc
    if-nez v9, :cond_1e3

    .line 388
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v9

    goto :goto_1ed

    .line 390
    :cond_1e3
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v1

    if-ge v1, v9, :cond_1ed

    .line 391
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v9

    .line 394
    :cond_1ed
    :goto_1ed
    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYM:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setRemark(Ljava/lang/String;)V

    const/16 v1, 0x78

    .line 395
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setOffSet(I)V

    .line 396
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_218

    :cond_204
    const/4 v1, 0x0

    .line 398
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 399
    sget-object v5, Lcom/keephealth/android/util/DateUtil;->formatYM:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setRemark(Ljava/lang/String;)V

    .line 400
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_218
    new-instance v2, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>()V

    move v7, v1

    move v13, v7

    move v14, v13

    move v15, v14

    goto :goto_1b7

    .line 408
    :goto_222
    invoke-virtual {v11, v5, v8}, Ljava/util/Calendar;->add(II)V

    move/from16 v5, v16

    move-object/from16 v1, v19

    move/from16 v6, v20

    move/from16 v16, v7

    move v7, v8

    const/4 v8, 0x2

    goto/16 :goto_9f

    :cond_231
    move v8, v7

    move v9, v3

    move v1, v4

    goto :goto_23a

    :cond_235
    move v8, v7

    move v1, v9

    move v5, v1

    move v6, v5

    move v9, v6

    :goto_23a
    if-nez v9, :cond_23e

    move v7, v8

    goto :goto_23f

    :cond_23e
    move v7, v9

    :goto_23f
    int-to-float v1, v1

    int-to-float v2, v7

    div-float/2addr v1, v2

    .line 412
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 413
    new-instance v2, Lcom/keephealth/android/viewmodel/HRVDataBean;

    invoke-direct {v2}, Lcom/keephealth/android/viewmodel/HRVDataBean;-><init>()V

    .line 414
    invoke-virtual {v2, v10}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setHrvDayList(Ljava/util/List;)V

    .line 415
    invoke-virtual {v2, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setAvgHRV(I)V

    .line 416
    invoke-virtual {v2, v6}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMaxHRV(I)V

    .line 417
    invoke-virtual {v2, v5}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMinHRV(I)V

    .line 418
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setStartDate(Ljava/util/Date;)V

    .line 419
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setEndDate(Ljava/util/Date;)V

    .line 420
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvMonthData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getSixMonthData()V
    .registers 26

    move-object/from16 v0, p0

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 202
    iget-object v2, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 203
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "WEEK_START_DAY_INDEX"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 205
    invoke-static {v4, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v3, 0xb

    const/16 v5, 0x17

    .line 207
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    const/16 v7, 0x3b

    .line 208
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 209
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 210
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    .line 211
    invoke-static {v5, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 213
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    .line 214
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVDayDataBeanDao()Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v10, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    .line 216
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    new-array v10, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v9, 0x1

    new-array v10, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v4

    .line 217
    invoke-virtual {v2, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 218
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 220
    iget-object v12, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 221
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 222
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 223
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->set(II)V

    if-eqz v2, :cond_28b

    .line 228
    new-instance v1, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>()V

    move v3, v4

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v12, v8

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v17, v15

    .line 229
    :goto_bf
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    iget-object v9, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v9, v18, v20

    if-gtz v9, :cond_286

    .line 230
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    move-object/from16 v19, v2

    const-string v2, " -- "

    if-eqz v18, :cond_1d1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    move-object/from16 v21, v9

    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v22, v10

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HRV\u6570\u636e\u6700\u5c0f\u503cdetail"

    invoke-static {v10, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getYear()I

    move-result v9

    move/from16 v23, v4

    const/4 v10, 0x1

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v9, v4, :cond_1c7

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMonth()I

    move-result v4

    const/4 v9, 0x2

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v10

    if-ne v4, v9, :cond_1c7

    .line 233
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getDay()I

    move-result v4

    const/4 v9, 0x5

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v4, v9, :cond_1c7

    .line 234
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v4

    if-lez v4, :cond_14c

    add-int/lit8 v8, v8, 0x1

    .line 236
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v4

    add-int/2addr v15, v4

    .line 238
    :cond_14c
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 239
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMinValue(I)V

    .line 240
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMaxValue(I)V

    if-nez v6, :cond_167

    .line 242
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v6

    .line 244
    :cond_167
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v4

    if-le v6, v4, :cond_177

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v4

    if-eqz v4, :cond_177

    .line 245
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v6

    .line 247
    :cond_177
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v4

    if-ge v7, v4, :cond_181

    .line 248
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v7

    :cond_181
    if-nez v13, :cond_187

    .line 251
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v13

    .line 253
    :cond_187
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v4

    if-le v13, v4, :cond_197

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v4

    if-eqz v4, :cond_197

    .line 254
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v13

    .line 256
    :cond_197
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v4

    if-ge v14, v4, :cond_1a1

    .line 257
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v14

    .line 259
    :cond_1a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HRV\u6570\u636e\u6700\u5c0f\u503cdetail2"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c7
    move-object/from16 v2, v19

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v4, v23

    goto/16 :goto_d5

    :cond_1d1
    move/from16 v23, v4

    move-object/from16 v22, v10

    .line 262
    invoke-direct {v0, v12, v11}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->isWeeks(ILjava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_26e

    .line 263
    invoke-virtual {v1, v14}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMaxValue(I)V

    .line 264
    invoke-virtual {v1, v13}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMinValue(I)V

    if-eqz v8, :cond_229

    int-to-float v4, v15

    int-to-float v9, v8

    div-float/2addr v4, v9

    .line 266
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    add-int/lit8 v3, v3, 0x1

    .line 268
    div-int/2addr v15, v8

    add-int/2addr v5, v15

    .line 269
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v4

    move/from16 v9, v23

    if-le v4, v9, :cond_1fe

    .line 270
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v4

    goto :goto_1ff

    :cond_1fe
    move v4, v9

    :goto_1ff
    move/from16 v10, v17

    if-nez v10, :cond_208

    .line 273
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v17

    goto :goto_215

    .line 275
    :cond_208
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v8

    if-ge v8, v10, :cond_213

    .line 276
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v17

    goto :goto_215

    :cond_213
    move/from16 v17, v10

    .line 279
    :goto_215
    invoke-virtual {v0, v11}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setRemark(Ljava/lang/String;)V

    const/16 v8, 0x3c

    .line 280
    invoke-virtual {v1, v8}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setOffSet(I)V

    move-object/from16 v8, v22

    .line 281
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v4

    const/4 v4, 0x0

    goto :goto_23d

    :cond_229
    move/from16 v10, v17

    move-object/from16 v8, v22

    move/from16 v9, v23

    const/4 v4, 0x0

    .line 283
    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 284
    invoke-virtual {v0, v11}, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setRemark(Ljava/lang/String;)V

    .line 285
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_23d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HRV\u6570\u636e\u6700\u5c0f\u503cdetail222"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v1, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>()V

    move v13, v4

    move v14, v13

    move v15, v14

    move-object v2, v8

    move v8, v15

    goto :goto_275

    :cond_26e
    move/from16 v10, v17

    move-object/from16 v2, v22

    move/from16 v9, v23

    const/4 v4, 0x0

    :goto_275
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v10, 0x5

    .line 295
    invoke-virtual {v11, v10, v4}, Ljava/util/Calendar;->add(II)V

    move-object v10, v2

    move-object/from16 v2, v19

    move/from16 v24, v9

    move v9, v4

    move/from16 v4, v24

    goto/16 :goto_bf

    :cond_286
    move-object v2, v10

    const/4 v4, 0x1

    move/from16 v16, v3

    goto :goto_292

    :cond_28b
    move v4, v9

    move-object v2, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_292
    if-nez v16, :cond_296

    move v9, v4

    goto :goto_298

    :cond_296
    move/from16 v9, v16

    :goto_298
    int-to-float v1, v5

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 299
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 300
    new-instance v3, Lcom/keephealth/android/viewmodel/HRVDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/viewmodel/HRVDataBean;-><init>()V

    .line 301
    invoke-virtual {v3, v2}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setHrvDayList(Ljava/util/List;)V

    .line 302
    invoke-virtual {v3, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setAvgHRV(I)V

    .line 303
    invoke-virtual {v3, v7}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMaxHRV(I)V

    .line 304
    invoke-virtual {v3, v6}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setMinHRV(I)V

    .line 305
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setStartDate(Ljava/util/Date;)V

    .line 306
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/viewmodel/HRVDataBean;->setEndDate(Ljava/util/Date;)V

    .line 307
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/HRVViewModel;->hrvMonthData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
