.class Lcom/keephealth/android/persenter/mine/AccountPresenter$8;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/AccountPresenter;->downloadTemp()V
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
        "Lcom/keephealth/android/ui/mine/bean/ResultTemp;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V
    .registers 3

    .line 802
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$8;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$8;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 873
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 883
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$8;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1700(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultTemp;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 805
    iget-object v1, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$8;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resultTemps:"

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

    if-eqz v1, :cond_21f

    .line 808
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_21f

    .line 809
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v2

    .line 810
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object v3

    .line 811
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/mine/bean/ResultTemp;

    .line 812
    iget-object v5, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$8;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_73

    .line 814
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_temp"

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_73
    new-instance v5, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;-><init>()V

    .line 817
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getAvg()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    .line 821
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v11, 0x0

    if-nez v6, :cond_c1

    .line 822
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v6

    const-string v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 823
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 824
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_c4

    :cond_c1
    move v6, v11

    move v12, v6

    move v13, v12

    .line 826
    :goto_c4
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setYear(I)V

    .line 827
    invoke-virtual {v5, v13}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setMonth(I)V

    .line 828
    invoke-virtual {v5, v12}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDay(I)V

    .line 829
    invoke-static {v6, v13, v12}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDate(J)V

    .line 830
    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setIsUploaded(Z)V

    .line 831
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 832
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v9, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 833
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v11

    sget-object v7, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 834
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v10

    .line 832
    invoke-virtual {v14, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 835
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 836
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->insert(Ljava/lang/Object;)J

    .line 837
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 838
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDetails()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1dd

    .line 839
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDetails()Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 840
    array-length v7, v4

    move v8, v11

    :goto_138
    if-ge v8, v7, :cond_1dd

    aget-object v9, v4, v8

    .line 841
    new-instance v14, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-direct {v14}, Lcom/keephealth/android/greendao/bean/TempInfo;-><init>()V

    .line 842
    const-string v15, "\\|"

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 843
    aget-object v15, v9, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v12

    int-to-double v11, v15

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v11, v11, v17

    invoke-static {v11, v12, v10}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    .line 844
    invoke-virtual {v14, v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->setYear(I)V

    .line 845
    invoke-virtual {v14, v13}, Lcom/keephealth/android/greendao/bean/TempInfo;->setMonth(I)V

    move/from16 v11, v19

    .line 846
    invoke-virtual {v14, v11}, Lcom/keephealth/android/greendao/bean/TempInfo;->setDay(I)V

    const/16 v12, 0xf

    .line 847
    invoke-virtual {v14, v12}, Lcom/keephealth/android/greendao/bean/TempInfo;->setOffTime(I)V

    .line 848
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 849
    invoke-virtual {v12, v10, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v15, v13, -0x1

    const/4 v10, 0x2

    .line 850
    invoke-virtual {v12, v10, v15}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x5

    .line 851
    invoke-virtual {v12, v10, v11}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x0

    .line 852
    aget-object v15, v9, v10

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v20, v1

    const/16 v1, 0xb

    invoke-virtual {v12, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 853
    aget-object v1, v9, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x1

    aget-object v1, v1, v15

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v15, 0xc

    invoke-virtual {v12, v15, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 854
    invoke-virtual {v12, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 855
    aget-object v1, v9, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->setHour(I)V

    .line 856
    aget-object v1, v9, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->setMinute(I)V

    .line 857
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->setDate(J)V

    .line 858
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move v12, v11

    move-object/from16 v1, v20

    const/4 v11, 0x0

    goto/16 :goto_138

    :cond_1dd
    move-object/from16 v20, v1

    move v11, v12

    .line 861
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 862
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 863
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 864
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 862
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 866
    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->insertInTx(Ljava/lang/Iterable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto/16 :goto_4e

    :cond_21f
    return-void
.end method
