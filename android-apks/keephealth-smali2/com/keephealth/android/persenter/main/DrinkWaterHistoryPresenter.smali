.class public Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "DrinkWaterHistoryPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/persenter/sport/BaseTimePresenter<",
        "Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    return-void
.end method

.method private isWeeks(ILjava/util/Calendar;)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 273
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sget-object v1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

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

    .line 31
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 33
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

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 32
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v5

    .line 35
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x18

    if-lez v1, :cond_e4

    .line 37
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v1

    .line 38
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

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v2, v6

    .line 38
    invoke-virtual {v1, v4, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz v1, :cond_96

    .line 42
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v1

    goto :goto_97

    :cond_96
    move v1, v5

    .line 44
    :goto_97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    :goto_9d
    if-ge v4, v3, :cond_dc

    .line 46
    new-instance v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    .line 47
    invoke-virtual {v6, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    .line 48
    invoke-virtual {v6, p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    .line 49
    invoke-virtual {v6, p3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    .line 50
    invoke-virtual {v6, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    .line 51
    invoke-virtual {v6, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 52
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

    .line 53
    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getHour()I

    move-result v9

    if-ne v9, v4, :cond_b7

    .line 54
    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v9

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v8

    add-int/2addr v9, v8

    invoke-virtual {v6, v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    goto :goto_b7

    .line 57
    :cond_d6
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    .line 59
    :cond_dc
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;

    invoke-interface {p1, v0, v2, v1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;->reBackDayData(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_111

    .line 61
    :cond_e4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_ea
    if-ge v1, v3, :cond_109

    .line 63
    new-instance v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    .line 64
    invoke-virtual {v2, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    .line 65
    invoke-virtual {v2, p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    .line 66
    invoke-virtual {v2, p3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    .line 67
    invoke-virtual {v2, v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    .line 68
    invoke-virtual {v2, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 69
    invoke-virtual {v2, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    .line 72
    :cond_109
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0, v5}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;->reBackDayData(Ljava/util/List;Ljava/util/List;I)V

    :goto_111
    return-void
.end method

.method public getMonthData()V
    .registers 18

    move-object/from16 v0, p0

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 80
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 81
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 82
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    const/4 v7, 0x0

    .line 84
    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 86
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v8, -0x1

    const/4 v9, 0x2

    .line 87
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 88
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    .line 89
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v1

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 91
    sget-object v10, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 92
    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 94
    invoke-virtual {v8, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 95
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v2, v7

    move v13, v2

    .line 100
    :goto_5c
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sget-object v5, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1cc

    .line 101
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v6, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v6, v7

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x5

    .line 102
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v6, v5

    .line 101
    invoke-virtual {v3, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    .line 103
    const-string v4, "-"

    const-string v6, "%02d"

    if-eqz v3, :cond_fc

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 105
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v4

    add-int/2addr v13, v4

    .line 107
    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v3

    if-lez v3, :cond_f9

    add-int/lit8 v2, v2, 0x1

    :cond_f9
    move v10, v9

    goto/16 :goto_1c6

    .line 112
    :cond_fc
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 114
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

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

    .line 115
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v14, v5

    .line 113
    invoke-virtual {v3, v10, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v9, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v10, v9, v7

    .line 116
    invoke-virtual {v3, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v3

    .line 117
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v9, v7

    :goto_155
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 118
    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v14

    add-int/2addr v9, v14

    .line 119
    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v10

    add-int/2addr v13, v10

    goto :goto_155

    .line 121
    :cond_16c
    new-instance v3, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 122
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setYear(I)V

    const/4 v10, 0x2

    .line 123
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v5

    invoke-virtual {v3, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setMonth(I)V

    .line 124
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setDay(I)V

    .line 125
    invoke-virtual {v3, v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 127
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_1c6
    invoke-virtual {v8, v11, v5}, Ljava/util/Calendar;->add(II)V

    move v9, v10

    goto/16 :goto_5c

    :cond_1cc
    if-eqz v2, :cond_1d0

    .line 132
    div-int v7, v13, v2

    :cond_1d0
    move v14, v7

    .line 134
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v11, v1

    check-cast v11, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;

    sget-object v15, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v16, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v11 .. v16}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;->reBackMonthData(Ljava/util/List;IILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public getOneYearData()V
    .registers 16

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/16 v1, 0xb

    const/16 v2, 0x17

    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    const/16 v4, 0x3b

    .line 210
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 211
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    sput-object v6, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    const/16 v6, -0xb

    const/4 v7, 0x2

    .line 213
    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 215
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    .line 217
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v0

    .line 218
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 228
    sget-object v8, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 230
    invoke-virtual {v6, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 231
    invoke-virtual {v6, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v10, v3

    .line 232
    :goto_58
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sget-object v8, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    cmp-long v4, v4, v11

    if-gtz v4, :cond_190

    .line 233
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v11, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v1

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x5

    .line 234
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v8

    .line 233
    invoke-virtual {v4, v5, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 234
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz v4, :cond_bc

    .line 236
    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v5

    add-int/2addr v3, v5

    .line 237
    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v5

    add-int/2addr v10, v5

    .line 238
    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v4

    if-lez v4, :cond_12a

    add-int/lit8 v2, v2, 0x1

    goto :goto_12a

    .line 243
    :cond_bc
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 245
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v11, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v1

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 246
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v8

    .line 244
    invoke-virtual {v4, v5, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v5, v8, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v11, v5, v1

    .line 247
    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v4

    .line 248
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_113
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 249
    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v11

    add-int/2addr v3, v11

    .line 250
    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v5

    add-int/2addr v10, v5

    goto :goto_113

    .line 253
    :cond_12a
    :goto_12a
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {p0, v4, v5, v11}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->isEndMonth(III)Z

    move-result v4

    if-nez v4, :cond_14e

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v11, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    cmp-long v4, v4, v11

    if-nez v4, :cond_18b

    .line 257
    :cond_14e
    new-instance v4, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v4}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "-"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%02d"

    invoke-static {v12, v11}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 261
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    .line 264
    :cond_18b
    invoke-virtual {v6, v13, v8}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_58

    :cond_190
    if-eqz v2, :cond_196

    .line 267
    div-int v0, v10, v2

    move v11, v0

    goto :goto_197

    :cond_196
    move v11, v1

    .line 269
    :goto_197
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v8, v0

    check-cast v8, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;

    sget-object v12, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v13, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v8 .. v13}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;->reBackMonthData(Ljava/util/List;IILjava/util/Date;Ljava/util/Date;)V

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
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

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

    sput-object v9, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    .line 148
    invoke-static {v5, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 150
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    .line 151
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v1

    .line 152
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 161
    sget-object v9, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 162
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 164
    invoke-virtual {v2, v8, v7}, Ljava/util/Calendar;->set(II)V

    move v4, v3

    move v5, v4

    move v6, v5

    move v11, v6

    .line 165
    :goto_75
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sget-object v9, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v7, v7, v12

    if-gtz v7, :cond_16a

    .line 166
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v12, 0x2

    new-array v13, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v3

    sget-object v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v15, 0x5

    .line 167
    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v9

    .line 166
    invoke-virtual {v7, v8, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 167
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz v7, :cond_da

    .line 169
    invoke-virtual {v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v8

    add-int/2addr v5, v8

    .line 170
    invoke-virtual {v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v8

    add-int/2addr v11, v8

    .line 171
    invoke-virtual {v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v7

    if-lez v7, :cond_149

    add-int/lit8 v4, v4, 0x1

    goto :goto_149

    .line 176
    :cond_da
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v7

    .line 177
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 178
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v13, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v3

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x5

    .line 179
    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v9

    .line 177
    invoke-virtual {v7, v8, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    new-array v8, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v12, v8, v3

    .line 180
    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v7

    .line 181
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_132
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_149

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 182
    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v12

    add-int/2addr v5, v12

    .line 183
    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v8

    add-int/2addr v11, v8

    goto :goto_132

    .line 186
    :cond_149
    :goto_149
    invoke-direct {v0, v6, v2}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->isWeeks(ILjava/util/Calendar;)Z

    move-result v7

    if-eqz v7, :cond_162

    .line 190
    new-instance v7, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v7}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 191
    invoke-virtual {v0, v2}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v7, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 194
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    :cond_162
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    .line 197
    invoke-virtual {v2, v7, v9}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_75

    :cond_16a
    if-eqz v4, :cond_16e

    .line 200
    div-int v3, v11, v4

    :cond_16e
    move v12, v3

    .line 202
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v9, v1

    check-cast v9, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;

    sget-object v13, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v14, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v9 .. v14}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryContract$View;->reBackMonthData(Ljava/util/List;IILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method
