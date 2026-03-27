.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadSteps()V
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
        "Lcom/keephealth/android/ui/mine/bean/ResultSteps;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iput-object p2, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 240
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$300(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultSteps;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 154
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u540c\u6b65\u670d\u52a1\u5668\u56de\u8fc7\u6765\u7684\u6570\u636e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 157
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u540c\u6b65\u670d\u52a1\u5668\u56de\u8fc7\u6765\u7684\u6570\u636e"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_269

    .line 158
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_269

    .line 159
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v2

    .line 160
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v4

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_269

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/mine/bean/ResultSteps;

    .line 162
    iget-object v6, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_80

    .line 164
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "update_time_step"

    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getUpdateTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_80
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    .line 167
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getStep()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 168
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDistance()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 169
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getCalories()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 173
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v7, :cond_d5

    .line 174
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v7

    const-string v10, "-"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 175
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 176
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_d8

    :cond_d5
    move v7, v3

    move v10, v7

    move v11, v10

    .line 178
    :goto_d8
    invoke-virtual {v6, v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->setYear(I)V

    .line 179
    invoke-virtual {v6, v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->setMonth(I)V

    .line 180
    invoke-virtual {v6, v10}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDay(I)V

    .line 181
    invoke-static {v7, v11, v10}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDate(J)V

    .line 182
    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthSport;->setIsUploaded(Z)V

    .line 183
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v12

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 184
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    new-array v14, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 185
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v14, v3

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 186
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v14, v9

    .line 184
    invoke-virtual {v12, v13, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    .line 187
    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v8

    invoke-virtual {v8}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 188
    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->insert(Ljava/lang/Object;)J

    .line 189
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDetails()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25d

    .line 192
    invoke-virtual {v5}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDetails()Ljava/lang/String;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 193
    array-length v8, v5

    move v12, v3

    :goto_14c
    if-ge v12, v8, :cond_220

    aget-object v13, v5, v12

    .line 194
    const-string v14, "\\|"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 195
    array-length v14, v13

    const/4 v15, 0x5

    if-lt v14, v15, :cond_212

    aget-object v14, v13, v3

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_164

    goto/16 :goto_212

    .line 198
    :cond_164
    aget-object v14, v13, v3

    const-string v3, ":"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 199
    array-length v14, v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_172

    goto/16 :goto_212

    .line 202
    :cond_172
    new-instance v14, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 203
    array-length v9, v13

    if-le v9, v15, :cond_183

    .line 204
    aget-object v9, v13, v15

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v14, v9}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 206
    :cond_183
    array-length v9, v13

    const/4 v15, 0x3

    if-le v9, v15, :cond_193

    .line 207
    aget-object v9, v13, v15

    move-object v15, v1

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v14, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    goto :goto_194

    :cond_193
    move-object v15, v1

    .line 209
    :goto_194
    array-length v0, v13

    const/4 v1, 0x4

    if-le v0, v1, :cond_1a2

    .line 210
    aget-object v0, v13, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v14, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 212
    :cond_1a2
    invoke-virtual {v14, v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setYear(I)V

    .line 213
    invoke-virtual {v14, v11}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMonth(I)V

    .line 214
    invoke-virtual {v14, v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDay(I)V

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, v11, -0x1

    const/4 v9, 0x2

    .line 217
    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 218
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    .line 219
    aget-object v9, v13, v1

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v17, v2

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 220
    aget-object v2, v13, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v9, 0xc

    invoke-virtual {v0, v9, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 221
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 222
    aget-object v2, v13, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setHour(I)V

    .line 223
    aget-object v2, v13, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMinute(I)V

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDate(J)V

    .line 225
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_215

    :cond_212
    :goto_212
    move-object v15, v1

    move-object/from16 v17, v2

    :goto_215
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v17

    const/4 v3, 0x0

    const/4 v9, 0x1

    goto/16 :goto_14c

    :cond_220
    move-object v15, v1

    move-object/from16 v17, v2

    .line 227
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 228
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 229
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 230
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    .line 228
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 232
    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_261

    :cond_25d
    move-object v15, v1

    move-object/from16 v17, v2

    move v5, v3

    :goto_261
    move-object/from16 v0, p0

    move v3, v5

    move-object v1, v15

    move-object/from16 v2, v17

    goto/16 :goto_5b

    :cond_269
    return-void
.end method
