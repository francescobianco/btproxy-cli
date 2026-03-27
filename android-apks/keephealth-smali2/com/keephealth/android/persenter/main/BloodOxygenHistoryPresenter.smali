.class public Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "BloodOxygenHistoryPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/persenter/sport/BaseTimePresenter<",
        "Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    return-void
.end method

.method private isWeeks(ILjava/util/Calendar;)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 313
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sget-object v1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

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
    .registers 11

    .line 25
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 27
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v5

    .line 29
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v2, v5

    sget-object p2, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v2, v6

    .line 32
    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SIZE:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GFF3f2"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_c2

    move p2, v5

    :goto_aa
    const/16 p3, 0x18

    if-ge p2, p3, :cond_c2

    .line 37
    new-instance p3, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-direct {p3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;-><init>()V

    .line 38
    invoke-virtual {p3, p2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setHour(I)V

    .line 39
    invoke-virtual {p3, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMinute(I)V

    .line 40
    invoke-virtual {p3, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setOxygenValue(I)V

    .line 41
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_aa

    .line 44
    :cond_c2
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast p2, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;

    invoke-interface {p2, v0, p1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;->reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V

    return-void
.end method

.method public getMonthData()V
    .registers 21

    move-object/from16 v0, p0

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 56
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 57
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 58
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    const/4 v7, 0x0

    .line 59
    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 60
    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v8, -0x1

    const/4 v9, 0x2

    .line 62
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 63
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    sput-object v8, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    .line 64
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v8

    .line 65
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    .line 66
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v11, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v8, v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v7

    .line 67
    invoke-virtual {v8, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v8

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 69
    sget-object v12, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 71
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 72
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 73
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :goto_91
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v3, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-string v2, "-"

    if-gtz v1, :cond_10f

    .line 76
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 77
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v5

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_a9

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v5

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v10

    if-ne v5, v6, :cond_a9

    .line 78
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v5

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_a9

    .line 80
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 85
    :cond_d9
    new-instance v1, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 88
    invoke-virtual {v1, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 89
    invoke-virtual {v1, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    .line 90
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_10b
    invoke-virtual {v11, v4, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_91

    .line 96
    :cond_10f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18e

    .line 97
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v7

    move v4, v3

    move v5, v4

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v3, :cond_130

    .line 98
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    if-ge v3, v8, :cond_13a

    .line 99
    :cond_130
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    if-eqz v8, :cond_13a

    .line 100
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v3

    :cond_13a
    if-eqz v4, :cond_142

    .line 103
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    if-le v4, v8, :cond_14c

    .line 104
    :cond_142
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    if-eqz v8, :cond_14c

    .line 105
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    .line 108
    :cond_14c
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    add-int/2addr v5, v8

    .line 109
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    if-lez v8, :cond_159

    add-int/lit8 v7, v7, 0x1

    .line 112
    :cond_159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    goto :goto_11c

    :cond_17a
    if-nez v7, :cond_17d

    goto :goto_17e

    :cond_17d
    move v10, v7

    :goto_17e
    int-to-float v1, v5

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v1, v2

    int-to-float v2, v10

    div-float/2addr v1, v2

    .line 115
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v7

    goto :goto_193

    :cond_18e
    move v15, v7

    move/from16 v16, v15

    move/from16 v17, v16

    .line 117
    :goto_193
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v13, v1

    check-cast v13, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;

    sget-object v18, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v19, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v13 .. v19}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;->reBackMonthData(Ljava/util/List;IIILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public getOneYearData()V
    .registers 19

    move-object/from16 v0, p0

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 227
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 228
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 229
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 230
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 231
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    const/16 v7, -0xb

    const/4 v8, 0x2

    .line 232
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 233
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 234
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    .line 236
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    .line 238
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v10, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

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

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v9

    .line 239
    invoke-virtual {v1, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 240
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1d5

    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 247
    sget-object v12, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 248
    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 249
    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {v10, v6, v5}, Ljava/util/Calendar;->set(II)V

    move v2, v9

    move v3, v2

    move v4, v3

    move v5, v4

    .line 251
    :goto_94
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-object v6, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v6, v12, v14

    if-gtz v6, :cond_184

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_aa
    :goto_aa
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x5

    if-eqz v12, :cond_108

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 253
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v14

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-ne v14, v15, :cond_aa

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v14

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v7

    if-ne v14, v15, :cond_aa

    .line 254
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v14

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v14, v13, :cond_aa

    .line 255
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v13

    add-int/2addr v3, v13

    if-eqz v4, :cond_e3

    .line 256
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v13

    if-ge v4, v13, :cond_ed

    .line 257
    :cond_e3
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v13

    if-eqz v13, :cond_ed

    .line 258
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    :cond_ed
    if-eqz v5, :cond_f5

    .line 261
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v13

    if-le v5, v13, :cond_ff

    .line 262
    :cond_f5
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v13

    if-eqz v13, :cond_ff

    .line 263
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v5

    .line 266
    :cond_ff
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v12

    if-lez v12, :cond_aa

    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 271
    :cond_108
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v0, v6, v12, v14}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->isEndMonth(III)Z

    move-result v6

    if-nez v6, :cond_12c

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sget-object v6, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v6, v14, v16

    if-nez v6, :cond_17f

    .line 272
    :cond_12c
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "%02d"

    invoke-static {v15, v14}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    if-eqz v2, :cond_16f

    .line 275
    invoke-virtual {v6, v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 276
    invoke-virtual {v6, v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 277
    div-int/2addr v3, v2

    invoke-virtual {v6, v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    goto :goto_178

    .line 279
    :cond_16f
    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 280
    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 281
    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    .line 283
    :goto_178
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v9

    move v3, v2

    move v4, v3

    move v5, v4

    .line 289
    :cond_17f
    invoke-virtual {v10, v13, v7}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_94

    .line 292
    :cond_184
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d5

    .line 293
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v9

    move v3, v2

    move v4, v3

    :cond_191
    :goto_191
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v2, :cond_1a5

    .line 294
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v6

    if-ge v2, v6, :cond_1a9

    .line 295
    :cond_1a5
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v2

    :cond_1a9
    if-eqz v3, :cond_1b1

    .line 297
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v6

    if-le v3, v6, :cond_1b5

    .line 298
    :cond_1b1
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v3

    .line 300
    :cond_1b5
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v6

    add-int/2addr v4, v6

    .line 301
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v5

    if-lez v5, :cond_191

    add-int/lit8 v9, v9, 0x1

    goto :goto_191

    :cond_1c3
    if-nez v9, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    move v7, v9

    :goto_1c7
    int-to-float v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v1, v4

    int-to-float v4, v7

    div-float/2addr v1, v4

    .line 306
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v12, v2

    move v13, v3

    move v14, v9

    goto :goto_1d8

    :cond_1d5
    move v12, v9

    move v13, v12

    move v14, v13

    .line 309
    :goto_1d8
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v10, v1

    check-cast v10, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;

    sget-object v15, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v16, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v10 .. v16}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;->reBackMonthData(Ljava/util/List;IIILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public getSixMonthData()V
    .registers 18

    move-object/from16 v0, p0

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 127
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

    .line 129
    invoke-static {v4, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v3, 0xb

    const/16 v5, 0x17

    .line 131
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    const/16 v7, 0x3b

    .line 132
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 133
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 134
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    sput-object v9, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    .line 135
    invoke-static {v5, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 137
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    .line 138
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    .line 140
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    sget-object v11, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

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

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v4

    .line 141
    invoke-virtual {v2, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 142
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 144
    sget-object v12, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 145
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 146
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 148
    const-string v1, "FFSD232"

    if-eqz v2, :cond_1e7

    move v3, v4

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    .line 154
    :goto_b1
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-object v14, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gtz v12, :cond_156

    .line 155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x5

    if-eqz v13, :cond_11b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 156
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v15

    invoke-virtual {v10, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v15, v4, :cond_119

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v4

    const/4 v15, 0x2

    invoke-virtual {v10, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v9

    if-ne v4, v15, :cond_119

    .line 157
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v4

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v4, v14, :cond_119

    .line 158
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    add-int/2addr v8, v4

    if-eqz v6, :cond_101

    .line 159
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    if-ge v6, v4, :cond_105

    .line 160
    :cond_101
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v6

    :cond_105
    if-eqz v7, :cond_10d

    .line 162
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    if-le v7, v4, :cond_111

    .line 163
    :cond_10d
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v7

    .line 165
    :cond_111
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    if-lez v4, :cond_119

    add-int/lit8 v5, v5, 0x1

    :cond_119
    const/4 v4, 0x0

    goto :goto_c7

    .line 170
    :cond_11b
    invoke-direct {v0, v3, v10}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->isWeeks(ILjava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_14d

    .line 171
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 172
    invoke-virtual {v0, v10}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    if-eqz v5, :cond_13b

    .line 174
    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 175
    invoke-virtual {v4, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 176
    div-int/2addr v8, v5

    invoke-virtual {v4, v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    const/4 v12, 0x0

    goto :goto_145

    :cond_13b
    const/4 v12, 0x0

    .line 178
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 179
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 180
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    .line 182
    :goto_145
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v12

    move v6, v5

    move v7, v6

    move v8, v7

    goto :goto_14e

    :cond_14d
    const/4 v12, 0x0

    :goto_14e
    add-int/lit8 v3, v3, 0x1

    .line 189
    invoke-virtual {v10, v14, v9}, Ljava/util/Calendar;->add(II)V

    move v4, v12

    goto/16 :goto_b1

    :cond_156
    move v12, v4

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1e8

    .line 194
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v12

    move v4, v3

    move v5, v4

    :cond_17a
    :goto_17a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v12, :cond_18e

    .line 195
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v7

    if-ge v12, v7, :cond_198

    .line 196
    :cond_18e
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v7

    if-eqz v7, :cond_198

    .line 197
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v12

    :cond_198
    if-eqz v3, :cond_1a0

    .line 201
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v7

    if-le v3, v7, :cond_1aa

    .line 202
    :cond_1a0
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v7

    if-eqz v7, :cond_1aa

    .line 203
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v3

    .line 206
    :cond_1aa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --===-- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v7

    add-int/2addr v5, v7

    .line 208
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v6

    if-lez v6, :cond_17a

    add-int/lit8 v4, v4, 0x1

    goto :goto_17a

    :cond_1d6
    if-nez v4, :cond_1d9

    goto :goto_1da

    :cond_1d9
    move v9, v4

    :goto_1da
    int-to-float v2, v5

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v2, v4

    int-to-float v4, v9

    div-float/2addr v2, v4

    .line 213
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v13, v3

    move v14, v4

    goto :goto_1ea

    :cond_1e7
    move v12, v4

    :cond_1e8
    move v13, v12

    move v14, v13

    .line 216
    :goto_1ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -6666 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v10, v1

    check-cast v10, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;

    sget-object v15, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v16, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v10 .. v16}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;->reBackMonthData(Ljava/util/List;IIILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method
