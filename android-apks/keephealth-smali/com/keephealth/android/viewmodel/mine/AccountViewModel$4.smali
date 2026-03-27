.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadHeart()V
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
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V
    .registers 3

    .line 265
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iput-object p2, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 338
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$400(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

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

    .line 268
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 270
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u83b7\u53d6\u5fc3\u7387\u6570\u636e"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_209

    .line 271
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_209

    .line 272
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v2

    .line 273
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v3

    .line 274
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_209

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/mine/bean/ResultHeart;

    .line 275
    iget-object v5, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_66

    .line 277
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_heart"

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_66
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 280
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMax()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMaxHr(I)V

    .line 281
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMin()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMinHr(I)V

    .line 282
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getAvg()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 286
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_ba

    .line 287
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v6

    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 288
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 289
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_bd

    :cond_ba
    move v6, v9

    move v10, v6

    move v11, v10

    .line 291
    :goto_bd
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setYear(I)V

    .line 292
    invoke-virtual {v5, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMonth(I)V

    .line 293
    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDay(I)V

    .line 294
    invoke-static {v6, v11, v10}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    .line 295
    invoke-virtual {v5, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setIsUploaded(Z)V

    .line 296
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 297
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 298
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v14, v9

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 299
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v14, v8

    .line 297
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 300
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 301
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->insert(Ljava/lang/Object;)J

    .line 302
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c8

    .line 304
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 305
    array-length v7, v4

    move v12, v9

    :goto_131
    if-ge v12, v7, :cond_1c8

    aget-object v13, v4, v12

    .line 306
    new-instance v14, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 307
    const-string v15, "\\|"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 308
    aget-object v15, v13, v8

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 309
    invoke-virtual {v14, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setYear(I)V

    .line 310
    invoke-virtual {v14, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMonth(I)V

    .line 311
    invoke-virtual {v14, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDay(I)V

    const/16 v15, 0xf

    .line 312
    invoke-virtual {v14, v15}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 314
    invoke-virtual {v15, v8, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v8, v11, -0x1

    const/4 v9, 0x2

    .line 315
    invoke-virtual {v15, v9, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    .line 316
    invoke-virtual {v15, v8, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x0

    .line 317
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

    .line 318
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

    .line 319
    invoke-virtual {v15, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 320
    aget-object v1, v13, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHour(I)V

    .line 321
    aget-object v1, v13, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMinuter(I)V

    .line 322
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDate(J)V

    .line 323
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_131

    :cond_1c8
    move-object/from16 v17, v1

    .line 326
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 327
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 328
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 329
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 327
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 331
    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->insertInTx(Ljava/lang/Iterable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto/16 :goto_41

    :cond_209
    return-void
.end method
