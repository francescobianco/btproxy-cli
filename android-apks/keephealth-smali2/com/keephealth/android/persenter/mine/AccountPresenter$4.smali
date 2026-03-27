.class Lcom/keephealth/android/persenter/mine/AccountPresenter$4;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/AccountPresenter;->downloadHeart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/ui/mine/bean/ResultHeart;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V
    .registers 3

    .line 293
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$4;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$4;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 366
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$4;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1300(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultHeart;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 296
    iget-object v1, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$4;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resultHearts:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FFF432f"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_216

    .line 299
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_216

    .line 300
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v2

    .line 301
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v3

    .line 302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_216

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/mine/bean/ResultHeart;

    .line 303
    iget-object v5, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$4;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_73

    .line 305
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_heart"

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_73
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 308
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMax()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMaxHr(I)V

    .line 309
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMin()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMinHr(I)V

    .line 310
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getAvg()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 314
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_c7

    .line 315
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v6

    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 316
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 317
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_ca

    :cond_c7
    move v6, v9

    move v10, v6

    move v11, v10

    .line 319
    :goto_ca
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setYear(I)V

    .line 320
    invoke-virtual {v5, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMonth(I)V

    .line 321
    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDay(I)V

    .line 322
    invoke-static {v6, v11, v10}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    .line 323
    invoke-virtual {v5, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setIsUploaded(Z)V

    .line 324
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 325
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 326
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v14, v9

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 327
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v14, v8

    .line 325
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 328
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 329
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->insert(Ljava/lang/Object;)J

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d5

    .line 332
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 333
    array-length v7, v4

    move v12, v9

    :goto_13e
    if-ge v12, v7, :cond_1d5

    aget-object v13, v4, v12

    .line 334
    new-instance v14, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 335
    const-string v15, "\\|"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 336
    aget-object v15, v13, v8

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 337
    invoke-virtual {v14, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setYear(I)V

    .line 338
    invoke-virtual {v14, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMonth(I)V

    .line 339
    invoke-virtual {v14, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDay(I)V

    const/16 v15, 0xf

    .line 340
    invoke-virtual {v14, v15}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 342
    invoke-virtual {v15, v8, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v8, v11, -0x1

    const/4 v9, 0x2

    .line 343
    invoke-virtual {v15, v9, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    .line 344
    invoke-virtual {v15, v8, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x0

    .line 345
    aget-object v9, v13, v8

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v17, v1

    const/16 v1, 0xb

    invoke-virtual {v15, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 346
    aget-object v1, v13, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0xc

    invoke-virtual {v15, v9, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 347
    invoke-virtual {v15, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 348
    aget-object v1, v13, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHour(I)V

    .line 349
    aget-object v1, v13, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMinuter(I)V

    .line 350
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDate(J)V

    .line 351
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_13e

    :cond_1d5
    move-object/from16 v17, v1

    .line 354
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 356
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 357
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 355
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 359
    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->insertInTx(Ljava/lang/Iterable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_4e

    :cond_216
    return-void
.end method
