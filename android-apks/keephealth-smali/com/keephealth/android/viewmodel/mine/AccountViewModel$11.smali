.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadSport()V
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
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V
    .registers 3

    .line 1093
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iput-object p2, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 1208
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 1218
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$1100(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 18
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

    .line 1096
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    .line 1097
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2e6

    .line 1098
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e6

    .line 1099
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v2

    .line 1100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/ResultSport;

    .line 1101
    iget-object v4, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getUpdateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4a

    .line 1103
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "update_time_sport"

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_4a
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_ae

    .line 1112
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDateTime()Ljava/lang/String;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1113
    aget-object v8, v4, v7

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1114
    aget-object v10, v4, v7

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1115
    aget-object v11, v4, v7

    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1116
    aget-object v11, v4, v6

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1117
    aget-object v13, v4, v6

    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v6

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1118
    aget-object v4, v4, v6

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_b4

    :cond_ae
    move v4, v7

    move v8, v4

    move v9, v8

    move v10, v9

    move v11, v10

    move v13, v11

    .line 1120
    :goto_b4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1121
    invoke-virtual {v12, v6, v8}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v14, v10, -0x1

    .line 1122
    invoke-virtual {v12, v5, v14}, Ljava/util/Calendar;->set(II)V

    const/4 v14, 0x5

    .line 1123
    invoke-virtual {v12, v14, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xb

    .line 1124
    invoke-virtual {v12, v15, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xc

    .line 1125
    invoke-virtual {v12, v15, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xd

    .line 1126
    invoke-virtual {v12, v15, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xe

    .line 1127
    invoke-virtual {v12, v15, v7}, Ljava/util/Calendar;->set(II)V

    .line 1129
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v15

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v6, v7

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v6, v14

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 1130
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v14, 0x2

    aput-object v0, v6, v14

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Minute:Lorg/greenrobot/greendao/Property;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v14, 0x3

    aput-object v0, v6, v14

    sget-object v0, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Second:Lorg/greenrobot/greendao/Property;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v14, 0x4

    aput-object v0, v6, v14

    .line 1129
    invoke-virtual {v15, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthActivity;

    if-nez v0, :cond_2e2

    .line 1132
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    .line 1133
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getCalories()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 1134
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDistance()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 1135
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getStep()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 1136
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getSportType()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setType(I)V

    .line 1137
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getHeartRate()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvg_hr_value(I)V

    .line 1138
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDuration()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 1139
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getDeviceType()I

    move-result v5

    if-nez v5, :cond_16b

    const/4 v5, 0x2

    goto :goto_16c

    :cond_16b
    const/4 v5, 0x1

    :goto_16c
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDataFrom(I)V

    .line 1140
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1141
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPace()I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1142
    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1143
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPace()I

    move-result v14

    rem-int/lit8 v14, v14, 0x3c

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1144
    const-string v14, "\""

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1145
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvgSpeed(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v0, v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setYear(I)V

    .line 1148
    invoke-virtual {v0, v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMonth(I)V

    .line 1149
    invoke-virtual {v0, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDay(I)V

    .line 1150
    invoke-virtual {v0, v11}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHour(I)V

    .line 1151
    invoke-virtual {v0, v13}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMinute(I)V

    .line 1152
    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setSecond(I)V

    .line 1153
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDate(J)V

    .line 1154
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPaceArr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ","

    if-nez v4, :cond_20e

    .line 1155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getPaceArr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v9, v7

    .line 1157
    :goto_1ca
    array-length v10, v8

    if-ge v9, v10, :cond_207

    .line 1158
    new-instance v10, Lcom/keephealth/android/ui/sport/bean/SpeedItem;

    invoke-direct {v10}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;-><init>()V

    .line 1159
    invoke-virtual {v10, v9}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->setCount(I)V

    .line 1160
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v8, v9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    div-int/lit8 v12, v12, 0x3c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v9

    .line 1161
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    rem-int/lit8 v12, v12, 0x3c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1160
    invoke-virtual {v10, v11}, Lcom/keephealth/android/ui/sport/bean/SpeedItem;->setSpeeds(Ljava/lang/String;)V

    .line 1162
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1ca

    .line 1164
    :cond_207
    invoke-static {v4}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setSpeeds(Ljava/lang/String;)V

    .line 1166
    :cond_20e
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getStepArr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_259

    .line 1167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getStepArr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1169
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getHeartRateArr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v9, v7

    .line 1170
    :goto_22e
    array-length v10, v6

    if-ge v9, v10, :cond_252

    .line 1171
    new-instance v10, Lcom/keephealth/android/model/bean/ActivityItem;

    invoke-direct {v10}, Lcom/keephealth/android/model/bean/ActivityItem;-><init>()V

    .line 1172
    aget-object v11, v6, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/keephealth/android/model/bean/ActivityItem;->step:I

    .line 1173
    array-length v11, v8

    if-gt v11, v9, :cond_244

    .line 1174
    iput v7, v10, Lcom/keephealth/android/model/bean/ActivityItem;->hr:I

    goto :goto_24c

    .line 1176
    :cond_244
    aget-object v11, v8, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/keephealth/android/model/bean/ActivityItem;->hr:I

    .line 1179
    :goto_24c
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_22e

    .line 1181
    :cond_252
    invoke-static {v4}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHr_data_vlaue_json(Ljava/lang/String;)V

    .line 1183
    :cond_259
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getCoordinateArr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2db

    .line 1184
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthGpsItemDao()Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;

    move-result-object v4

    .line 1185
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultSport;->getCoordinateArr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1187
    array-length v5, v3

    move v8, v7

    :goto_27e
    if-ge v8, v5, :cond_2b9

    aget-object v9, v3, v8

    .line 1188
    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1189
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;-><init>()V

    .line 1190
    aget-object v11, v9, v7

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLatitude(Ljava/lang/Double;)V

    const/4 v11, 0x1

    .line 1191
    aget-object v9, v9, v11

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLongitude(Ljava/lang/Double;)V

    .line 1192
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setDate(Ljava/lang/Long;)V

    .line 1193
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_27e

    .line 1195
    :cond_2b9
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 1196
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v7, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1197
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 1198
    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_2db
    const/4 v3, 0x1

    .line 1200
    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setIsUploaded(Z)V

    .line 1201
    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->insert(Ljava/lang/Object;)J

    :cond_2e2
    move-object/from16 v0, p0

    goto/16 :goto_25

    :cond_2e6
    return-void
.end method
