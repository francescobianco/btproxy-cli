.class Lcom/keephealth/android/persenter/mine/AccountPresenter$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/AccountPresenter;->downloadSteps()V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$3;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 266
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1200(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultSteps;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 156
    iget-object v0, v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$3;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccess()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u540c\u6b65\u670d\u52a1\u5668\u56de\u8fc7\u6765\u7684\u6570\u636e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    if-eqz v0, :cond_2be

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2be

    .line 160
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v2

    .line 161
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v4

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/mine/bean/ResultSteps;

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "trtr4r"

    invoke-static {v7, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v6, v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$3;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getUpdateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_8f

    .line 166
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "update_time_step"

    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getUpdateTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_8f
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "result.getStep()\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getStep()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "tftr5"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getStep()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 171
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDistance()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 172
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getCalories()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 176
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v8, :cond_fc

    .line 177
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v8

    const-string v11, "-"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 178
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 179
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDateTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_ff

    :cond_fc
    move v8, v3

    move v11, v8

    move v12, v11

    .line 181
    :goto_ff
    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthSport;->setYear(I)V

    .line 182
    invoke-virtual {v6, v12}, Lcom/keephealth/android/greendao/bean/HealthSport;->setMonth(I)V

    .line 183
    invoke-virtual {v6, v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDay(I)V

    .line 184
    invoke-static {v8, v12, v11}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDate(J)V

    .line 185
    invoke-virtual {v6, v10}, Lcom/keephealth/android/greendao/bean/HealthSport;->setIsUploaded(Z)V

    .line 186
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v13

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 187
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    new-array v15, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 188
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v15, v3

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 189
    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v15, v10

    .line 187
    invoke-virtual {v13, v14, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v9

    .line 190
    invoke-virtual {v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v9

    invoke-virtual {v9}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 191
    const-string v9, "insert_3"

    invoke-static {v7, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2, v6}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->insert(Ljava/lang/Object;)J

    .line 193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDetails()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2b0

    .line 196
    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/bean/ResultSteps;->getDetails()Ljava/lang/String;

    move-result-object v0

    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 197
    array-length v10, v9

    move v13, v3

    :goto_179
    if-ge v13, v10, :cond_26d

    aget-object v0, v9, v13

    .line 198
    const-string v14, "\\|"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_25e

    .line 200
    new-instance v15, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v15}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 201
    array-length v0, v14

    const/4 v3, 0x2

    if-le v0, v3, :cond_197

    .line 202
    aget-object v0, v14, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 204
    :cond_197
    array-length v0, v14

    const/4 v3, 0x3

    if-le v0, v3, :cond_1a5

    .line 205
    aget-object v0, v14, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v15, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 207
    :cond_1a5
    array-length v0, v14

    const/4 v1, 0x4

    if-le v0, v1, :cond_1b3

    .line 208
    aget-object v0, v14, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v15, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 210
    :cond_1b3
    invoke-virtual {v15, v8}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setYear(I)V

    .line 211
    invoke-virtual {v15, v12}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMonth(I)V

    .line 212
    invoke-virtual {v15, v11}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDay(I)V

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    .line 214
    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v0, v12, -0x1

    const/4 v3, 0x2

    .line 215
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 216
    invoke-virtual {v1, v0, v11}, Ljava/util/Calendar;->set(II)V

    .line 217
    array-length v0, v14

    const-string v3, "ArrayIndexOutOfBoundsException-accountPresenter-e:"

    move-object/from16 v17, v2

    const-string v2, ":"

    if-lez v0, :cond_216

    const/16 v16, 0x0

    .line 219
    :try_start_1d9
    aget-object v0, v14, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d9 .. :try_end_1e5} :catch_201

    move-object/from16 v18, v5

    const/16 v5, 0xb

    :try_start_1e9
    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 220
    aget-object v0, v14, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0xc

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V
    :try_end_1fe
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e9 .. :try_end_1fe} :catch_1ff

    goto :goto_218

    :catch_1ff
    move-exception v0

    goto :goto_204

    :catch_201
    move-exception v0

    move-object/from16 v18, v5

    .line 222
    :goto_204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_219

    :cond_216
    move-object/from16 v18, v5

    :goto_218
    const/4 v5, 0x0

    :goto_219
    const/16 v0, 0xd

    .line 225
    invoke-virtual {v1, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 226
    array-length v0, v14

    if-lez v0, :cond_253

    .line 228
    :try_start_221
    aget-object v0, v14, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setHour(I)V

    .line 229
    aget-object v0, v14, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMinute(I)V
    :try_end_240
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_221 .. :try_end_240} :catch_241

    goto :goto_253

    :catch_241
    move-exception v0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 234
    :cond_253
    :goto_253
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDate(J)V

    .line 235
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_262

    :cond_25e
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    :goto_262
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    const/4 v3, 0x0

    goto/16 :goto_179

    :cond_26d
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    .line 238
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 239
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 240
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 241
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v2, v8

    .line 239
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 243
    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 244
    const-string v0, "insert_insertInTx"

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b5

    :cond_2b0
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move v5, v3

    :goto_2b5
    move-object/from16 v1, p0

    move v3, v5

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    goto/16 :goto_4d

    :cond_2be
    return-void
.end method
