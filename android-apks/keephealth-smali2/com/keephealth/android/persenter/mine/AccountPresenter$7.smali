.class Lcom/keephealth/android/persenter/mine/AccountPresenter$7;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/AccountPresenter;->downloadSleep()V
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
        "Lcom/keephealth/android/ui/mine/bean/ResultSleep;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V
    .registers 3

    .line 661
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$7;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$7;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onfail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GGG4433"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$7;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1600(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultSleep;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 664
    iget-object v1, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$7;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadSleep:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GGG4433"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_300

    .line 667
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_300

    .line 668
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v2

    .line 669
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v3

    .line 670
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_300

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/mine/bean/ResultSleep;

    .line 671
    iget-object v5, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$7;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_73

    .line 673
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_sleep"

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_73
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 676
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getBeginDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 677
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getAwakeDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 678
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getLightDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 679
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getDeepDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 680
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getRemDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 686
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_d5

    .line 687
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getDateTime()Ljava/lang/String;

    move-result-object v6

    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 688
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 689
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getDateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_d8

    :cond_d5
    move v6, v8

    move v10, v6

    move v11, v10

    .line 691
    :goto_d8
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setYear(I)V

    .line 692
    invoke-virtual {v5, v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setMonth(I)V

    .line 693
    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDay(I)V

    .line 694
    invoke-static {v6, v11, v10}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDate(J)V

    .line 695
    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setIsUploaded(Z)V

    .line 696
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 697
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 698
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v14, v8

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 699
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v14, v9

    .line 697
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 700
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 701
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->insert(Ljava/lang/Object;)J

    .line 702
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 703
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 704
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getDetails()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2f4

    .line 705
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultSleep;->getDetails()Ljava/lang/String;

    move-result-object v4

    const-string v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 707
    invoke-virtual {v12, v9, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v13, v11, -0x1

    const/4 v14, 0x2

    .line 708
    invoke-virtual {v12, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v14, 0x5

    .line 709
    invoke-virtual {v12, v14, v10}, Ljava/util/Calendar;->set(II)V

    move v15, v8

    .line 710
    :goto_161
    array-length v14, v4

    if-ge v15, v14, :cond_203

    .line 711
    aget-object v14, v4, v15

    .line 712
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    .line 713
    const-string v0, "\\|"

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 714
    aget-object v14, v0, v8

    move-object/from16 v17, v1

    const-string v1, ":"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v18, v2

    .line 715
    aget-object v2, v0, v8

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 716
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    const/16 v0, 0xa

    .line 717
    invoke-virtual {v9, v0}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    const/16 v0, 0xb

    .line 718
    invoke-virtual {v12, v0, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 719
    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 720
    invoke-virtual {v12, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 721
    invoke-virtual {v9, v14}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 722
    invoke-virtual {v9, v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    const/16 v0, 0x15

    if-lt v14, v0, :cond_1e1

    add-int/lit8 v0, v10, -0x1

    const/4 v1, 0x5

    .line 724
    invoke-virtual {v12, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 725
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    const/4 v0, 0x1

    .line 726
    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    const/4 v1, 0x2

    .line 727
    invoke-virtual {v12, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v9, v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    const/4 v0, 0x5

    .line 728
    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 729
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f8

    :cond_1e1
    const/4 v0, 0x5

    .line 731
    invoke-virtual {v12, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 732
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 733
    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 734
    invoke-virtual {v9, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 735
    invoke-virtual {v9, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 736
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    const/4 v9, 0x1

    goto/16 :goto_161

    :cond_203
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 739
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 740
    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 741
    invoke-virtual {v0, v2, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 742
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v4, v10, -0x1

    .line 743
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x15

    const/16 v4, 0xb

    .line 744
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 745
    invoke-virtual {v0, v2, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 746
    invoke-virtual {v0, v2, v8}, Ljava/util/Calendar;->set(II)V

    .line 747
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 748
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v9, 0x3

    new-array v11, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x2

    .line 749
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v8

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v14, 0x5

    .line 750
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v11, v1

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v12, 0x15

    .line 751
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v12, 0x2

    aput-object v0, v11, v12

    .line 748
    invoke-virtual {v2, v4, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 753
    invoke-virtual {v3, v7}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 755
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 756
    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 757
    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 758
    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    .line 759
    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 760
    invoke-virtual {v0, v2, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 761
    invoke-virtual {v0, v2, v8}, Ljava/util/Calendar;->set(II)V

    .line 762
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 763
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v6, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v9, 0x2

    .line 764
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x5

    .line 765
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v6, v1

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v1, 0xb

    .line 766
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    .line 763
    invoke-virtual {v2, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 768
    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_2f8

    :cond_2f4
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    :goto_2f8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_4e

    :cond_300
    return-void
.end method
