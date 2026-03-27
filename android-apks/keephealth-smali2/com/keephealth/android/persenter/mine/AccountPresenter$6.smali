.class Lcom/keephealth/android/persenter/mine/AccountPresenter$6;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/AccountPresenter;->downloadOxygen()V
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

    .line 531
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$6;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$6;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 634
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$6;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccess()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$6;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1500(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultHearts3:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FDD3fd22"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2bb

    .line 536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2bb

    .line 537
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v1

    .line 538
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v2

    .line 539
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/ResultHeart;

    move-object/from16 v4, p0

    .line 540
    iget-object v5, v4, Lcom/keephealth/android/persenter/mine/AccountPresenter$6;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_6e

    .line 542
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_oxygen"

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_6e
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_a8

    .line 548
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v5

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 549
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 550
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_ab

    :cond_a8
    move v5, v8

    move v9, v5

    move v10, v9

    .line 553
    :goto_ab
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 554
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

    .line 555
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v7

    .line 554
    invoke-virtual {v11, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    .line 555
    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v11

    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-nez v11, :cond_e8

    .line 557
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 559
    :cond_e8
    invoke-virtual {v11, v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setYear(I)V

    .line 560
    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMonth(I)V

    .line 561
    invoke-virtual {v11, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setDay(I)V

    .line 562
    invoke-static {v5, v10, v9}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setData(J)V

    .line 563
    invoke-virtual {v11, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setIsUploaded(Z)V

    .line 564
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMax()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 565
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMin()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 566
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getAvg()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    .line 568
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 569
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 570
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v14, v8

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 571
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v14, v7

    .line 569
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 572
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 573
    invoke-virtual {v1, v11}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->insert(Ljava/lang/Object;)J

    .line 575
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 576
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

    .line 577
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v7

    .line 576
    invoke-virtual {v6, v11, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    new-array v11, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v8

    .line 578
    invoke-virtual {v6, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v6

    .line 579
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_196

    .line 580
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_19b

    .line 581
    :cond_196
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 583
    :cond_19b
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_25d

    .line 584
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v3

    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 585
    array-length v12, v3

    move v13, v8

    :goto_1b1
    if-ge v13, v12, :cond_25d

    aget-object v14, v3, v13

    .line 586
    const-string v15, "\\|"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 587
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 588
    aget-object v7, v14, v8

    move-object/from16 v16, v0

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v17, v1

    .line 589
    aget-object v1, v14, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 590
    invoke-virtual {v15, v1, v5}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, v10, -0x1

    const/4 v8, 0x2

    .line 591
    invoke-virtual {v15, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 592
    invoke-virtual {v15, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 593
    invoke-virtual {v15, v1, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 594
    invoke-virtual {v15, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v8, 0x0

    .line 595
    invoke-virtual {v15, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 597
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ff
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_228

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    move-object/from16 v18, v1

    .line 598
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v1

    if-ne v1, v7, :cond_224

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v1

    if-ne v1, v0, :cond_224

    const/4 v1, 0x1

    .line 600
    aget-object v0, v14, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setOxygenValue(I)V

    goto :goto_253

    :cond_224
    const/4 v1, 0x1

    move-object/from16 v1, v18

    goto :goto_1ff

    :cond_228
    const/4 v1, 0x1

    .line 607
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;-><init>()V

    .line 608
    invoke-virtual {v8, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setIsUploaded(Z)V

    .line 609
    invoke-virtual {v8, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setYear(I)V

    .line 610
    invoke-virtual {v8, v10}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMonth(I)V

    .line 611
    invoke-virtual {v8, v9}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDay(I)V

    .line 612
    invoke-virtual {v8, v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setHour(I)V

    .line 613
    invoke-virtual {v8, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMinute(I)V

    .line 614
    aget-object v0, v14, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setOxygenValue(I)V

    .line 615
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDate(J)V

    .line 616
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_253
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1b1

    :cond_25d
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 620
    invoke-interface {v6, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 622
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 623
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v3, v7

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 624
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    .line 622
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63d2\u51653\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF3232"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->insertInTx(Ljava/lang/Iterable;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto/16 :goto_47

    :cond_2bb
    move-object/from16 v4, p0

    return-void
.end method
