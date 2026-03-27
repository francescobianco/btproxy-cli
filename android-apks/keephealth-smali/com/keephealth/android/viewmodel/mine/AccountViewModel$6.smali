.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadBlood()V
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

    .line 460
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iput-object p2, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 569
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 579
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$600(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 21
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

    .line 463
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2b9

    .line 465
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b9

    .line 466
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v2

    .line 467
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v3

    .line 468
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/mine/bean/ResultHeart;

    .line 469
    iget-object v5, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_56

    .line 471
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_blood"

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_56
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_90

    .line 477
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v5

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 478
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 479
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_93

    :cond_90
    move v5, v8

    move v9, v5

    move v10, v9

    .line 482
    :goto_93
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 483
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v13, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v8

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 484
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v7

    .line 483
    invoke-virtual {v11, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    .line 484
    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v11

    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-nez v11, :cond_d0

    .line 486
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 488
    :cond_d0
    invoke-virtual {v11, v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setYear(I)V

    .line 489
    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMonth(I)V

    .line 490
    invoke-virtual {v11, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setDay(I)V

    .line 491
    invoke-static {v5, v10, v9}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setData(J)V

    .line 492
    invoke-virtual {v11, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setIsUploaded(Z)V

    .line 493
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMaxDBP()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodFz(I)V

    .line 494
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMinDBP()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodFz(I)V

    .line 495
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getAvgDBP()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 496
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMaxSBP()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodSs(I)V

    .line 497
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMinSBP()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodSs(I)V

    .line 498
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getAvgSBP()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 499
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 500
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 501
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v14, v8

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 502
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v14, v7

    .line 500
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 503
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 504
    invoke-virtual {v2, v11}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->insert(Ljava/lang/Object;)J

    .line 506
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 507
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v8

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 508
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v7

    .line 507
    invoke-virtual {v6, v11, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    new-array v11, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v8

    .line 509
    invoke-virtual {v6, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v6

    .line 510
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_193

    .line 511
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_198

    .line 512
    :cond_193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 514
    :cond_198
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_26d

    .line 515
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v4

    const-string v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 516
    array-length v12, v4

    move v13, v8

    :goto_1ae
    if-ge v13, v12, :cond_26d

    aget-object v14, v4, v13

    .line 517
    const-string v15, "\\|"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 519
    aget-object v7, v14, v8

    move-object/from16 v16, v1

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v17, v2

    .line 520
    aget-object v2, v14, v8

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 521
    invoke-virtual {v15, v2, v5}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v2, v10, -0x1

    const/4 v8, 0x2

    .line 522
    invoke-virtual {v15, v8, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 523
    invoke-virtual {v15, v2, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    .line 524
    invoke-virtual {v15, v2, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 525
    invoke-virtual {v15, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v8, 0x0

    .line 526
    invoke-virtual {v15, v2, v8}, Ljava/util/Calendar;->set(II)V

    .line 528
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    move-object/from16 v18, v2

    .line 529
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v2

    if-ne v2, v7, :cond_22b

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v2

    if-ne v2, v1, :cond_22b

    const/4 v2, 0x1

    .line 531
    aget-object v1, v14, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setFzValue(I)V

    const/4 v1, 0x2

    .line 532
    aget-object v2, v14, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setSsValue(I)V

    goto :goto_263

    :cond_22b
    move-object/from16 v2, v18

    goto :goto_1fc

    .line 539
    :cond_22e
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;-><init>()V

    const/4 v8, 0x1

    .line 540
    invoke-virtual {v2, v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setIsUploaded(Z)V

    .line 541
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setYear(I)V

    .line 542
    invoke-virtual {v2, v10}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMonth(I)V

    .line 543
    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDay(I)V

    .line 544
    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setHour(I)V

    .line 545
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMinute(I)V

    .line 546
    aget-object v1, v14, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setFzValue(I)V

    const/4 v1, 0x2

    .line 547
    aget-object v7, v14, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setSsValue(I)V

    .line 548
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDate(J)V

    .line 549
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_263
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1ae

    :cond_26d
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 553
    invoke-interface {v6, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 554
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 555
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 556
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 557
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 555
    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 558
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 559
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->insertInTx(Ljava/lang/Iterable;)V

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_31

    .line 561
    :cond_2b3
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadOxygen()V

    goto :goto_2be

    .line 563
    :cond_2b9
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    invoke-virtual {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadOxygen()V

    :goto_2be
    return-void
.end method
