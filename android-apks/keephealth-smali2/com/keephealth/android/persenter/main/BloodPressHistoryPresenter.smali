.class public Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "BloodPressHistoryPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/persenter/sport/BaseTimePresenter<",
        "Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    return-void
.end method

.method private isWeeks(ILjava/util/Calendar;)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 275
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sget-object v1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

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

    .line 23
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->FzValue:Lorg/greenrobot/greendao/Property;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v4

    .line 27
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v2, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v2, v4

    sget-object p2, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    aput-object p2, v2, v5

    .line 30
    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 32
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast p2, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;

    invoke-interface {p2, v0, p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;->reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V

    return-void
.end method

.method public getMonthData()V
    .registers 13

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v1, 0x17

    const/16 v2, 0xb

    .line 45
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/16 v3, 0x3b

    .line 46
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 47
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 48
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    sput-object v3, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 50
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 51
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 53
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    .line 54
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    .line 56
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->AvgBloodSs:Lorg/greenrobot/greendao/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v3

    .line 57
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f2

    .line 59
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    move v2, v1

    move v4, v2

    :goto_91
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v2, :cond_a5

    .line 60
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v7

    if-ge v2, v7, :cond_a9

    .line 61
    :cond_a5
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v2

    :cond_a9
    if-eqz v4, :cond_b1

    .line 63
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v7

    if-le v4, v7, :cond_b5

    .line 64
    :cond_b1
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v4

    .line 66
    :cond_b5
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v7

    add-int/2addr v3, v7

    .line 67
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v7

    add-int/2addr v1, v7

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    goto :goto_91

    .line 70
    :cond_e2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v3, v0

    .line 71
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    div-int v0, v1, v0

    move v9, v0

    move v6, v2

    move v8, v3

    move v7, v4

    goto :goto_f6

    :cond_f2
    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    .line 73
    :goto_f6
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v4, v0

    check-cast v4, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;

    sget-object v10, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v11, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v4 .. v11}, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;->reBackMonthData(Ljava/util/List;IIIILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public getOneYearData()V
    .registers 22

    move-object/from16 v0, p0

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 186
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 187
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 188
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 189
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 190
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    sput-object v7, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    const/16 v7, -0xb

    const/4 v8, 0x2

    .line 191
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 193
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    .line 195
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    .line 197
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v10, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v9, 0x1

    new-array v10, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->AvgBloodSs:Lorg/greenrobot/greendao/Property;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v1, v7, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v7, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v10, v7, v12

    .line 198
    invoke-virtual {v1, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 199
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_203

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 209
    sget-object v10, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 210
    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v7, v6, v5}, Ljava/util/Calendar;->set(II)V

    move v2, v12

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v10, v6

    move v11, v10

    .line 213
    :goto_a3
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sget-object v13, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    cmp-long v13, v15, v17

    if-gtz v13, :cond_1b1

    .line 214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_126

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 215
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v12

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v12, v8, :cond_123

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v8

    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v12, v19, 0x1

    if-ne v8, v12, :cond_123

    .line 216
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v8

    const/4 v12, 0x5

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v8, v12, :cond_123

    .line 217
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v8

    add-int/2addr v3, v8

    .line 218
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v8

    add-int/2addr v4, v8

    if-eqz v5, :cond_f9

    .line 219
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v8

    if-ge v5, v8, :cond_fd

    .line 220
    :cond_f9
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v5

    :cond_fd
    if-eqz v10, :cond_105

    .line 222
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v8

    if-le v10, v8, :cond_109

    .line 223
    :cond_105
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v10

    :cond_109
    if-eqz v11, :cond_111

    .line 225
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v8

    if-le v11, v8, :cond_115

    .line 226
    :cond_111
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v11

    :cond_115
    if-eqz v6, :cond_11d

    .line 228
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v8

    if-ge v6, v8, :cond_121

    .line 229
    :cond_11d
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v6

    :cond_121
    add-int/lit8 v2, v2, 0x1

    :cond_123
    const/4 v8, 0x2

    const/4 v12, 0x0

    goto :goto_b9

    .line 234
    :cond_126
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v12, 0x5

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v0, v8, v13, v15}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->isEndMonth(III)Z

    move-result v8

    if-nez v8, :cond_150

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-object v8, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    cmp-long v8, v12, v19

    if-nez v8, :cond_14d

    goto :goto_150

    :cond_14d
    const/4 v8, 0x5

    const/4 v12, 0x2

    goto :goto_1aa

    :cond_150
    :goto_150
    if-eqz v2, :cond_1a1

    .line 236
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 237
    div-int/2addr v3, v2

    invoke-virtual {v8, v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "-"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v15, "%02d"

    invoke-static {v15, v13}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    .line 239
    div-int/2addr v4, v2

    invoke-virtual {v8, v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 240
    invoke-virtual {v8, v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodSs(I)V

    .line 241
    invoke-virtual {v8, v10}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodSs(I)V

    .line 242
    invoke-virtual {v8, v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodFz(I)V

    .line 243
    invoke-virtual {v8, v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodFz(I)V

    .line 244
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a2

    :cond_1a1
    const/4 v12, 0x2

    :goto_1a2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 254
    :goto_1aa
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    move v8, v12

    const/4 v12, 0x0

    goto/16 :goto_a3

    .line 256
    :cond_1b1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_203

    .line 257
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_1c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v2, :cond_1d4

    .line 258
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v5

    if-ge v2, v5, :cond_1d8

    .line 259
    :cond_1d4
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v2

    :cond_1d8
    if-eqz v3, :cond_1e0

    .line 261
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v5

    if-le v3, v5, :cond_1e4

    .line 262
    :cond_1e0
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v3

    .line 264
    :cond_1e4
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v5

    add-int/2addr v12, v5

    .line 265
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v4

    add-int v16, v16, v4

    goto :goto_1c0

    .line 267
    :cond_1f0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v12, v1

    .line 268
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    div-int v1, v16, v1

    move/from16 v18, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v12

    goto :goto_20a

    :cond_203
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 271
    :goto_20a
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v13, v1

    check-cast v13, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;

    sget-object v19, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v20, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v13 .. v20}, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;->reBackMonthData(Ljava/util/List;IIIILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public getSixMonthData()V
    .registers 21

    move-object/from16 v0, p0

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 85
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

    .line 87
    invoke-static {v4, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v3, 0xb

    const/16 v6, 0x17

    .line 89
    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    const/16 v8, 0x3b

    .line 90
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xd

    .line 91
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 92
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    sput-object v10, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    .line 93
    invoke-static {v6, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 95
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    .line 96
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    .line 98
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->AvgBloodSs:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v13, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v12, v4

    invoke-virtual {v2, v10, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v5, v11, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v10, v5, v4

    .line 99
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 100
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 102
    sget-object v10, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 103
    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 104
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 105
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->set(II)V

    if-eqz v2, :cond_1cf

    move v1, v4

    move v3, v1

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v12, v10

    .line 115
    :goto_ba
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sget-object v16, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_17e

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 117
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v4

    move-object/from16 v18, v2

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v4, v2, :cond_13b

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v11

    if-ne v2, v4, :cond_13b

    .line 118
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_13b

    .line 119
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v2

    add-int/2addr v6, v2

    .line 120
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v2

    add-int/2addr v7, v2

    if-eqz v8, :cond_111

    .line 121
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v2

    if-ge v8, v2, :cond_115

    .line 122
    :cond_111
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v8

    :cond_115
    if-eqz v9, :cond_11d

    .line 124
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v2

    if-le v9, v2, :cond_121

    .line 125
    :cond_11d
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v9

    :cond_121
    if-eqz v12, :cond_129

    .line 127
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v2

    if-le v12, v2, :cond_12d

    .line 128
    :cond_129
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v12

    :cond_12d
    if-eqz v10, :cond_135

    .line 130
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v2

    if-ge v10, v2, :cond_139

    .line 131
    :cond_135
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v10

    :cond_139
    add-int/lit8 v3, v3, 0x1

    :cond_13b
    move-object/from16 v2, v18

    const/4 v4, 0x0

    goto :goto_d0

    :cond_13f
    move-object/from16 v18, v2

    .line 136
    invoke-direct {v0, v1, v5}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->isWeeks(ILjava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_173

    if-eqz v3, :cond_16c

    .line 138
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 139
    div-int/2addr v6, v3

    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 140
    invoke-virtual {v0, v5}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    .line 141
    div-int/2addr v7, v3

    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 142
    invoke-virtual {v2, v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodSs(I)V

    .line 143
    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodSs(I)V

    .line 144
    invoke-virtual {v2, v10}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodFz(I)V

    .line 145
    invoke-virtual {v2, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodFz(I)V

    .line 146
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16c
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :cond_173
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    .line 157
    invoke-virtual {v5, v2, v11}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v2, v18

    const/4 v4, 0x0

    goto/16 :goto_ba

    .line 159
    :cond_17e
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1cf

    .line 160
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_18d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v2, :cond_1a1

    .line 161
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v6

    if-ge v2, v6, :cond_1a5

    .line 162
    :cond_1a1
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v2

    :cond_1a5
    if-eqz v3, :cond_1ad

    .line 164
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v6

    if-le v3, v6, :cond_1b1

    .line 165
    :cond_1ad
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v3

    .line 167
    :cond_1b1
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v6

    add-int/2addr v4, v6

    .line 168
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v5

    add-int v16, v16, v5

    goto :goto_18d

    .line 170
    :cond_1bd
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v4, v1

    .line 171
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    div-int v1, v16, v1

    move/from16 v17, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    goto :goto_1d5

    :cond_1cf
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 174
    :goto_1d5
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v12, v1

    check-cast v12, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;

    sget-object v18, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->startDate:Ljava/util/Date;

    sget-object v19, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v12 .. v19}, Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;->reBackMonthData(Ljava/util/List;IIIILjava/util/Date;Ljava/util/Date;)V

    return-void
.end method
