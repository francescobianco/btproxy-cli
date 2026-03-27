.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadOxygen()V
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

    .line 593
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iput-object p2, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 694
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V
    invoke-static {v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 704
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$700(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

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

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_286

    .line 597
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_286

    .line 598
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v1

    .line 599
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v2

    .line 600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_286

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/ResultHeart;

    move-object/from16 v4, p0

    .line 601
    iget-object v5, v4, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_51

    .line 603
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_oxygen"

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_51
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_8b

    .line 609
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v5

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 610
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 611
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_8e

    :cond_8b
    move v5, v8

    move v9, v5

    move v10, v9

    .line 614
    :goto_8e
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 615
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

    .line 616
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v13, v7

    .line 615
    invoke-virtual {v11, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    .line 616
    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v11

    invoke-virtual {v11}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-nez v11, :cond_cb

    .line 618
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 620
    :cond_cb
    invoke-virtual {v11, v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setYear(I)V

    .line 621
    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMonth(I)V

    .line 622
    invoke-virtual {v11, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setDay(I)V

    .line 623
    invoke-static {v5, v10, v9}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setData(J)V

    .line 624
    invoke-virtual {v11, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setIsUploaded(Z)V

    .line 625
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMax()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 626
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getMin()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 627
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getAvg()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    .line 629
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 630
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 631
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v14, v8

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 632
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v14, v7

    .line 630
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 633
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 634
    invoke-virtual {v1, v11}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->insert(Ljava/lang/Object;)J

    .line 636
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 637
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

    .line 638
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v13, v7

    .line 637
    invoke-virtual {v6, v11, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    new-array v11, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v8

    .line 639
    invoke-virtual {v6, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v6

    .line 640
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_179

    .line 641
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_17e

    .line 642
    :cond_179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 644
    :cond_17e
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_240

    .line 645
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultHeart;->getDetails()Ljava/lang/String;

    move-result-object v3

    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 646
    array-length v12, v3

    move v13, v8

    :goto_194
    if-ge v13, v12, :cond_240

    aget-object v14, v3, v13

    .line 647
    const-string v15, "\\|"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 648
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 649
    aget-object v7, v14, v8

    move-object/from16 v16, v0

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v17, v1

    .line 650
    aget-object v1, v14, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 651
    invoke-virtual {v15, v1, v5}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, v10, -0x1

    const/4 v8, 0x2

    .line 652
    invoke-virtual {v15, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 653
    invoke-virtual {v15, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 654
    invoke-virtual {v15, v1, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 655
    invoke-virtual {v15, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v8, 0x0

    .line 656
    invoke-virtual {v15, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 658
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    move-object/from16 v18, v1

    .line 659
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v1

    if-ne v1, v7, :cond_207

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v1

    if-ne v1, v0, :cond_207

    const/4 v1, 0x1

    .line 661
    aget-object v0, v14, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setOxygenValue(I)V

    goto :goto_236

    :cond_207
    const/4 v1, 0x1

    move-object/from16 v1, v18

    goto :goto_1e2

    :cond_20b
    const/4 v1, 0x1

    .line 668
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;-><init>()V

    .line 669
    invoke-virtual {v8, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setIsUploaded(Z)V

    .line 670
    invoke-virtual {v8, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setYear(I)V

    .line 671
    invoke-virtual {v8, v10}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMonth(I)V

    .line 672
    invoke-virtual {v8, v9}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDay(I)V

    .line 673
    invoke-virtual {v8, v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setHour(I)V

    .line 674
    invoke-virtual {v8, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMinute(I)V

    .line 675
    aget-object v0, v14, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setOxygenValue(I)V

    .line 676
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDate(J)V

    .line 677
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_236
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_194

    :cond_240
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 681
    invoke-interface {v6, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 682
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 683
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 684
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v3, v7

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 685
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    .line 683
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 687
    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->insertInTx(Ljava/lang/Iterable;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto/16 :goto_2a

    :cond_286
    move-object/from16 v4, p0

    return-void
.end method
