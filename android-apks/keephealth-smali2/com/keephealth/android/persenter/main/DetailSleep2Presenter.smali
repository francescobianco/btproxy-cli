.class public Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "DetailSleep2Presenter.java"


# instance fields
.field dateFormat:Ljava/text/SimpleDateFormat;

.field weekSleeps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private formattime(Lcom/keephealth/android/greendao/bean/HealthSleep;)Ljava/lang/String;
    .registers 5

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10076d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result p1

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100775

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private get()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 36

    move-object/from16 v0, p0

    .line 176
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->endDate:Ljava/util/Date;

    .line 179
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->startDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v3

    .line 180
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -- "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->endDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\u65f6\u95f4"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 183
    sget-object v7, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->endDate:Ljava/util/Date;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x17

    const/16 v8, 0xb

    .line 184
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    const/16 v9, 0x3b

    .line 185
    invoke-virtual {v4, v7, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    .line 186
    invoke-virtual {v4, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 187
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v12, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-static {v12}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/Object;)V

    .line 194
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    move v13, v3

    move v14, v13

    .line 195
    :goto_a7
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sget-object v17, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->startDate:Ljava/util/Date;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-gtz v15, :cond_5c6

    .line 198
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v10, 0x2

    .line 199
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v10, v7, 0x1

    const/4 v8, 0x5

    .line 200
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v22, v21

    :goto_d1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2e1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v3, v23

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 202
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v8

    if-ne v8, v15, :cond_2b9

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v8

    if-ne v8, v10, :cond_2b9

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v8

    if-ne v8, v2, :cond_2b9

    .line 205
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v8

    move-object/from16 v24, v1

    .line 206
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    move-object/from16 v25, v9

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    move/from16 v26, v13

    .line 207
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    move/from16 v27, v7

    const/4 v13, 0x3

    new-array v7, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    move-object/from16 v28, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v7, v13

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v19, 0xb

    .line 209
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v7, v13

    .line 207
    invoke-virtual {v1, v9, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v7, 0x1

    new-array v9, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v12, 0x0

    aput-object v7, v9, v12

    .line 210
    invoke-virtual {v1, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2ae

    .line 211
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2ae

    .line 212
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    const/4 v9, -0x1

    const/4 v12, 0x5

    .line 213
    invoke-virtual {v7, v12, v9}, Ljava/util/Calendar;->add(II)V

    const/4 v9, 0x2

    .line 214
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v9, 0x1

    add-int/2addr v13, v9

    .line 215
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 216
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 217
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 218
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    move/from16 v29, v10

    const/4 v12, 0x3

    new-array v10, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 219
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v10, v12

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v13, 0x15

    .line 220
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v10, v13

    .line 218
    invoke-virtual {v8, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    new-array v8, v12, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 221
    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v7

    .line 228
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v30, v4

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 232
    :goto_1e0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_28e

    .line 233
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move/from16 v31, v2

    .line 234
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    move/from16 v32, v15

    const/4 v15, 0x1

    if-eq v2, v15, :cond_213

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x3

    if-eq v2, v15, :cond_213

    .line 235
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x2

    if-eq v2, v15, :cond_213

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x5

    if-eq v2, v15, :cond_213

    .line 236
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x4

    if-ne v2, v15, :cond_286

    .line 237
    :cond_213
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v7, v2

    .line 238
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_234

    .line 239
    sget-boolean v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v2, :cond_22d

    .line 240
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v10, v2

    const/4 v2, 0x2

    .line 241
    invoke-virtual {v4, v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_268

    :cond_22d
    const/4 v2, 0x2

    .line 243
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v4

    add-int/2addr v10, v4

    goto :goto_268

    :cond_234
    const/4 v2, 0x2

    .line 245
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v15

    const/4 v2, 0x3

    if-ne v15, v2, :cond_242

    .line 246
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_268

    .line 247
    :cond_242
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x2

    if-ne v2, v15, :cond_24f

    .line 248
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v10, v2

    goto :goto_268

    .line 249
    :cond_24f
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x5

    if-ne v2, v15, :cond_25c

    .line 250
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_268

    .line 251
    :cond_25c
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v2

    const/4 v15, 0x4

    if-ne v2, v15, :cond_268

    .line 252
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v13, v2

    .line 254
    :cond_268
    :goto_268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u603b\u7761\u7720\u65f6\u957f"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_286
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v31

    move/from16 v15, v32

    goto/16 :goto_1e0

    :cond_28e
    move/from16 v31, v2

    move/from16 v32, v15

    if-nez v7, :cond_297

    move-object/from16 v22, v21

    goto :goto_2cb

    .line 260
    :cond_297
    invoke-virtual {v3, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 262
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 263
    invoke-virtual {v3, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 264
    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 265
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 266
    invoke-virtual {v3, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    goto :goto_2b6

    :cond_2ae
    move/from16 v31, v2

    move-object/from16 v30, v4

    move/from16 v29, v10

    move/from16 v32, v15

    :goto_2b6
    move-object/from16 v22, v3

    goto :goto_2cb

    :cond_2b9
    move-object/from16 v24, v1

    move/from16 v31, v2

    move-object/from16 v30, v4

    move/from16 v27, v7

    move-object/from16 v25, v9

    move/from16 v29, v10

    move-object/from16 v28, v12

    move/from16 v26, v13

    move/from16 v32, v15

    :goto_2cb
    move-object/from16 v1, v24

    move-object/from16 v9, v25

    move/from16 v13, v26

    move/from16 v7, v27

    move-object/from16 v12, v28

    move/from16 v10, v29

    move-object/from16 v4, v30

    move/from16 v2, v31

    move/from16 v15, v32

    const/4 v3, 0x0

    const/4 v8, 0x5

    goto/16 :goto_d1

    :cond_2e1
    move-object/from16 v24, v1

    move/from16 v31, v2

    move-object/from16 v30, v4

    move/from16 v27, v7

    move-object/from16 v25, v9

    move/from16 v29, v10

    move-object/from16 v28, v12

    move/from16 v26, v13

    move/from16 v32, v15

    if-nez v22, :cond_2fa

    .line 272
    new-instance v22, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct/range {v22 .. v22}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    :cond_2fa
    move-object/from16 v1, v22

    .line 274
    sget-object v2, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_58c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_477

    const/4 v3, 0x3

    if-eq v2, v3, :cond_322

    move-object/from16 v10, v25

    move/from16 v13, v26

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    const/4 v1, 0x5

    const/16 v4, 0xb

    const/16 v7, 0xc

    const/16 v8, 0xd

    :goto_31e
    const/4 v9, 0x1

    const/4 v12, 0x0

    goto/16 :goto_5b2

    .line 329
    :cond_322
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    if-lez v2, :cond_32a

    add-int/lit8 v14, v14, 0x1

    .line 332
    :cond_32a
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual/range {v28 .. v28}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v3, v28

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 334
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 335
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 336
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 337
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 338
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 339
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v2

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 341
    sget-object v2, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x0

    const/16 v4, 0xb

    .line 342
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 343
    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 344
    invoke-virtual {v1, v8, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    .line 345
    invoke-virtual {v1, v9, v2}, Ljava/util/Calendar;->set(II)V

    move/from16 v9, v27

    move/from16 v10, v31

    move/from16 v2, v32

    .line 346
    invoke-virtual {v0, v2, v9, v10}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->isEndMonth(III)Z

    move-result v2

    if-nez v2, :cond_3c5

    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->isDateEquals(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3bc

    goto :goto_3c5

    :cond_3bc
    move-object/from16 v10, v25

    move/from16 v13, v26

    move-object/from16 v2, v30

    const/4 v1, 0x5

    goto/16 :goto_31e

    .line 348
    :cond_3c5
    :goto_3c5
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    move/from16 v9, v26

    move/from16 v1, v29

    move-object/from16 v2, v30

    .line 349
    invoke-virtual {v0, v9, v2, v1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 350
    new-instance v1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 351
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-object v10, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->startDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v10, v12, v15

    if-nez v10, :cond_3fb

    .line 352
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    move-object/from16 v10, v25

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    goto :goto_400

    :cond_3fb
    move-object/from16 v10, v25

    .line 354
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_400
    sget-object v12, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setRemark(Ljava/lang/String;)V

    if-eqz v14, :cond_459

    .line 358
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 359
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 360
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 361
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 362
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 363
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 364
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "\u6570\u636e\u91cf\u5e74"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_459
    const/4 v1, 0x0

    .line 368
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 369
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 370
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 371
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 372
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 373
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 374
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    add-int/lit8 v13, v9, 0x1

    const/4 v1, 0x5

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_5b2

    :cond_477
    move-object/from16 v10, v25

    move/from16 v9, v26

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    const/16 v4, 0xb

    const/16 v7, 0xc

    const/16 v8, 0xd

    .line 285
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    if-lez v12, :cond_48d

    add-int/lit8 v14, v14, 0x1

    .line 288
    :cond_48d
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 292
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 293
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 294
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 295
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 296
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 297
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v1

    add-int/2addr v12, v1

    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeH(I)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "\u6bcf\u5468\u7761\u7720\u6d45\u7761\u65f6\u957f"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 299
    invoke-virtual {v0, v9, v2, v1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 300
    invoke-virtual {v0, v9, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->isWeek(ILjava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_58a

    .line 301
    new-instance v1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    if-eqz v14, :cond_568

    .line 303
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 304
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 305
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 306
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 307
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 308
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 309
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeH(I)V

    .line 310
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u6570\u636e\u91cf\u516d\u6708"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_568
    invoke-virtual {v0, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setRemark(Ljava/lang/String;)V

    .line 314
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .line 316
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 317
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 318
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 319
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 320
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 321
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 322
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    move v14, v12

    goto :goto_5ae

    :cond_58a
    const/4 v12, 0x0

    goto :goto_5ae

    :cond_58c
    move-object/from16 v10, v25

    move/from16 v9, v26

    move-object/from16 v3, v28

    move-object/from16 v2, v30

    const/16 v4, 0xb

    const/16 v7, 0xc

    const/16 v8, 0xd

    const/4 v12, 0x0

    .line 279
    invoke-virtual {v0, v9, v2, v12}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 280
    sget-object v13, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setRemark(Ljava/lang/String;)V

    .line 281
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5ae
    add-int/lit8 v13, v9, 0x1

    const/4 v1, 0x5

    const/4 v9, 0x1

    .line 380
    :goto_5b2
    invoke-virtual {v2, v1, v9}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v1, v24

    move/from16 v33, v4

    move-object v4, v2

    move v2, v9

    move-object v9, v10

    move v10, v8

    move/from16 v8, v33

    move/from16 v34, v12

    move-object v12, v3

    move/from16 v3, v34

    goto/16 :goto_a7

    :cond_5c6
    move v12, v3

    move-object v10, v9

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 383
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 384
    new-instance v1, Lcom/keephealth/android/model/bean/SleepDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/SleepDetailVO;-><init>()V

    .line 386
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->dates:Ljava/util/List;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object v2

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 389
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 392
    :goto_5ff
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_65e

    .line 393
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 394
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v5

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 395
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v5

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 396
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v5

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 397
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v5

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 398
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v5

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 399
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v5

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 400
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v4

    if-lez v4, :cond_65b

    add-int/lit8 v12, v12, 0x1

    :cond_65b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5ff

    .line 404
    :cond_65e
    iput-object v10, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    if-lez v12, :cond_692

    .line 406
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v3

    div-int/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 407
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v3

    div-int/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 408
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v3

    div-int/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 409
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v3

    div-int/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 410
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v3

    div-int/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 411
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v3

    div-int/2addr v3, v12

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 414
    :cond_692
    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eq v3, v4, :cond_69e

    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v4, :cond_6a0

    .line 415
    :cond_69e
    iput-object v11, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->allList:Ljava/util/List;

    .line 417
    :cond_6a0
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v2, v3, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 418
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    return-object v1
.end method

.method private getWeekSleep()V
    .registers 18

    move-object/from16 v0, p0

    .line 84
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 86
    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "WEEK_START_DAY_INDEX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 90
    new-instance v4, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;-><init>()V

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10076d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f100775

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->avgTime:Ljava/lang/String;

    .line 93
    iget-object v6, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 96
    iget-object v6, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_87

    return-void

    .line 104
    :cond_87
    invoke-static {v5, v3}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v3

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 107
    invoke-virtual {v0, v4}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 111
    new-instance v3, Ljava/util/Date;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDate()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    move v10, v5

    move v11, v10

    .line 116
    :goto_b0
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_1a7

    const/4 v12, 0x0

    move v13, v5

    :goto_c2
    const/4 v14, 0x5

    if-ge v13, v6, :cond_f4

    .line 119
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v5, 0x2

    .line 120
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 121
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 122
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 124
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v9

    if-ne v9, v15, :cond_ed

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v9

    if-ne v9, v5, :cond_ed

    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v5

    if-ne v5, v14, :cond_ed

    move-object/from16 v12, v16

    :cond_ed
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    const v9, 0x7f100775

    goto :goto_c2

    :cond_f4
    if-eqz v12, :cond_183

    .line 129
    new-instance v5, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;-><init>()V

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f1001dc

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;->day:Ljava/lang/String;

    .line 131
    invoke-direct {v0, v12}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->formattime(Lcom/keephealth/android/greendao/bean/HealthSleep;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;->time:Ljava/lang/String;

    .line 132
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDate()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;->date:J

    .line 133
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    add-int/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    .line 137
    iget-object v12, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    .line 138
    iget-object v13, v12, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->daySleeps:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-int v13, v10, v11

    div-int/lit8 v14, v13, 0x3c

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rem-int/lit8 v13, v13, 0x3c

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f100775

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->avgTime:Ljava/lang/String;

    goto :goto_186

    :cond_183
    const v14, 0x7f100775

    :goto_186
    const/4 v5, -0x1

    const/4 v9, 0x5

    .line 142
    invoke-virtual {v4, v9, v5}, Ljava/util/Calendar;->add(II)V

    .line 144
    rem-int/lit8 v5, v7, 0x7

    if-nez v5, :cond_1a1

    .line 145
    new-instance v5, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;-><init>()V

    .line 146
    invoke-virtual {v0, v4}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->label:Ljava/lang/String;

    .line 147
    iget-object v9, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_1a1
    add-int/lit8 v7, v7, 0x1

    move v9, v14

    const/4 v5, 0x0

    goto/16 :goto_b0

    :cond_1a7
    const/4 v5, 0x0

    .line 153
    :goto_1a8
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_1c8

    .line 154
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    .line 155
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->avgTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 156
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1c5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a8

    :cond_1c8
    return-void
.end method


# virtual methods
.method public getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 17

    move-object/from16 v0, p0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->currentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "detailTimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DetailTimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 429
    new-instance v1, Lcom/keephealth/android/model/bean/SleepDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/SleepDetailVO;-><init>()V

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 431
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v3

    .line 432
    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    .line 439
    sget-object v4, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v5, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4d3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4d3

    const/4 v7, 0x3

    if-eq v4, v7, :cond_4d3

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v4, v8, :cond_6e

    move v4, v9

    move v12, v4

    move v13, v12

    move v14, v13

    move v15, v14

    goto/16 :goto_467

    .line 442
    :cond_6e
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v11, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->year:I

    .line 443
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v11, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v13, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->month:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v9

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v13, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->day:I

    .line 444
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v5

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v13, 0xb

    .line 445
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v6

    .line 443
    invoke-virtual {v4, v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v10, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v9

    .line 446
    invoke-virtual {v4, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x5

    if-eqz v4, :cond_1e0

    .line 447
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1e0

    .line 448
    iget-object v11, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Calendar;

    .line 449
    iget v12, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->day:I

    sub-int/2addr v12, v5

    invoke-virtual {v11, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 450
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 451
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v5

    .line 452
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 453
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 455
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 456
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v14, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v13

    aput-object v13, v14, v9

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 457
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v14, v5

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v13, 0x15

    .line 458
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v14, v6

    .line 456
    invoke-virtual {v3, v12, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v11, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v9

    .line 459
    invoke-virtual {v3, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    .line 460
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 463
    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v3, v9

    move v4, v3

    move v12, v4

    move v13, v12

    move v14, v13

    move v15, v14

    .line 464
    :goto_144
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3a6

    .line 465
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 466
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v5, :cond_16f

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v7, :cond_16f

    .line 467
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v6, :cond_16f

    .line 468
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v8, :cond_16f

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v8, 0x5

    if-ne v10, v8, :cond_1d8

    .line 469
    :cond_16f
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v5, :cond_188

    .line 470
    sget-boolean v8, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v8, :cond_182

    .line 471
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v13, v8

    .line 472
    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_1b9

    .line 474
    :cond_182
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_1b9

    .line 476
    :cond_188
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v7, :cond_194

    .line 477
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v12, v8

    goto :goto_1b9

    .line 478
    :cond_194
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v6, :cond_1a0

    .line 479
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v13, v8

    goto :goto_1b9

    .line 480
    :cond_1a0
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_1ad

    .line 481
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v15, v8

    goto :goto_1b9

    .line 482
    :cond_1ad
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v10, 0x5

    if-ne v8, v10, :cond_1b9

    .line 483
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v14, v8

    .line 485
    :cond_1b9
    :goto_1b9
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "HH:mm"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v5

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8, v10}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setIndex(I)V

    .line 487
    invoke-virtual {v9, v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleeptime(Ljava/lang/String;)V

    .line 488
    iget-object v5, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d8
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v10, 0x5

    goto/16 :goto_144

    .line 492
    :cond_1e0
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v6, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->year:I

    .line 493
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v9, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->month:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v8, v9

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->day:I

    .line 494
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v8, v10

    .line 493
    invoke-virtual {v4, v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v5, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v9

    .line 495
    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3a1

    .line 496
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3a1

    .line 497
    iget-object v5, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 498
    iget v6, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->day:I

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    const/4 v9, 0x5

    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 499
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v10, 0x2

    .line 500
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v8

    .line 501
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 502
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 504
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 505
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v8, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 506
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 505
    invoke-virtual {v3, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v5, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v10

    .line 507
    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    .line 508
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_29b
    const/16 v8, 0x54

    if-ge v6, v8, :cond_39f

    .line 511
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    const/16 v9, 0x12

    if-ge v6, v9, :cond_2c3

    if-eqz v3, :cond_2d1

    .line 514
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_2d1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v9, :cond_2d1

    .line 515
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    add-int/2addr v8, v6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    goto :goto_2d1

    .line 519
    :cond_2c3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_2d1

    add-int/lit8 v8, v6, -0x12

    .line 520
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 524
    :cond_2d1
    :goto_2d1
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2f3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v7, :cond_2f3

    .line 525
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2f3

    .line 526
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2f3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_39a

    .line 527
    :cond_2f3
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_30f

    .line 528
    sget-boolean v10, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v10, :cond_308

    .line 529
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v13, v10

    const/4 v10, 0x2

    .line 530
    invoke-virtual {v8, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_31b

    :cond_308
    const/4 v10, 0x2

    .line 532
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    add-int/2addr v5, v11

    goto :goto_31b

    :cond_30f
    const/4 v10, 0x2

    .line 534
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    if-ne v11, v7, :cond_31e

    .line 535
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    add-int/2addr v12, v11

    :goto_31b
    const/4 v7, 0x5

    const/4 v11, 0x4

    goto :goto_344

    .line 536
    :cond_31e
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    if-ne v11, v10, :cond_32a

    .line 537
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v13, v10

    goto :goto_31b

    .line 538
    :cond_32a
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_338

    .line 539
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v15, v10

    const/4 v7, 0x5

    goto :goto_344

    .line 540
    :cond_338
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v7, 0x5

    if-ne v10, v7, :cond_344

    .line 541
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v14, v10

    .line 544
    :cond_344
    :goto_344
    const-string v10, ":"

    if-gt v6, v9, :cond_366

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v7, v6, 0xa

    add-int/lit16 v7, v7, 0x4ec

    div-int/lit8 v11, v7, 0x3c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    rem-int/lit8 v7, v7, 0x3c

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_383

    .line 547
    :cond_366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v6, -0x12

    mul-int/lit8 v9, v9, 0xa

    div-int/lit8 v11, v9, 0x3c

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v9, v9, 0x3c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 549
    :goto_383
    invoke-virtual {v8, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setIndex(I)V

    .line 550
    invoke-static {}, Lcom/keephealth/android/util/CommonUtil;->is24Hour()Z

    move-result v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/keephealth/android/util/CommonUtil;->timeFormatter(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleeptime(Ljava/lang/String;)V

    .line 551
    iget-object v7, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39a
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    goto/16 :goto_29b

    :cond_39f
    move v4, v5

    goto :goto_3a6

    :cond_3a1
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 556
    :cond_3a6
    :goto_3a6
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3da

    .line 557
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    iget-object v5, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleeptime()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    iget-object v5, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    iget-object v6, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleeptime()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3fd

    .line 560
    :cond_3da
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "21:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "24:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "04:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "08:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "11:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3fd
    add-int v3, v4, v12

    add-int/2addr v3, v13

    add-int/2addr v3, v14

    add-int/2addr v3, v15

    .line 567
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v5

    .line 568
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->year:I

    .line 569
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v9, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->month:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->day:I

    .line 570
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 569
    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v6, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v9

    .line 571
    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_466

    .line 572
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_466

    .line 573
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_466
    move v9, v3

    .line 581
    :goto_467
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 582
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 583
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 584
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 585
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 586
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 587
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 588
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 589
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 590
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 592
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->weekSleeps:Ljava/util/List;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    .line 594
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-object v1

    .line 579
    :cond_4d3
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v1

    return-object v1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekSleep()V

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;

    .line 42
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekSleep()V

    .line 43
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailNext(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->nextDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 58
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekSleep()V

    .line 59
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailPre(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 64
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekSleep()V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getOneMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 423
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->setOneMonth()V

    .line 424
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getSixMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->setSixMonth()V

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekSleep()V

    .line 71
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getYearMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->setYear()V

    .line 76
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getWeekSleep()V

    .line 77
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method
