.class Lcom/keephealth/android/persenter/mine/AccountPresenter$9;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/AccountPresenter;->downloadSport()V
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
        "Lcom/keephealth/android/ui/mine/bean/ResultSport;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V
    .registers 3

    .line 899
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$9;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$9;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 1014
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 1024
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$9;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1800(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultSport;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 902
    iget-object v1, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$9;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    .line 903
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sport_result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FFF432fde"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2c5

    .line 905
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2c5

    .line 906
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v2

    .line 907
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/ResultSport;

    .line 908
    iget-object v4, v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$9;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getUpdateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_67

    .line 910
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "update_time_sport"

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_67
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_cb

    .line 919
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDateTime()Ljava/lang/String;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 920
    aget-object v8, v4, v7

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 921
    aget-object v10, v4, v7

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 922
    aget-object v11, v4, v7

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 923
    aget-object v11, v4, v6

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 924
    aget-object v13, v4, v6

    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v6

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 925
    aget-object v4, v4, v6

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_d1

    :cond_cb
    move v4, v7

    move v8, v4

    move v9, v8

    move v10, v9

    move v11, v10

    move v13, v11

    .line 927
    :goto_d1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 928
    invoke-virtual {v12, v6, v8}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v14, v10, -0x1

    .line 929
    invoke-virtual {v12, v5, v14}, Ljava/util/Calendar;->set(II)V

    const/4 v14, 0x5

    .line 930
    invoke-virtual {v12, v14, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xb

    .line 931
    invoke-virtual {v12, v14, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xc

    .line 932
    invoke-virtual {v12, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xd

    .line 933
    invoke-virtual {v12, v14, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xe

    .line 934
    invoke-virtual {v12, v14, v7}, Ljava/util/Calendar;->set(II)V

    .line 936
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v14

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v15, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v14, v5, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthActivity;

    if-nez v5, :cond_42

    .line 938
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    .line 939
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getCalories()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 940
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDistance()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 941
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getStep()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 942
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getSportType()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setType(I)V

    .line 943
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getHeartRate()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvg_hr_value(I)V

    .line 944
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDuration()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 945
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDeviceType()I

    move-result v14

    if-nez v14, :cond_14c

    const/4 v14, 0x2

    goto :goto_14d

    :cond_14c
    move v14, v6

    :goto_14d
    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDataFrom(I)V

    .line 946
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 947
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPace()I

    move-result v15

    div-int/lit8 v15, v15, 0x3c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 948
    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 949
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPace()I

    move-result v16

    rem-int/lit8 v6, v16, 0x3c

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 950
    const-string v6, "\""

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvgSpeed(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v5, v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setYear(I)V

    .line 954
    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMonth(I)V

    .line 955
    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDay(I)V

    .line 956
    invoke-virtual {v5, v11}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHour(I)V

    .line 957
    invoke-virtual {v5, v13}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMinute(I)V

    .line 958
    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setSecond(I)V

    .line 959
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDate(J)V

    .line 960
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPaceArr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v8, ","

    if-nez v4, :cond_1ef

    .line 961
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 962
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPaceArr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v10, v7

    .line 963
    :goto_1ab
    array-length v11, v9

    if-ge v10, v11, :cond_1e8

    .line 964
    new-instance v11, Lcom/keephealth/android/ui/sport/bean/SpeedItem;

    invoke-direct {v11}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;-><init>()V

    .line 965
    invoke-virtual {v11, v10}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->setCount(I)V

    .line 966
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v9, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    div-int/lit8 v13, v13, 0x3c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v10

    .line 967
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    rem-int/lit8 v13, v13, 0x3c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 966
    invoke-virtual {v11, v12}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->setSpeeds(Ljava/lang/String;)V

    .line 968
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1ab

    .line 970
    :cond_1e8
    invoke-static {v4}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setSpeeds(Ljava/lang/String;)V

    .line 972
    :cond_1ef
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getStepArr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23a

    .line 973
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 974
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getStepArr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 975
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getHeartRateArr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v10, v7

    .line 976
    :goto_20f
    array-length v11, v6

    if-ge v10, v11, :cond_233

    .line 977
    new-instance v11, Lcom/keephealth/android/model/bean/ActivityItem;

    invoke-direct {v11}, Lcom/keephealth/android/model/bean/ActivityItem;-><init>()V

    .line 978
    aget-object v12, v6, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/keephealth/android/model/bean/ActivityItem;->step:I

    .line 979
    array-length v12, v9

    if-gt v12, v10, :cond_225

    .line 980
    iput v7, v11, Lcom/keephealth/android/model/bean/ActivityItem;->hr:I

    goto :goto_22d

    .line 982
    :cond_225
    aget-object v12, v9, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/keephealth/android/model/bean/ActivityItem;->hr:I

    .line 985
    :goto_22d
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_20f

    .line 987
    :cond_233
    invoke-static {v4}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHr_data_vlaue_json(Ljava/lang/String;)V

    .line 989
    :cond_23a
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getCoordinateArr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2bc

    .line 990
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthGpsItemDao()Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    move-result-object v4

    .line 991
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 992
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getCoordinateArr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 993
    array-length v8, v3

    move v9, v7

    :goto_25f
    if-ge v9, v8, :cond_29a

    aget-object v10, v3, v9

    .line 994
    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 995
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;-><init>()V

    .line 996
    aget-object v12, v10, v7

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLatitude(Ljava/lang/Double;)V

    const/4 v12, 0x1

    .line 997
    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLongitude(Ljava/lang/Double;)V

    .line 998
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setDate(Ljava/lang/Long;)V

    .line 999
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_25f

    .line 1001
    :cond_29a
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 1002
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v7, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v8, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1003
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 1004
    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_2bc
    const/4 v3, 0x1

    .line 1006
    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setIsUploaded(Z)V

    .line 1007
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->insert(Ljava/lang/Object;)J

    goto/16 :goto_42

    :cond_2c5
    return-void
.end method
