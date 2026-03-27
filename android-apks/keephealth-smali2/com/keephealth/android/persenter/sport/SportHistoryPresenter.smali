.class public Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "SportHistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/persenter/sport/BaseTimePresenter<",
        "Lcom/keephealth/android/persenter/sport/ISportHistoryView;",
        ">;"
    }
.end annotation


# instance fields
.field activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    return-void
.end method

.method private completAvg(Lcom/keephealth/android/greendao/bean/HealthActivity;Lcom/keephealth/android/greendao/bean/HealthActivity;I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p3, v0, :cond_23

    .line 238
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v0

    div-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 239
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v0

    div-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 240
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v0

    div-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 241
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result p2

    div-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    :cond_23
    return-void
.end method

.method private completeAvgFormList(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthActivity;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ">;",
            "Lcom/keephealth/android/greendao/bean/HealthActivity;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 226
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 227
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 228
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 229
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    goto :goto_4

    :cond_41
    return-void
.end method

.method private get()Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 20

    move-object/from16 v0, p0

    .line 271
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->endDate:Ljava/util/Date;

    .line 273
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v3

    .line 274
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 277
    sget-object v5, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0x17

    const/16 v6, 0xb

    .line 278
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/16 v7, 0x3b

    .line 279
    invoke-virtual {v4, v5, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 280
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 281
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 282
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v10, v0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-static {v10}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/Object;)V

    .line 288
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    .line 290
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    move v11, v2

    move v12, v3

    .line 291
    :goto_7d
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sget-object v15, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_2de

    .line 293
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v14, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    .line 299
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v2, 0x2

    .line 300
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    const/4 v3, 0x5

    .line 301
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_ad
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 305
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v2

    if-ne v2, v15, :cond_d0

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v2

    if-ne v2, v5, :cond_d0

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDay()I

    move-result v2

    if-ne v2, v6, :cond_d0

    .line 306
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d0
    const/4 v2, 0x2

    const/4 v3, 0x5

    goto :goto_ad

    .line 311
    :cond_d3
    invoke-direct {v0, v13, v14}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->completeAvgFormList(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthActivity;)V

    .line 313
    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, v0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_29d

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1ce

    const/4 v3, 0x4

    if-eq v2, v3, :cond_ef

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2d6

    .line 361
    :cond_ef
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v2

    if-lez v2, :cond_f7

    add-int/lit8 v12, v12, 0x1

    .line 364
    :cond_f7
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v2

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 365
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v2

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 366
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v2

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 367
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v2

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 369
    sget-object v3, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x0

    const/16 v13, 0xb

    .line 370
    invoke-virtual {v2, v13, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xc

    .line 371
    invoke-virtual {v2, v14, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xd

    .line 372
    invoke-virtual {v2, v13, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xe

    .line 373
    invoke-virtual {v2, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 374
    invoke-virtual {v0, v15, v8, v6}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->isEndMonth(III)Z

    move-result v3

    if-nez v3, :cond_15d

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->isDateEquals(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_15a

    goto :goto_15d

    :cond_15a
    const/4 v2, 0x5

    const/4 v3, 0x1

    goto :goto_1c6

    .line 375
    :cond_15d
    :goto_15d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    if-nez v12, :cond_176

    const/4 v12, 0x1

    .line 377
    :cond_176
    invoke-direct {v0, v2, v10, v12}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->completAvg(Lcom/keephealth/android/greendao/bean/HealthActivity;Lcom/keephealth/android/greendao/bean/HealthActivity;I)V

    .line 378
    sget-object v3, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setRemark(Ljava/lang/String;)V

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "remark:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 381
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 382
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 383
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 384
    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 385
    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 386
    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 387
    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 391
    :goto_1c6
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->add(II)V

    move v6, v3

    move v2, v14

    const/4 v3, 0x0

    goto/16 :goto_2d6

    :cond_1ce
    const/16 v2, 0xc

    .line 329
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v3

    if-lez v3, :cond_1d8

    add-int/lit8 v12, v12, 0x1

    .line 332
    :cond_1d8
    rem-int/lit8 v3, v11, 0x1e

    if-nez v3, :cond_1e9

    .line 333
    sget-object v3, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_1e9
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v3

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 336
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v3

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 337
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v3

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 338
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v3

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 339
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 341
    rem-int/lit8 v5, v11, 0x7

    if-eqz v5, :cond_232

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sget-object v3, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v3, v5, v13

    if-nez v3, :cond_230

    goto :goto_232

    :cond_230
    const/4 v3, 0x0

    goto :goto_295

    .line 342
    :cond_232
    :goto_232
    new-instance v3, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    if-nez v12, :cond_23a

    const/4 v12, 0x1

    .line 343
    :cond_23a
    invoke-direct {v0, v3, v10, v12}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->completAvg(Lcom/keephealth/android/greendao/bean/HealthActivity;Lcom/keephealth/android/greendao/bean/HealthActivity;I)V

    .line 344
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    const/4 v6, -0x6

    const/4 v8, 0x5

    .line 345
    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setRemark(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 348
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 349
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 351
    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 352
    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 353
    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 354
    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    move v12, v3

    :goto_295
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 358
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_2d6

    :cond_29d
    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 316
    rem-int/lit8 v5, v11, 0x6

    if-nez v5, :cond_2b1

    .line 317
    sget-object v5, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2b1
    sget-object v5, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setRemark(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 322
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 324
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 326
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    :goto_2d6
    move v5, v2

    move v2, v6

    const/16 v6, 0xb

    const/16 v8, 0xd

    goto/16 :goto_7d

    .line 396
    :cond_2de
    new-instance v1, Lcom/keephealth/android/model/bean/SportHistoryVo;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/SportHistoryVo;-><init>()V

    .line 397
    iput-object v7, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->datas:Ljava/util/List;

    .line 398
    iput-object v9, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->dates:Ljava/util/List;

    return-object v1
.end method

.method private getDurationByWeek()I
    .registers 6

    .line 250
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->endDate:Ljava/util/Date;

    .line 252
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v2

    .line 253
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 257
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_48

    :cond_5a
    return v2
.end method

.method private getHeart()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 17

    move-object/from16 v0, p0

    .line 446
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->endDate:Ljava/util/Date;

    .line 448
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v3

    .line 449
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 451
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 452
    sget-object v5, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 453
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 454
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-object v7, v0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-static {v7}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/Object;)V

    .line 459
    new-instance v7, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    move v8, v2

    move v9, v3

    move v10, v9

    .line 461
    :goto_66
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sget-object v13, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1ec

    .line 464
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v3

    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, 0x2

    const/4 v3, 0x5

    if-eqz v14, :cond_b0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 465
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 466
    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v2

    .line 467
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 468
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v2

    if-ne v2, v14, :cond_ac

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v2

    if-ne v2, v15, :cond_ac

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v2

    if-ne v2, v3, :cond_ac

    move-object v12, v13

    :cond_ac
    move v13, v15

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_7e

    :cond_b0
    if-nez v12, :cond_b7

    .line 473
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 475
    :cond_b7
    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v11, v0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v11

    aget v2, v2, v11

    if-eq v2, v15, :cond_1bf

    const/4 v11, 0x3

    if-eq v2, v11, :cond_131

    const/4 v11, 0x4

    if-eq v2, v11, :cond_cd

    :cond_c9
    :goto_c9
    const/4 v2, 0x0

    :goto_ca
    const/4 v11, 0x1

    goto/16 :goto_1e5

    .line 513
    :cond_cd
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v2

    if-lez v2, :cond_d5

    add-int/lit8 v9, v9, 0x1

    .line 516
    :cond_d5
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v2

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v11

    add-int/2addr v2, v11

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    if-ne v10, v13, :cond_f5

    .line 517
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v2, v11, v14

    if-nez v2, :cond_c9

    :cond_f5
    if-eqz v10, :cond_12f

    .line 519
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/16 v2, 0xc

    if-gt v8, v2, :cond_109

    .line 521
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_109
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 524
    sget-object v10, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    if-eqz v9, :cond_125

    .line 526
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v10

    div-int/2addr v10, v9

    invoke-virtual {v2, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    .line 528
    :cond_125
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 529
    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    :cond_12f
    move v10, v13

    goto :goto_c9

    .line 486
    :cond_131
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v2

    if-lez v2, :cond_139

    add-int/lit8 v9, v9, 0x1

    .line 490
    :cond_139
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v2

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v11

    add-int/2addr v2, v11

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    .line 491
    rem-int/lit8 v2, v8, 0x1e

    if-nez v2, :cond_156

    .line 492
    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_156
    rem-int/lit8 v2, v8, 0x7

    if-eqz v2, :cond_16f

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v2, v11, v13

    if-nez v2, :cond_16d

    goto :goto_16f

    :cond_16d
    const/4 v2, 0x0

    goto :goto_1e1

    .line 496
    :cond_16f
    :goto_16f
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    if-eqz v9, :cond_17e

    .line 498
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v11

    div-int/2addr v11, v9

    invoke-virtual {v2, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    .line 500
    :cond_17e
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Calendar;

    const/4 v11, -0x7

    .line 501
    invoke-virtual {v9, v3, v11}, Ljava/util/Calendar;->add(II)V

    .line 502
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 503
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 505
    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    move v9, v2

    goto :goto_1e1

    :cond_1bf
    const/4 v2, 0x0

    .line 477
    rem-int/lit8 v11, v8, 0x6

    if-nez v11, :cond_1d1

    .line 478
    sget-object v11, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_1d1
    sget-object v11, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat3:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 481
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_ca

    .line 539
    :goto_1e5
    invoke-virtual {v4, v3, v11}, Ljava/util/Calendar;->add(II)V

    move v3, v2

    move v2, v11

    goto/16 :goto_66

    :cond_1ec
    move v2, v3

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 542
    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 543
    new-instance v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/HeartRateDetailVO;-><init>()V

    .line 544
    iput-object v5, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->healthSportList:Ljava/util/List;

    .line 545
    iput-object v6, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object v3

    iput-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 547
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 548
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    move v6, v2

    move v7, v6

    .line 551
    :goto_229
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_286

    .line 552
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 553
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    const/16 v10, 0x5a0

    .line 554
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    .line 555
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 556
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 557
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v8

    add-int/2addr v7, v8

    if-nez v2, :cond_263

    .line 560
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    .line 562
    :cond_263
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    if-lez v8, :cond_26b

    add-int/lit8 v6, v6, 0x1

    .line 565
    :cond_26b
    iget v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    .line 566
    iget v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_229

    :cond_286
    if-lez v6, :cond_28b

    .line 571
    div-int/2addr v7, v6

    iput v7, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    .line 573
    :cond_28b
    iget-object v2, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v4, v2, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 574
    iput-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public getByType()V
    .registers 13

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mView.getByType...1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrtt5"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/keephealth/android/model/bean/SportHistoryVo;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/SportHistoryVo;-><init>()V

    .line 30
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 32
    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    .line 34
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_58

    .line 35
    iput-object v4, v0, Lcom/keephealth/android/model/bean/SportHistoryVo;->monthDatas:Ljava/util/List;

    .line 36
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v1, Lcom/keephealth/android/persenter/sport/ISportHistoryView;

    invoke-interface {v1, v0}, Lcom/keephealth/android/persenter/sport/ISportHistoryView;->getByType(Lcom/keephealth/android/model/bean/SportHistoryVo;)V

    return-void

    :cond_58
    move v2, v6

    .line 39
    :goto_59
    iget-object v5, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_83

    .line 40
    iget-object v5, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_68
    if-le v5, v2, :cond_80

    .line 41
    iget-object v7, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_7d

    .line 42
    iget-object v7, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7d
    add-int/lit8 v5, v5, -0x1

    goto :goto_68

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 47
    :cond_83
    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    iput-object v2, v0, Lcom/keephealth/android/model/bean/SportHistoryVo;->allDatas:Ljava/util/List;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v5, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v7, "-"

    if-ne v5, v3, :cond_e3

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v4

    .line 56
    iget-object v5, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v5

    .line 57
    new-instance v8, Lcom/keephealth/android/model/bean/HealthMonthActivity;

    invoke-direct {v8}, Lcom/keephealth/android/model/bean/HealthMonthActivity;-><init>()V

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setStMonth(Ljava/lang/String;)V

    .line 59
    iget-object v4, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v8, v3}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setHealthActivities(Ljava/util/List;)V

    .line 61
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23f

    :cond_e3
    move-object v5, v4

    move v8, v6

    move v9, v8

    .line 63
    :goto_e6
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_23f

    if-nez v6, :cond_13b

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v5, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v5

    .line 67
    iget-object v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v8

    .line 68
    new-instance v9, Lcom/keephealth/android/model/bean/HealthMonthActivity;

    invoke-direct {v9}, Lcom/keephealth/android/model/bean/HealthMonthActivity;-><init>()V

    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setStMonth(Ljava/lang/String;)V

    .line 70
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_135
    move v11, v8

    move v8, v5

    move-object v5, v9

    move v9, v11

    goto/16 :goto_23b

    .line 71
    :cond_13b
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    if-ne v6, v10, :cond_1c6

    .line 72
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v10

    if-ne v10, v8, :cond_173

    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    .line 73
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v10

    if-ne v10, v9, :cond_173

    .line 74
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v5, v4}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setHealthActivities(Ljava/util/List;)V

    .line 76
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23b

    .line 78
    :cond_173
    invoke-virtual {v5, v4}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setHealthActivities(Ljava/util/List;)V

    .line 79
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v5, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v5

    .line 82
    iget-object v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v8

    .line 83
    new-instance v9, Lcom/keephealth/android/model/bean/HealthMonthActivity;

    invoke-direct {v9}, Lcom/keephealth/android/model/bean/HealthMonthActivity;-><init>()V

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setStMonth(Ljava/lang/String;)V

    .line 85
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v9, v4}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setHealthActivities(Ljava/util/List;)V

    .line 87
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_135

    .line 90
    :cond_1c6
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v10

    if-ne v10, v8, :cond_1ee

    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    .line 91
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v10

    if-ne v10, v9, :cond_1ee

    .line 92
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23b

    .line 94
    :cond_1ee
    invoke-virtual {v5, v4}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setHealthActivities(Ljava/util/List;)V

    .line 95
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v5, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v5

    .line 98
    iget-object v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v8

    .line 99
    new-instance v9, Lcom/keephealth/android/model/bean/HealthMonthActivity;

    invoke-direct {v9}, Lcom/keephealth/android/model/bean/HealthMonthActivity;-><init>()V

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/keephealth/android/model/bean/HealthMonthActivity;->setStMonth(Ljava/lang/String;)V

    .line 101
    iget-object v10, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->activityList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_135

    :goto_23b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e6

    .line 107
    :cond_23f
    :goto_23f
    iput-object v2, v0, Lcom/keephealth/android/model/bean/SportHistoryVo;->monthDatas:Ljava/util/List;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mView.getByType...2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v1, Lcom/keephealth/android/persenter/sport/ISportHistoryView;

    invoke-interface {v1, v0}, Lcom/keephealth/android/persenter/sport/ISportHistoryView;->getByType(Lcom/keephealth/android/model/bean/SportHistoryVo;)V

    return-void
.end method

.method public getDetail()Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 12

    .line 113
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->currentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "detailTimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DetailTimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/keephealth/android/model/bean/SportHistoryVo;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/SportHistoryVo;-><init>()V

    .line 116
    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x18

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_67

    if-eq v2, v4, :cond_62

    const/4 v0, 0x3

    if-eq v2, v0, :cond_62

    const/4 v0, 0x4

    if-eq v2, v0, :cond_62

    goto/16 :goto_16b

    .line 155
    :cond_62
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->get()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object v0

    return-object v0

    .line 118
    :cond_67
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->year:I

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->month:I

    .line 120
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v4, v5

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->day:I

    .line 121
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v4, v6

    .line 119
    invoke-virtual {v0, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v2, v5

    .line 122
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0x19

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v5

    :goto_b3
    if-ge v4, v3, :cond_146

    .line 126
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_be
    :goto_be
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_117

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 128
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHour()I

    move-result v9

    if-ne v9, v4, :cond_be

    .line 129
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v9

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 130
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v9

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 131
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v9

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 132
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v9

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 133
    iget v9, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->year:I

    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setYear(I)V

    .line 134
    iget v9, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->month:I

    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMonth(I)V

    .line 135
    iget v9, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->day:I

    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDay(I)V

    .line 136
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHour()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHour(I)V

    goto :goto_be

    .line 139
    :cond_117
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 140
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 141
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v7

    div-int/lit8 v7, v7, 0x3c

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMinute(I)V

    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02d:00"

    invoke-static {v8, v7}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setRemark(Ljava/lang/String;)V

    .line 143
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b3

    .line 145
    :cond_146
    iput-object v2, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->datas:Ljava/util/List;

    .line 146
    iget-object v0, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->dates:Ljava/util/List;

    const-string v2, "00:00"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->dates:Ljava/util/List;

    const-string v2, "06:00"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->dates:Ljava/util/List;

    const-string v2, "12:00"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->dates:Ljava/util/List;

    const-string v2, "18:00"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->dates:Ljava/util/List;

    const-string v2, "23:59"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_16b
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    move v0, v5

    :goto_171
    if-ge v0, v3, :cond_199

    move v2, v5

    .line 160
    :goto_174
    iget-object v4, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_196

    .line 161
    iget-object v4, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->datas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 162
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 163
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_174

    :cond_196
    add-int/lit8 v0, v0, 0x1

    goto :goto_171

    .line 169
    :cond_199
    iget-object v0, v1, Lcom/keephealth/android/model/bean/SportHistoryVo;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 2

    .line 191
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 192
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getDetail()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object p1

    return-object p1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 3

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;

    .line 182
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getDetail()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object p1

    return-object p1
.end method

.method public getDetailNext(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 2

    .line 196
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->nextDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 197
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getDetail()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object p1

    return-object p1
.end method

.method public getDetailPre(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 2

    .line 201
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 202
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getDetail()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object p1

    return-object p1
.end method

.method public getHeartDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 11

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->currentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "detailTimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DetailTimeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 585
    new-instance v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/HeartRateDetailVO;-><init>()V

    .line 586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    iput-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->healthSportList:Ljava/util/List;

    .line 588
    sget-object v2, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_60

    if-eq v2, v3, :cond_5b

    const/4 v1, 0x3

    if-eq v2, v1, :cond_5b

    const/4 v1, 0x4

    if-eq v2, v1, :cond_5b

    goto/16 :goto_127

    .line 618
    :cond_5b
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeart()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0

    .line 590
    :cond_60
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->year:I

    .line 592
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v9, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->month:I

    .line 593
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v4

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v9, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->day:I

    .line 594
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v5

    .line 592
    invoke-virtual {v2, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v6, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v4

    .line 595
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 596
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b7

    .line 598
    iget-object v6, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    :cond_b7
    iget-object v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    const-string v6, "00:00"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    const-string v6, "06:00"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    const-string v6, "12:00"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    const-string v6, "18:00"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    const-string v6, "23:59"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v2

    .line 606
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->year:I

    .line 607
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->month:I

    .line 608
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v3, v4

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->day:I

    .line 609
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v3, v5

    .line 607
    invoke-virtual {v2, v6, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 610
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_127

    .line 612
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_127
    :goto_127
    move v1, v4

    move v2, v1

    .line 622
    :goto_129
    iget-object v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_174

    .line 623
    iget-object v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 624
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 625
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 626
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    if-lez v6, :cond_154

    add-int/lit8 v1, v1, 0x1

    .line 630
    :cond_154
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 631
    iget v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    .line 632
    iget v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_129

    :cond_174
    if-lez v1, :cond_179

    .line 636
    div-int/2addr v2, v1

    iput v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    .line 638
    :cond_179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 639
    iget-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 640
    iget-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    return-object v0
.end method

.method public getHeartDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 416
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 417
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeartDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getHeartDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 3

    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;

    .line 408
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeartDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getHeartDetailNext(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 421
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->nextDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 422
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeartDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getHeartDetailPre(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 426
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 427
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeartDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getHeartOneMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 579
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->setOneMonth()V

    .line 580
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeart()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getHeartSixMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 431
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->setSixMonth()V

    .line 432
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeart()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getHeartYearMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 436
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->setYear()V

    .line 437
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getHeart()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getOneMonth()Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 2

    .line 215
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->setOneMonth()V

    .line 216
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->get()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object v0

    return-object v0
.end method

.method public getSixMonth()Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->setSixMonth()V

    .line 207
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->get()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object v0

    return-object v0
.end method

.method public getTotalDurationByWeek()I
    .registers 2

    .line 210
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->setOneWeek()V

    .line 211
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->getDurationByWeek()I

    move-result v0

    return v0
.end method

.method public getYearMonth()Lcom/keephealth/android/model/bean/SportHistoryVo;
    .registers 2

    .line 220
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->setYear()V

    .line 221
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/SportHistoryPresenter;->get()Lcom/keephealth/android/model/bean/SportHistoryVo;

    move-result-object v0

    return-object v0
.end method
