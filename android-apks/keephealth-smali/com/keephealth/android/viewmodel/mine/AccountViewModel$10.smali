.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadTemp()V
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
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V
    .registers 3

    .line 999
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iput-object p2, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 1069
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 1079
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$1000(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

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

    .line 1002
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    .line 1003
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_202

    .line 1004
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_202

    .line 1005
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v2

    .line 1006
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object v3

    .line 1007
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_202

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/mine/bean/ResultTemp;

    .line 1008
    iget-object v5, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_56

    .line 1010
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "update_time_temp"

    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_56
    new-instance v5, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;-><init>()V

    .line 1013
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getAvg()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    .line 1017
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v11, 0x0

    if-nez v6, :cond_a4

    .line 1018
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v6

    const-string v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1019
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1020
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDateTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_a7

    :cond_a4
    move v6, v11

    move v12, v6

    move v13, v12

    .line 1022
    :goto_a7
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setYear(I)V

    .line 1023
    invoke-virtual {v5, v13}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setMonth(I)V

    .line 1024
    invoke-virtual {v5, v12}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDay(I)V

    .line 1025
    invoke-static {v6, v13, v12}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDate(J)V

    .line 1026
    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setIsUploaded(Z)V

    .line 1027
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1028
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v9, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1029
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v11

    sget-object v7, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1030
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v10

    .line 1028
    invoke-virtual {v14, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    .line 1031
    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 1032
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->insert(Ljava/lang/Object;)J

    .line 1033
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDetails()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c0

    .line 1035
    invoke-virtual {v4}, Lcom/keephealth/android/ui/mine/bean/ResultTemp;->getDetails()Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1036
    array-length v7, v4

    move v8, v11

    :goto_11b
    if-ge v8, v7, :cond_1c0

    aget-object v9, v4, v8

    .line 1037
    new-instance v14, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-direct {v14}, Lcom/keephealth/android/greendao/bean/TempInfo;-><init>()V

    .line 1038
    const-string v15, "\\|"

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1039
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

    .line 1040
    invoke-virtual {v14, v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->setYear(I)V

    .line 1041
    invoke-virtual {v14, v13}, Lcom/keephealth/android/greendao/bean/TempInfo;->setMonth(I)V

    move/from16 v11, v19

    .line 1042
    invoke-virtual {v14, v11}, Lcom/keephealth/android/greendao/bean/TempInfo;->setDay(I)V

    const/16 v12, 0xf

    .line 1043
    invoke-virtual {v14, v12}, Lcom/keephealth/android/greendao/bean/TempInfo;->setOffTime(I)V

    .line 1044
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1045
    invoke-virtual {v12, v10, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v15, v13, -0x1

    const/4 v10, 0x2

    .line 1046
    invoke-virtual {v12, v10, v15}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x5

    .line 1047
    invoke-virtual {v12, v10, v11}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x0

    .line 1048
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

    .line 1049
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

    .line 1050
    invoke-virtual {v12, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 1051
    aget-object v1, v9, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->setHour(I)V

    .line 1052
    aget-object v1, v9, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->setMinute(I)V

    .line 1053
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/keephealth/android/greendao/bean/TempInfo;->setDate(J)V

    .line 1054
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move v12, v11

    move-object/from16 v1, v20

    const/4 v11, 0x0

    goto/16 :goto_11b

    :cond_1c0
    move-object/from16 v20, v1

    move v11, v12

    .line 1057
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1058
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1059
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1060
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 1058
    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 1062
    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->insertInTx(Ljava/lang/Iterable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto/16 :goto_31

    :cond_202
    return-void
.end method
