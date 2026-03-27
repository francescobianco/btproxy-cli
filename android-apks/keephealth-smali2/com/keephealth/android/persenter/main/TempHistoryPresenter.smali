.class public Lcom/keephealth/android/persenter/main/TempHistoryPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "TempHistoryPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/TempHistoryContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/persenter/sport/BaseTimePresenter<",
        "Lcom/keephealth/android/persenter/main/TempHistoryContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/TempHistoryContract$Presenter;"
    }
.end annotation


# instance fields
.field private endDate:Ljava/util/Date;

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    return-void
.end method

.method private isWeeks(ILjava/util/Calendar;)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 308
    rem-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

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
    .registers 22

    move-object/from16 v0, p0

    .line 27
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 30
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 29
    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v3, v8, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v3, v7

    .line 31
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 32
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "list:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v5, 0x0

    if-nez v3, :cond_b6

    move v1, v7

    :goto_73
    const/16 v2, 0x18

    if-ge v1, v2, :cond_b1

    .line 41
    new-instance v2, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;-><init>()V

    .line 42
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->setHour(I)V

    .line 43
    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/bean/TempInfo;->setMinute(I)V

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%02d"

    invoke-static {v4, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->setRemark(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, v5, v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    .line 46
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_b1
    move-wide v11, v5

    move-wide v13, v11

    move-wide v15, v13

    goto/16 :goto_1ce

    :cond_b6
    move-wide v11, v5

    move v3, v7

    move v9, v3

    .line 49
    :goto_b9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_f5

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 51
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempInfo;->getOffTime()I

    move-result v14

    invoke-virtual {v0, v3, v14}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getDayRemark(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/keephealth/android/greendao/bean/TempInfo;->setRemark(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v14

    const-wide/high16 v16, 0x4040000000000000L    # 32.0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_ec

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v14

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_ec

    add-int/lit8 v9, v9, 0x1

    .line 54
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v14

    add-double/2addr v11, v14

    goto :goto_ef

    .line 56
    :cond_ec
    invoke-virtual {v13, v5, v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    .line 58
    :goto_ef
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    :cond_f5
    if-nez v9, :cond_f8

    move v9, v8

    :cond_f8
    int-to-double v2, v9

    div-double/2addr v11, v2

    .line 61
    invoke-static {v11, v12, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v2

    .line 63
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v9

    sget-object v11, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 64
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v12, 0x3

    new-array v13, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v7

    sget-object v14, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 65
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v8

    sget-object v14, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v5, v15}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v13, v4

    .line 64
    invoke-virtual {v9, v11, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v9, v8, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    aput-object v11, v9, v7

    .line 66
    invoke-virtual {v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_164

    .line 67
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_164

    .line 68
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v13

    goto :goto_166

    :cond_164
    const-wide/16 v13, 0x0

    .line 71
    :goto_166
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 72
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v9, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v7

    sget-object v11, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 73
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v8

    sget-object v11, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v12, v6}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v9, v4

    .line 72
    invoke-virtual {v1, v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v4, v8, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v7

    .line 74
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1cb

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1cb

    .line 76
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v4

    move-wide v11, v2

    move-wide v15, v4

    goto :goto_1ce

    :cond_1cb
    move-wide v11, v2

    const-wide/16 v15, 0x0

    .line 79
    :goto_1ce
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v9, v1

    check-cast v9, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;

    invoke-interface/range {v9 .. v16}, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;->reBackDayData(Ljava/util/List;DDD)V

    return-void
.end method

.method public getMonthData()V
    .registers 22

    move-object/from16 v0, p0

    .line 86
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v2, 0x17

    const/16 v3, 0xb

    .line 95
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    const/16 v4, 0x3b

    .line 96
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 97
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 98
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 100
    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 102
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 103
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    .line 104
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v5, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    .line 106
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

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

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 107
    invoke-virtual {v1, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 108
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 110
    iget-object v7, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz v1, :cond_171

    move v9, v4

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 112
    :goto_96
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    iget-object v4, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v4, v16, v18

    if-gtz v4, :cond_16c

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ac
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_126

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    .line 115
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v7

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v7, v3, :cond_123

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v3

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v7, v20, 0x1

    if-ne v3, v7, :cond_123

    .line 116
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v3

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_123

    .line 118
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmpl-double v2, v2, v18

    if-lez v2, :cond_123

    add-int/lit8 v9, v9, 0x1

    .line 120
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    add-double/2addr v14, v2

    .line 121
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-lez v2, :cond_f8

    .line 122
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    move-wide v10, v2

    :cond_f8
    const-wide/16 v2, 0x0

    cmpl-double v4, v12, v2

    if-nez v4, :cond_104

    .line 125
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    :goto_102
    move-wide v12, v2

    goto :goto_111

    .line 127
    :cond_104
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    cmpg-double v2, v2, v12

    if-gez v2, :cond_111

    .line 128
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    goto :goto_102

    .line 131
    :cond_111
    :goto_111
    sget-object v2, Lcom/keephealth/android/util/DateUtil;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setRemark(Ljava/lang/String;)V

    .line 132
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_127

    :cond_123
    const/4 v2, 0x1

    const/4 v3, 0x2

    goto :goto_ac

    :cond_126
    const/4 v2, 0x0

    :goto_127
    if-nez v2, :cond_15e

    .line 139
    new-instance v2, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;-><init>()V

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setRemark(Ljava/lang/String;)V

    move-object v3, v5

    const-wide/16 v4, 0x0

    .line 141
    invoke-virtual {v2, v4, v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    .line 142
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_162

    :cond_15e
    move-object v3, v5

    const-wide/16 v4, 0x0

    const/4 v7, 0x5

    :goto_162
    const/4 v8, 0x1

    .line 145
    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    move-object v5, v3

    move v2, v8

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_96

    :cond_16c
    move v8, v2

    move v4, v9

    move-wide v9, v10

    move-wide v11, v12

    goto :goto_178

    :cond_171
    move v8, v2

    const-wide/16 v4, 0x0

    move-wide v9, v4

    move-wide v11, v9

    move-wide v14, v11

    const/4 v4, 0x0

    :goto_178
    if-nez v4, :cond_17b

    move v4, v8

    :cond_17b
    int-to-double v1, v4

    div-double/2addr v14, v1

    .line 149
    invoke-static {v14, v15, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v13

    .line 150
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;

    iget-object v7, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    iget-object v8, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v5 .. v14}, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;->reBackMonthData(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;DDD)V

    return-void
.end method

.method public getOneYearData()V
    .registers 27

    move-object/from16 v0, p0

    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 241
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0xb

    const/16 v3, 0x17

    .line 242
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0x3b

    .line 243
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 244
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 245
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iput-object v7, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    const/16 v7, -0xb

    const/4 v8, 0x2

    .line 246
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 248
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    .line 249
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v9, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    .line 251
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

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

    sget-object v11, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v9

    .line 252
    invoke-virtual {v1, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 253
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1ac

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 258
    iget-object v14, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 259
    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 260
    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 261
    invoke-virtual {v10, v6, v5}, Ljava/util/Calendar;->set(II)V

    move v6, v9

    move/from16 v16, v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v17, 0x0

    .line 262
    :goto_9b
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    iget-object v9, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    cmp-long v9, v19, v21

    if-gtz v9, :cond_1a5

    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v23, v16

    :goto_b3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_fc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    .line 264
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v12

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v12, v8, :cond_f6

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v8

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v22

    add-int/lit8 v12, v22, 0x1

    if-ne v8, v12, :cond_f6

    .line 265
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v8

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v8, v12, :cond_f6

    .line 266
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v24

    const-wide/16 v19, 0x0

    cmpl-double v8, v24, v19

    if-lez v8, :cond_f6

    move/from16 v8, v23

    add-int/lit8 v23, v8, 0x1

    .line 268
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v12

    add-double v17, v17, v12

    goto :goto_fa

    :cond_f6
    move/from16 v8, v23

    move/from16 v23, v8

    :goto_fa
    const/4 v8, 0x2

    goto :goto_b3

    :cond_fc
    move/from16 v8, v23

    .line 272
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v9, v13, v7}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->isEndMonth(III)Z

    move-result v7

    if-nez v7, :cond_12d

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    iget-object v7, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    cmp-long v7, v12, v23

    if-nez v7, :cond_125

    goto :goto_12d

    :cond_125
    move-object v13, v1

    move/from16 v16, v8

    const-wide/16 v0, 0x0

    const/4 v7, 0x5

    const/4 v12, 0x1

    goto :goto_19a

    .line 273
    :cond_12d
    :goto_12d
    new-instance v7, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-direct {v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;-><init>()V

    if-eqz v8, :cond_17e

    int-to-double v8, v8

    div-double v8, v17, v8

    move-object v13, v1

    const/4 v12, 0x1

    .line 275
    invoke-static {v8, v9, v12}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    add-int/lit8 v6, v6, 0x1

    add-double/2addr v14, v8

    .line 278
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14f

    .line 279
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v2

    :cond_14f
    const-wide/16 v0, 0x0

    cmpl-double v8, v4, v0

    if-nez v8, :cond_15a

    .line 282
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v4

    goto :goto_166

    .line 284
    :cond_15a
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_166

    .line 285
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v4

    .line 288
    :cond_166
    :goto_166
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYM:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setRemark(Ljava/lang/String;)V

    const/16 v0, 0x78

    .line 289
    invoke-virtual {v7, v0}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setOffSet(I)V

    .line 290
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    goto :goto_194

    :cond_17e
    move-object v13, v1

    const-wide/16 v0, 0x0

    .line 292
    invoke-virtual {v7, v0, v1}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    .line 293
    sget-object v8, Lcom/keephealth/android/util/DateUtil;->formatYM:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setRemark(Ljava/lang/String;)V

    .line 294
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_194
    move-wide/from16 v17, v0

    const/4 v7, 0x5

    const/4 v12, 0x1

    const/16 v16, 0x0

    .line 299
    :goto_19a
    invoke-virtual {v10, v7, v12}, Ljava/util/Calendar;->add(II)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v7, v12

    move-object v1, v13

    goto/16 :goto_9b

    :cond_1a5
    move v12, v7

    move-wide/from16 v16, v4

    move v9, v6

    move-wide v0, v14

    move-wide v14, v2

    goto :goto_1b3

    :cond_1ac
    move v12, v7

    const-wide/16 v0, 0x0

    move-wide v14, v0

    move-wide/from16 v16, v14

    const/4 v9, 0x0

    :goto_1b3
    if-nez v9, :cond_1b6

    move v9, v12

    :cond_1b6
    int-to-double v2, v9

    div-double/2addr v0, v2

    .line 303
    invoke-static {v0, v1, v12}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v18

    move-object/from16 v0, p0

    .line 304
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v10, v1

    check-cast v10, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;

    iget-object v12, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    iget-object v13, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v10 .. v19}, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;->reBackMonthData(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;DDD)V

    return-void
.end method

.method public getSixMonthData()V
    .registers 27

    move-object/from16 v0, p0

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 161
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 162
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

    .line 164
    invoke-static {v4, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 165
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    const/16 v3, 0xb

    const/16 v5, 0x17

    .line 166
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    const/16 v7, 0x3b

    .line 167
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 168
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 169
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    .line 170
    invoke-static {v5, v2}, Lcom/keephealth/android/util/ProDbUtils;->getWeekStartDate(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 172
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    .line 173
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    iget-object v10, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    .line 175
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

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

    sget-object v11, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v4

    .line 176
    invoke-virtual {v2, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 177
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 179
    iget-object v12, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 180
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 182
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->set(II)V

    if-eqz v2, :cond_19a

    move v1, v4

    move v3, v1

    const-wide/16 v7, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v17, 0x0

    .line 187
    :goto_b9
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    iget-object v5, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v19, v5

    if-gtz v5, :cond_193

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_cf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_119

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    .line 189
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v9

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v9, v5, :cond_113

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v5

    const/4 v9, 0x2

    invoke-virtual {v10, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v2

    if-ne v5, v9, :cond_113

    .line 190
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v2

    const/4 v5, 0x5

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_113

    .line 191
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v24

    const-wide/16 v20, 0x0

    cmpl-double v2, v24, v20

    if-lez v2, :cond_113

    add-int/lit8 v3, v3, 0x1

    .line 193
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v5

    add-double v17, v17, v5

    :cond_113
    move-object/from16 v2, v22

    move-object/from16 v5, v23

    const/4 v9, 0x1

    goto :goto_cf

    :cond_119
    move-object/from16 v22, v2

    .line 197
    invoke-direct {v0, v4, v10}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->isWeeks(ILjava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 198
    new-instance v2, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;-><init>()V

    if-eqz v3, :cond_16f

    int-to-double v5, v3

    div-double v5, v17, v5

    move-object/from16 v23, v10

    const/4 v3, 0x1

    .line 200
    invoke-static {v5, v6, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    add-int/lit8 v1, v1, 0x1

    add-double/2addr v14, v5

    .line 203
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v5

    cmpl-double v3, v5, v7

    if-lez v3, :cond_144

    .line 204
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v7

    :cond_144
    const-wide/16 v5, 0x0

    cmpl-double v3, v12, v5

    if-nez v3, :cond_14f

    .line 207
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v12

    goto :goto_15b

    .line 209
    :cond_14f
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v5

    cmpg-double v3, v5, v12

    if-gez v3, :cond_15b

    .line 210
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v12

    :cond_15b
    :goto_15b
    move-object/from16 v5, v23

    .line 213
    invoke-virtual {v0, v5}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setRemark(Ljava/lang/String;)V

    const/16 v3, 0x3c

    .line 214
    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setOffSet(I)V

    .line 215
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x0

    goto :goto_17f

    :cond_16f
    move-object v5, v10

    const-wide/16 v9, 0x0

    .line 217
    invoke-virtual {v2, v9, v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    .line 218
    invoke-virtual {v0, v5}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setRemark(Ljava/lang/String;)V

    .line 219
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17f
    move-wide/from16 v17, v9

    const/4 v3, 0x0

    goto :goto_186

    :cond_183
    move-object v5, v10

    const-wide/16 v9, 0x0

    :goto_186
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x5

    .line 225
    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->add(II)V

    move v9, v2

    move-object v10, v5

    move-object/from16 v2, v22

    goto/16 :goto_b9

    :cond_193
    move v2, v9

    move v4, v1

    move-wide/from16 v16, v12

    move-wide v5, v14

    move-wide v14, v7

    goto :goto_1a2

    :cond_19a
    move v2, v9

    const-wide/16 v9, 0x0

    move-wide v5, v9

    move-wide v14, v5

    move-wide/from16 v16, v14

    const/4 v4, 0x0

    :goto_1a2
    if-nez v4, :cond_1a5

    move v4, v2

    :cond_1a5
    int-to-double v3, v4

    div-double/2addr v5, v3

    .line 229
    invoke-static {v5, v6, v2}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v18

    .line 230
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    move-object v10, v1

    check-cast v10, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;

    iget-object v12, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->startDate:Ljava/util/Date;

    iget-object v13, v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-interface/range {v10 .. v19}, Lcom/keephealth/android/persenter/main/TempHistoryContract$View;->reBackMonthData(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;DDD)V

    return-void
.end method
