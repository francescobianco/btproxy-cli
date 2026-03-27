.class public Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;
.super Lcom/keephealth/android/base/BaseTimeViewmodel;
.source "DrinkWaterViewModel.java"


# instance fields
.field public drinkWater:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseTimeViewmodel;-><init>()V

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->drinkWater:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private isWeeks(ILjava/util/Calendar;)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 266
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sget-object v1, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

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
    .registers 14

    .line 30
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 31
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v5

    .line 34
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v3, 0x18

    if-nez v1, :cond_f0

    .line 36
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v2, v5

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 38
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v2, v6

    .line 37
    invoke-virtual {v1, v4, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz v1, :cond_96

    .line 41
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v1

    goto :goto_97

    :cond_96
    move v1, v5

    .line 43
    :goto_97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    :goto_9d
    if-ge v4, v3, :cond_dc

    .line 45
    new-instance v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    .line 46
    invoke-virtual {v6, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    .line 47
    invoke-virtual {v6, p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    .line 48
    invoke-virtual {v6, p3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    .line 49
    invoke-virtual {v6, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    .line 50
    invoke-virtual {v6, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b7
    :goto_b7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 52
    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getHour()I

    move-result v9

    if-ne v9, v4, :cond_b7

    .line 53
    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v9

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v8

    add-int/2addr v9, v8

    invoke-virtual {v6, v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    goto :goto_b7

    .line 56
    :cond_d6
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    .line 58
    :cond_dc
    new-instance p1, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;

    invoke-direct {p1}, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;-><init>()V

    .line 59
    invoke-virtual {p1, v1}, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->setTotalWater(I)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->setDrinkWaterDayItems(Ljava/util/List;)V

    .line 61
    invoke-virtual {p1, v2}, Lcom/keephealth/android/viewmodel/main/bean/DrinkWaterBean;->setDrinkWaterHourItems(Ljava/util/List;)V

    .line 62
    iget-object p2, p0, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->drinkWater:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_115

    .line 65
    :cond_f0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_f6
    if-ge v1, v3, :cond_115

    .line 67
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    .line 68
    invoke-virtual {v2, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    .line 69
    invoke-virtual {v2, p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    .line 70
    invoke-virtual {v2, p3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    .line 71
    invoke-virtual {v2, v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    .line 72
    invoke-virtual {v2, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 73
    invoke-virtual {v2, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    :cond_115
    :goto_115
    return-void
.end method

.method public getMonthData()V
    .registers 18

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-object/from16 v1, p0

    .line 82
    invoke-virtual {v1, v0}, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 84
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 85
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

    const/4 v7, 0x0

    .line 87
    invoke-virtual {v0, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 88
    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 89
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v8, -0x1

    const/4 v9, 0x2

    .line 90
    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 91
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->endDate:Ljava/util/Date;

    .line 92
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v0

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 94
    sget-object v10, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 95
    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 96
    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {v8, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v7

    move v4, v3

    .line 103
    :goto_5c
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sget-object v10, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v5, v5, v10

    if-gtz v5, :cond_1c6

    .line 104
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v11, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v7

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x5

    .line 105
    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v10

    .line 104
    invoke-virtual {v5, v6, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    .line 106
    const-string v6, "-"

    const-string v11, "%02d"

    if-eqz v5, :cond_f6

    .line 107
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 108
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    move v12, v9

    goto/16 :goto_1c0

    .line 113
    :cond_f6
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 115
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v14, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v14, v7

    sget-object v9, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 116
    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v14, v10

    .line 114
    invoke-virtual {v5, v12, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v9, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v12, v9, v7

    .line 117
    invoke-virtual {v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v5

    .line 118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v7

    :goto_14f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_166

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 119
    invoke-virtual {v12}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v14

    add-int/2addr v9, v14

    .line 120
    invoke-virtual {v12}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v12

    add-int/2addr v4, v12

    goto :goto_14f

    .line 122
    :cond_166
    new-instance v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 123
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setYear(I)V

    const/4 v12, 0x2

    .line 124
    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v5, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setMonth(I)V

    .line 125
    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setDay(I)V

    .line 126
    invoke-virtual {v5, v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 128
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_1c0
    invoke-virtual {v8, v13, v10}, Ljava/util/Calendar;->add(II)V

    move v9, v12

    goto/16 :goto_5c

    :cond_1c6
    if-eqz v3, :cond_1c9

    .line 133
    div-int/2addr v4, v3

    :cond_1c9
    return-void
.end method

.method public getOneYearData()V
    .registers 18

    move-object/from16 v0, p0

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 204
    iget-object v2, v0, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 205
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 206
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 207
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 208
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

    const/16 v7, -0xb

    const/4 v8, 0x2

    .line 209
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 211
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->endDate:Ljava/util/Date;

    .line 213
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v1

    .line 214
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 224
    sget-object v10, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 225
    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 226
    invoke-virtual {v9, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 227
    invoke-virtual {v9, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 228
    :goto_5a
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sget-object v6, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-gtz v6, :cond_18e

    .line 229
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v12, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v2

    sget-object v13, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x5

    .line 230
    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v11

    .line 229
    invoke-virtual {v6, v10, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 230
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz v6, :cond_b6

    .line 232
    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v10

    add-int/2addr v5, v10

    .line 233
    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_124

    .line 236
    :cond_b6
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v6

    .line 237
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 238
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v12, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v2

    sget-object v13, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 239
    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v12, v11

    .line 237
    invoke-virtual {v6, v10, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    new-array v10, v11, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v12, v10, v2

    .line 240
    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v6

    .line 241
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_124

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 242
    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v12

    add-int/2addr v5, v12

    .line 243
    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_10d

    .line 246
    :cond_124
    :goto_124
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v0, v6, v10, v12}, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->isEndMonth(III)Z

    move-result v6

    if-nez v6, :cond_148

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-object v6, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v6, v12, v15

    if-nez v6, :cond_189

    :cond_148
    if-eqz v5, :cond_14c

    add-int/lit8 v3, v3, 0x1

    .line 250
    :cond_14c
    new-instance v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 251
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "%02d"

    invoke-static {v13, v12}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v6, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 254
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v2

    .line 257
    :cond_189
    invoke-virtual {v9, v14, v11}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_5a

    :cond_18e
    if-eqz v3, :cond_191

    .line 260
    div-int/2addr v4, v3

    :cond_191
    return-void
.end method

.method public getSixMonthData()V
    .registers 18

    move-object/from16 v0, p0

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "WEEK_START_DAY_INDEX"

    invoke-static {v2, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 142
    invoke-static {v3, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v4, 0xb

    const/16 v5, 0x17

    .line 144
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    const/16 v7, 0x3b

    .line 145
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 146
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    sput-object v9, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

    .line 148
    invoke-static {v5, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->setCalendarZero(Ljava/util/Calendar;)V

    .line 150
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->endDate:Ljava/util/Date;

    .line 151
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 161
    sget-object v10, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->endDate:Ljava/util/Date;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 162
    invoke-virtual {v9, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 164
    invoke-virtual {v9, v8, v7}, Ljava/util/Calendar;->set(II)V

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 165
    :goto_75
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sget-object v8, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->startDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-gtz v8, :cond_166

    .line 166
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v12, 0x2

    new-array v13, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v3

    sget-object v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v15, 0x5

    .line 167
    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v11

    .line 166
    invoke-virtual {v8, v10, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 167
    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz v8, :cond_d2

    .line 169
    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v10

    add-int/2addr v6, v10

    .line 170
    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_141

    .line 173
    :cond_d2
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v8

    .line 174
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 175
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v13, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v3

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x5

    .line 176
    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v11

    .line 174
    invoke-virtual {v8, v10, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    new-array v10, v11, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v12, v10, v3

    .line 177
    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v8

    .line 178
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_141

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 179
    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v12

    add-int/2addr v6, v12

    .line 180
    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v10

    add-int/2addr v5, v10

    goto :goto_12a

    .line 183
    :cond_141
    :goto_141
    invoke-direct {v0, v7, v9}, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->isWeeks(ILjava/util/Calendar;)Z

    move-result v8

    if-eqz v8, :cond_15e

    if-eqz v6, :cond_14b

    add-int/lit8 v4, v4, 0x1

    .line 187
    :cond_14b
    new-instance v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 188
    invoke-virtual {v0, v9}, Lcom/keephealth/android/viewmodel/main/DrinkWaterViewModel;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v8, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 191
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v3

    :cond_15e
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x5

    .line 194
    invoke-virtual {v9, v8, v11}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_75

    :cond_166
    if-eqz v4, :cond_169

    .line 197
    div-int/2addr v5, v4

    :cond_169
    return-void
.end method
