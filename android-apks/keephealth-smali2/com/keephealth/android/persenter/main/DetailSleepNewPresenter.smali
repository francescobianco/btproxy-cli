.class public Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "DetailSleepNewPresenter.java"


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

    .line 37
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private formattime(Lcom/keephealth/android/greendao/bean/HealthSleep;)Ljava/lang/String;
    .registers 5

    .line 167
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
    .registers 37

    move-object/from16 v0, p0

    .line 179
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->endDate:Ljava/util/Date;

    .line 182
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->startDate:Ljava/util/Date;

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

    .line 183
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -- "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\u65f6\u95f4"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 186
    sget-object v7, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x17

    const/16 v8, 0xb

    .line 187
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    const/16 v9, 0x3b

    .line 188
    invoke-virtual {v4, v7, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    .line 189
    invoke-virtual {v4, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 190
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v12, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-static {v12}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/Object;)V

    .line 197
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    move v13, v3

    move v14, v13

    .line 198
    :goto_a7
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sget-object v17, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->startDate:Ljava/util/Date;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-gtz v15, :cond_5db

    .line 201
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v10, 0x2

    .line 202
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v8, v7, 0x1

    const/4 v10, 0x5

    .line 203
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v21, v20

    :goto_d1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2e7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v3, v22

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 205
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v10

    if-ne v10, v15, :cond_2bb

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v10

    if-ne v10, v8, :cond_2bb

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v10

    if-ne v10, v2, :cond_2bb

    .line 208
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v10

    move-object/from16 v23, v1

    .line 209
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    move-object/from16 v24, v9

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    move/from16 v25, v13

    .line 210
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    move/from16 v26, v7

    const/4 v13, 0x3

    new-array v7, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    move-object/from16 v27, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v7, v13

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v21, 0x14

    .line 212
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v7, v13

    .line 210
    invoke-virtual {v1, v9, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v7, 0x1

    new-array v9, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v12, 0x0

    aput-object v7, v9, v12

    .line 213
    invoke-virtual {v1, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2ae

    .line 214
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2ae

    .line 215
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Calendar;

    const/4 v9, -0x1

    const/4 v12, 0x5

    .line 216
    invoke-virtual {v7, v12, v9}, Ljava/util/Calendar;->add(II)V

    const/4 v9, 0x2

    .line 217
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v9, 0x1

    add-int/2addr v13, v9

    .line 218
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 219
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 220
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v9

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 221
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    move/from16 v28, v8

    const/4 v12, 0x3

    new-array v8, v12, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v8, v13

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v8, v12

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 223
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v8, v13

    .line 221
    invoke-virtual {v9, v10, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    new-array v8, v12, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 224
    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v7

    .line 231
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move/from16 v30, v2

    move-object/from16 v29, v4

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 235
    :goto_1e1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28f

    .line 236
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move/from16 v31, v15

    .line 237
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v15

    move-object/from16 v32, v11

    const/4 v11, 0x1

    if-eq v15, v11, :cond_214

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x3

    if-eq v11, v15, :cond_214

    .line 238
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x2

    if-eq v11, v15, :cond_214

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x5

    if-eq v11, v15, :cond_214

    .line 239
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x4

    if-ne v11, v15, :cond_287

    .line 240
    :cond_214
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    add-int/2addr v7, v11

    .line 241
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_235

    .line 242
    sget-boolean v11, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v11, :cond_22e

    .line 243
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    add-int/2addr v12, v11

    const/4 v11, 0x2

    .line 244
    invoke-virtual {v2, v11}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_269

    :cond_22e
    const/4 v11, 0x2

    .line 246
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_269

    :cond_235
    const/4 v11, 0x2

    .line 248
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v15

    const/4 v11, 0x3

    if-ne v15, v11, :cond_243

    .line 249
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v13, v2

    goto :goto_269

    .line 250
    :cond_243
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x2

    if-ne v11, v15, :cond_250

    .line 251
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_269

    .line 252
    :cond_250
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x5

    if-ne v11, v15, :cond_25d

    .line 253
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v10, v2

    goto :goto_269

    .line 254
    :cond_25d
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    const/4 v15, 0x4

    if-ne v11, v15, :cond_269

    .line 255
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v2

    add-int/2addr v4, v2

    .line 257
    :cond_269
    :goto_269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "\u603b\u7761\u7720\u65f6\u957f"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_287
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v31

    move-object/from16 v11, v32

    goto/16 :goto_1e1

    :cond_28f
    move-object/from16 v32, v11

    move/from16 v31, v15

    if-nez v7, :cond_298

    move-object/from16 v21, v20

    goto :goto_2cf

    .line 263
    :cond_298
    invoke-virtual {v3, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 264
    invoke-virtual {v3, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 265
    invoke-virtual {v3, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 266
    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 267
    invoke-virtual {v3, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 268
    invoke-virtual {v3, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 269
    invoke-virtual {v3, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    goto :goto_2b8

    :cond_2ae
    move/from16 v30, v2

    move-object/from16 v29, v4

    move/from16 v28, v8

    move-object/from16 v32, v11

    move/from16 v31, v15

    :goto_2b8
    move-object/from16 v21, v3

    goto :goto_2cf

    :cond_2bb
    move-object/from16 v23, v1

    move/from16 v30, v2

    move-object/from16 v29, v4

    move/from16 v26, v7

    move/from16 v28, v8

    move-object/from16 v24, v9

    move-object/from16 v32, v11

    move-object/from16 v27, v12

    move/from16 v25, v13

    move/from16 v31, v15

    :goto_2cf
    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move/from16 v13, v25

    move/from16 v7, v26

    move-object/from16 v12, v27

    move/from16 v8, v28

    move-object/from16 v4, v29

    move/from16 v2, v30

    move/from16 v15, v31

    move-object/from16 v11, v32

    const/4 v3, 0x0

    const/4 v10, 0x5

    goto/16 :goto_d1

    :cond_2e7
    move-object/from16 v23, v1

    move/from16 v30, v2

    move-object/from16 v29, v4

    move/from16 v26, v7

    move/from16 v28, v8

    move-object/from16 v24, v9

    move-object/from16 v32, v11

    move-object/from16 v27, v12

    move/from16 v25, v13

    move/from16 v31, v15

    if-nez v21, :cond_302

    .line 275
    new-instance v21, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    :cond_302
    move-object/from16 v1, v21

    .line 277
    sget-object v2, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_59a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_483

    const/4 v3, 0x3

    if-eq v2, v3, :cond_32c

    move-object/from16 v11, v24

    move/from16 v13, v25

    move-object/from16 v4, v27

    move-object/from16 v3, v29

    move-object/from16 v2, v32

    const/4 v1, 0x5

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/16 v9, 0xd

    :goto_328
    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_5c2

    .line 332
    :cond_32c
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    if-lez v2, :cond_334

    add-int/lit8 v14, v14, 0x1

    :cond_334
    move-object/from16 v2, v32

    .line 335
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual/range {v27 .. v27}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v4, v27

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 337
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 338
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 339
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 340
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 341
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 342
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v3

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 343
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 344
    sget-object v3, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x0

    const/16 v7, 0xb

    .line 345
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    .line 346
    invoke-virtual {v1, v8, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xd

    .line 347
    invoke-virtual {v1, v9, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xe

    .line 348
    invoke-virtual {v1, v10, v3}, Ljava/util/Calendar;->set(II)V

    move/from16 v10, v26

    move/from16 v11, v30

    move/from16 v3, v31

    .line 349
    invoke-virtual {v0, v3, v10, v11}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->isEndMonth(III)Z

    move-result v3

    if-nez v3, :cond_3d1

    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->isDateEquals(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3c8

    goto :goto_3d1

    :cond_3c8
    move-object/from16 v11, v24

    move/from16 v13, v25

    move-object/from16 v3, v29

    const/4 v1, 0x5

    goto/16 :goto_328

    .line 351
    :cond_3d1
    :goto_3d1
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    move/from16 v10, v25

    move/from16 v1, v28

    move-object/from16 v3, v29

    .line 352
    invoke-virtual {v0, v10, v3, v1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 353
    new-instance v1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 354
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sget-object v13, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v11, v11, v15

    if-nez v11, :cond_407

    .line 355
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    move-object/from16 v11, v24

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    goto :goto_40c

    :cond_407
    move-object/from16 v11, v24

    .line 357
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_40c
    sget-object v12, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setRemark(Ljava/lang/String;)V

    if-eqz v14, :cond_465

    .line 361
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 362
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 363
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 364
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 365
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 366
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 367
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "\u6570\u636e\u91cf\u5e74"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_465
    const/4 v1, 0x0

    .line 371
    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 372
    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 373
    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 374
    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 375
    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 376
    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 377
    invoke-virtual {v4, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    add-int/lit8 v13, v10, 0x1

    const/4 v1, 0x5

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_5c2

    :cond_483
    move-object/from16 v11, v24

    move/from16 v10, v25

    move-object/from16 v4, v27

    move-object/from16 v3, v29

    move-object/from16 v2, v32

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/16 v9, 0xd

    .line 288
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    if-lez v12, :cond_49b

    add-int/lit8 v14, v14, 0x1

    .line 291
    :cond_49b
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

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

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 295
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 296
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 297
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 298
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 299
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 300
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v12

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v1

    add-int/2addr v12, v1

    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeH(I)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "\u6bcf\u5468\u7761\u7720\u6d45\u7761\u65f6\u957f"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v10, v3, v1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 303
    invoke-virtual {v0, v10, v3}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->isWeek(ILjava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_598

    .line 304
    new-instance v1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    if-eqz v14, :cond_576

    .line 306
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 307
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 308
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 309
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 310
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 311
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 312
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v12

    div-int/2addr v12, v14

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeH(I)V

    .line 313
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u6570\u636e\u91cf\u516d\u6708"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_576
    invoke-virtual {v0, v3}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setRemark(Ljava/lang/String;)V

    .line 317
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    .line 319
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 320
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 321
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 322
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 323
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 324
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 325
    invoke-virtual {v4, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    move v14, v12

    goto :goto_5be

    :cond_598
    const/4 v12, 0x0

    goto :goto_5be

    :cond_59a
    move-object/from16 v11, v24

    move/from16 v10, v25

    move-object/from16 v4, v27

    move-object/from16 v3, v29

    move-object/from16 v2, v32

    const/16 v7, 0xb

    const/16 v8, 0xc

    const/16 v9, 0xd

    const/4 v12, 0x0

    .line 282
    invoke-virtual {v0, v10, v3, v12}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 283
    sget-object v13, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setRemark(Ljava/lang/String;)V

    .line 284
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5be
    add-int/lit8 v13, v10, 0x1

    const/4 v1, 0x5

    const/4 v10, 0x1

    .line 383
    :goto_5c2
    invoke-virtual {v3, v1, v10}, Ljava/util/Calendar;->add(II)V

    move-object/from16 v1, v23

    move-object/from16 v33, v11

    move-object v11, v2

    move v2, v10

    move v10, v9

    move-object/from16 v9, v33

    move-object/from16 v34, v4

    move-object v4, v3

    move v3, v12

    move-object/from16 v12, v34

    move/from16 v35, v8

    move v8, v7

    move/from16 v7, v35

    goto/16 :goto_a7

    :cond_5db
    move v12, v3

    move-object v2, v11

    move-object v11, v9

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 386
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 387
    new-instance v1, Lcom/keephealth/android/model/bean/SleepDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/SleepDetailVO;-><init>()V

    .line 389
    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dates:Ljava/util/List;

    iput-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object v3

    iput-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 392
    new-instance v3, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    move v4, v12

    .line 395
    :goto_616
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_675

    .line 396
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 397
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 398
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 399
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 400
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 401
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 402
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 403
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v5

    if-lez v5, :cond_672

    add-int/lit8 v4, v4, 0x1

    :cond_672
    add-int/lit8 v12, v12, 0x1

    goto :goto_616

    .line 407
    :cond_675
    iput-object v11, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    if-lez v4, :cond_6a9

    .line 409
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 410
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 411
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 412
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 413
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 414
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 417
    :cond_6a9
    iget-object v4, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eq v4, v5, :cond_6b5

    iget-object v4, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v4, v5, :cond_6b7

    .line 418
    :cond_6b5
    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->allList:Ljava/util/List;

    .line 420
    :cond_6b7
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v3, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 421
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    return-object v1
.end method

.method private getWeekSleep()V
    .registers 18

    move-object/from16 v0, p0

    .line 87
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 89
    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 91
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

    .line 93
    new-instance v4, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    invoke-direct {v4}, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;-><init>()V

    .line 94
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

    .line 96
    iget-object v6, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 99
    iget-object v6, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_87

    return-void

    .line 107
    :cond_87
    invoke-static {v5, v3}, Lcom/keephealth/android/util/ProDbUtils;->getWeekEndDate(II)Ljava/util/Date;

    move-result-object v3

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 110
    invoke-virtual {v0, v4}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->setCalendarZero(Ljava/util/Calendar;)V

    .line 114
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

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    move v10, v5

    move v11, v10

    .line 119
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

    .line 122
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v5, 0x2

    .line 123
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 124
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 125
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 127
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

    .line 132
    new-instance v5, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;-><init>()V

    .line 133
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

    .line 134
    invoke-direct {v0, v12}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->formattime(Lcom/keephealth/android/greendao/bean/HealthSleep;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;->time:Ljava/lang/String;

    .line 135
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDate()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/keephealth/android/model/bean/SleepDetailVO$DaySleep;->date:J

    .line 136
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v12

    add-int/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    .line 140
    iget-object v12, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    .line 141
    iget-object v13, v12, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->daySleeps:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
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

    .line 145
    invoke-virtual {v4, v9, v5}, Ljava/util/Calendar;->add(II)V

    .line 147
    rem-int/lit8 v5, v7, 0x7

    if-nez v5, :cond_1a1

    .line 148
    new-instance v5, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;-><init>()V

    .line 149
    invoke-virtual {v0, v4}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->label:Ljava/lang/String;

    .line 150
    iget-object v9, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

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

    .line 156
    :goto_1a8
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_1c8

    .line 157
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;

    .line 158
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO$WeekSleep;->avgTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 159
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1c5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a8

    :cond_1c8
    return-void
.end method


# virtual methods
.method public getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 433
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetailNew()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 55
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekSleep()V

    .line 56
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 3

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;

    .line 45
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekSleep()V

    .line 46
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailNew()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 17

    move-object/from16 v0, p0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->currentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "detailTimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DetailTimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 440
    new-instance v1, Lcom/keephealth/android/model/bean/SleepDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/SleepDetailVO;-><init>()V

    .line 441
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v3

    .line 443
    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    .line 450
    sget-object v4, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v5, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5cc

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5cc

    const/4 v7, 0x3

    if-eq v4, v7, :cond_5cc

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v4, v8, :cond_71

    move v4, v9

    move v11, v4

    move v12, v11

    move v13, v12

    move v14, v13

    move-object v9, v1

    move-object v1, v0

    move v0, v14

    goto/16 :goto_560

    .line 453
    :cond_71
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v11, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->year:I

    .line 454
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v11, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v13, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->month:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v9

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v13, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    .line 455
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v5

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v13, 0x14

    .line 456
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v6

    .line 454
    invoke-virtual {v4, v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v10, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v9

    .line 457
    invoke-virtual {v4, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x5

    if-eqz v4, :cond_2a9

    .line 458
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2a9

    .line 459
    iget-object v11, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Calendar;

    .line 460
    iget v12, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    sub-int/2addr v12, v5

    invoke-virtual {v11, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 461
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 462
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v5

    .line 463
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 464
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 466
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 467
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    new-array v15, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v15, v9

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 468
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v15, v5

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 469
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v15, v6

    .line 467
    invoke-virtual {v3, v12, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v10, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v9

    .line 470
    invoke-virtual {v3, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    .line 471
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 474
    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v3, v9

    move v4, v3

    move v11, v4

    move v12, v11

    move v13, v12

    move v14, v13

    .line 475
    :goto_145
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_2a4

    .line 476
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 477
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    if-eq v9, v5, :cond_174

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    if-eq v9, v7, :cond_174

    .line 478
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    if-eq v9, v6, :cond_174

    .line 479
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    if-eq v9, v8, :cond_174

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    const/4 v8, 0x5

    if-ne v9, v8, :cond_171

    goto :goto_174

    :cond_171
    move-object v9, v1

    goto/16 :goto_299

    .line 480
    :cond_174
    :goto_174
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v5, :cond_24a

    .line 482
    sget-boolean v8, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->isSleepNew:Z

    if-eqz v8, :cond_242

    add-int/lit8 v8, v3, 0x1

    .line 483
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_237

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    if-ne v9, v6, :cond_237

    .line 484
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 485
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 486
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 487
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 488
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 489
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    .line 490
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    move-object v9, v1

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 491
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v1

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    goto :goto_299

    :cond_237
    move-object v9, v1

    .line 494
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int/2addr v12, v0

    const/4 v0, 0x2

    .line 495
    invoke-virtual {v15, v0}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_27d

    :cond_242
    move-object v9, v1

    move v0, v6

    .line 498
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_27d

    :cond_24a
    move-object v9, v1

    move v0, v6

    .line 500
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    if-ne v1, v7, :cond_258

    .line 501
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v1

    add-int/2addr v11, v1

    goto :goto_27d

    .line 502
    :cond_258
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v1

    if-ne v1, v0, :cond_264

    .line 503
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int/2addr v12, v0

    goto :goto_27d

    .line 504
    :cond_264
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_271

    .line 505
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int/2addr v14, v0

    goto :goto_27d

    .line 506
    :cond_271
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_27d

    .line 507
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v0

    add-int/2addr v13, v0

    .line 509
    :cond_27d
    :goto_27d
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-virtual {v15, v0}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleeptime(Ljava/lang/String;)V

    .line 511
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_299
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    goto/16 :goto_145

    :cond_2a4
    move-object v9, v1

    move-object/from16 v1, p0

    goto/16 :goto_4a0

    :cond_2a9
    move-object v9, v1

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 516
    iget-object v4, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    .line 517
    iget v5, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v8, 0x5

    invoke-virtual {v4, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 518
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v10, 0x2

    .line 519
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v6

    .line 520
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 521
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 523
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 524
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 525
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 526
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v5, v8

    .line 524
    invoke-virtual {v0, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 527
    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 529
    :goto_326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4a0

    .line 530
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    .line 532
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 534
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_359

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    if-eq v6, v7, :cond_359

    .line 535
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_359

    .line 536
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v8, 0x4

    if-eq v6, v8, :cond_359

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_41c

    .line 537
    :cond_359
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_433

    .line 539
    sget-boolean v6, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v6, :cond_42a

    add-int/lit8 v6, v3, 0x1

    .line 540
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_420

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_420

    .line 541
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 542
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 543
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 544
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 545
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 546
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    .line 547
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 548
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    :cond_41c
    const/4 v8, 0x3

    const/4 v10, 0x5

    goto/16 :goto_49b

    .line 551
    :cond_420
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    add-int/2addr v12, v6

    const/4 v6, 0x2

    .line 552
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_430

    :cond_42a
    const/4 v6, 0x2

    .line 555
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v7

    add-int/2addr v4, v7

    :goto_430
    const/4 v7, 0x4

    const/4 v8, 0x3

    goto :goto_441

    :cond_433
    const/4 v6, 0x2

    .line 557
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_443

    .line 558
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v7

    add-int/2addr v11, v7

    :goto_440
    const/4 v7, 0x4

    :goto_441
    const/4 v10, 0x5

    goto :goto_468

    .line 559
    :cond_443
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v7

    if-ne v7, v6, :cond_44f

    .line 560
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    add-int/2addr v12, v6

    goto :goto_440

    .line 561
    :cond_44f
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_45c

    .line 562
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    add-int/2addr v14, v6

    goto :goto_441

    .line 563
    :cond_45c
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v6

    const/4 v10, 0x5

    if-ne v6, v10, :cond_468

    .line 564
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v6

    add-int/2addr v13, v6

    .line 566
    :cond_468
    :goto_468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getHour()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ":"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMinuter()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 567
    invoke-static {}, Lcom/keephealth/android/util/CommonUtil;->is24Hour()Z

    move-result v15

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v15, v7}, Lcom/keephealth/android/util/CommonUtil;->timeFormatter(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleeptime(Ljava/lang/String;)V

    .line 568
    iget-object v6, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_49b
    add-int/lit8 v3, v3, 0x1

    move v7, v8

    goto/16 :goto_326

    .line 572
    :cond_4a0
    :goto_4a0
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d4

    .line 573
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    iget-object v3, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleeptime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    iget-object v3, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    iget-object v5, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleeptime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f7

    .line 576
    :cond_4d4
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v3, "21:00"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v3, "24:00"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v3, "04:00"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v3, "08:00"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v3, "11:00"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4f7
    add-int v0, v4, v11

    add-int/2addr v0, v12

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    .line 583
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v3

    .line 584
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v6, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->year:I

    .line 585
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v8, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v10, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    .line 586
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v6, v10

    .line 585
    invoke-virtual {v3, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v5, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v8

    .line 587
    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_560

    .line 588
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_560

    .line 589
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_560
    :goto_560
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 598
    iget-object v2, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 599
    iget-object v2, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 600
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v0, v0, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 601
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v0, v0, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0, v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 602
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v0, v0, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 603
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v0, v0, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 604
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v0, v0, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0, v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 605
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v0, v0, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v0, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 606
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 608
    iget-object v0, v1, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    iput-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    .line 610
    iget-object v0, v9, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-object v9

    :cond_5cc
    move-object v1, v0

    .line 595
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getDetailNext(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->nextDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 61
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekSleep()V

    .line 62
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailOld()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 17

    move-object/from16 v0, p0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->currentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "detailTimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DetailTimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 616
    new-instance v1, Lcom/keephealth/android/model/bean/SleepDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/SleepDetailVO;-><init>()V

    .line 617
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v3

    .line 619
    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    .line 626
    sget-object v4, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v5, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

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

    .line 629
    :cond_6e
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v11, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->year:I

    .line 630
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    new-array v11, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v13, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->month:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v9

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v13, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    .line 631
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v5

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v13, 0xb

    .line 632
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    aput-object v12, v11, v6

    .line 630
    invoke-virtual {v4, v10, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v10, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v11, v10, v9

    .line 633
    invoke-virtual {v4, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x5

    if-eqz v4, :cond_1e0

    .line 634
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1e0

    .line 635
    iget-object v11, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Calendar;

    .line 636
    iget v12, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    sub-int/2addr v12, v5

    invoke-virtual {v11, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 637
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 638
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v5

    .line 639
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 640
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 642
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 643
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

    .line 644
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v14, v5

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v13, 0x15

    .line 645
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v14, v6

    .line 643
    invoke-virtual {v3, v12, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v11, v5, [Lorg/greenrobot/greendao/Property;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v12, v11, v9

    .line 646
    invoke-virtual {v3, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    .line 647
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 649
    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 650
    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v3, v9

    move v4, v3

    move v12, v4

    move v13, v12

    move v14, v13

    move v15, v14

    .line 651
    :goto_144
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3a6

    .line 652
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 653
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v5, :cond_16f

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v7, :cond_16f

    .line 654
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v6, :cond_16f

    .line 655
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v8, :cond_16f

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v8, 0x5

    if-ne v10, v8, :cond_1d8

    .line 656
    :cond_16f
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v5, :cond_188

    .line 657
    sget-boolean v8, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v8, :cond_182

    .line 658
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v13, v8

    .line 659
    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_1b9

    .line 661
    :cond_182
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_1b9

    .line 663
    :cond_188
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v7, :cond_194

    .line 664
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v12, v8

    goto :goto_1b9

    .line 665
    :cond_194
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    if-ne v8, v6, :cond_1a0

    .line 666
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v13, v8

    goto :goto_1b9

    .line 667
    :cond_1a0
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_1ad

    .line 668
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v15, v8

    goto :goto_1b9

    .line 669
    :cond_1ad
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v8

    const/4 v10, 0x5

    if-ne v8, v10, :cond_1b9

    .line 670
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    add-int/2addr v14, v8

    .line 672
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

    .line 673
    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setIndex(I)V

    .line 674
    invoke-virtual {v9, v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleeptime(Ljava/lang/String;)V

    .line 675
    iget-object v5, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d8
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v10, 0x5

    goto/16 :goto_144

    .line 679
    :cond_1e0
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v6, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->year:I

    .line 680
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v9, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->month:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v8, v9

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    .line 681
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v8, v10

    .line 680
    invoke-virtual {v4, v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v5, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v9

    .line 682
    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3a1

    .line 683
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3a1

    .line 684
    iget-object v5, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 685
    iget v6, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    const/4 v9, 0x5

    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 686
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v10, 0x2

    .line 687
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v8

    .line 688
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 689
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 691
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 692
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

    .line 693
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 692
    invoke-virtual {v3, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v5, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v10

    .line 694
    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    .line 695
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

    .line 698
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    const/16 v9, 0x12

    if-ge v6, v9, :cond_2c3

    if-eqz v3, :cond_2d1

    .line 701
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_2d1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v9, :cond_2d1

    .line 702
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    add-int/2addr v8, v6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    goto :goto_2d1

    .line 706
    :cond_2c3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_2d1

    add-int/lit8 v8, v6, -0x12

    .line 707
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 711
    :cond_2d1
    :goto_2d1
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2f3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    if-eq v10, v7, :cond_2f3

    .line 712
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2f3

    .line 713
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2f3

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_39a

    .line 714
    :cond_2f3
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_30f

    .line 715
    sget-boolean v10, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->isSleepNew:Z

    if-eqz v10, :cond_308

    .line 716
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v13, v10

    const/4 v10, 0x2

    .line 717
    invoke-virtual {v8, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    goto :goto_31b

    :cond_308
    const/4 v10, 0x2

    .line 719
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    add-int/2addr v5, v11

    goto :goto_31b

    :cond_30f
    const/4 v10, 0x2

    .line 721
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    if-ne v11, v7, :cond_31e

    .line 722
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v11

    add-int/2addr v12, v11

    :goto_31b
    const/4 v7, 0x5

    const/4 v11, 0x4

    goto :goto_344

    .line 723
    :cond_31e
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v11

    if-ne v11, v10, :cond_32a

    .line 724
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v13, v10

    goto :goto_31b

    .line 725
    :cond_32a
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_338

    .line 726
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v15, v10

    const/4 v7, 0x5

    goto :goto_344

    .line 727
    :cond_338
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v10

    const/4 v7, 0x5

    if-ne v10, v7, :cond_344

    .line 728
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v10

    add-int/2addr v14, v10

    .line 731
    :cond_344
    :goto_344
    const-string v10, ":"

    if-gt v6, v9, :cond_366

    .line 732
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

    .line 734
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

    .line 736
    :goto_383
    invoke-virtual {v8, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setIndex(I)V

    .line 737
    invoke-static {}, Lcom/keephealth/android/util/CommonUtil;->is24Hour()Z

    move-result v9

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/keephealth/android/util/CommonUtil;->timeFormatter(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleeptime(Ljava/lang/String;)V

    .line 738
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

    .line 743
    :cond_3a6
    :goto_3a6
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3da

    .line 744
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    iget-object v5, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleeptime()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
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

    .line 747
    :cond_3da
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "21:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "24:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "04:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "08:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v3, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "11:00"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3fd
    add-int v3, v4, v12

    add-int/2addr v3, v13

    add-int/2addr v3, v14

    add-int/2addr v3, v15

    .line 754
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v5

    .line 755
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->year:I

    .line 756
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v9, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->month:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->day:I

    .line 757
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 756
    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v6, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v9

    .line 758
    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_466

    .line 759
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_466

    .line 760
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_466
    move v9, v3

    .line 768
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

    .line 769
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 770
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    .line 771
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    .line 772
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 773
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v13}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 774
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 775
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 776
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {v2, v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 777
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 779
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->weekSleeps:Ljava/util/List;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    .line 781
    iget-object v2, v1, Lcom/keephealth/android/model/bean/SleepDetailVO;->weekSleeps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-object v1

    .line 766
    :cond_4d3
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v1

    return-object v1
.end method

.method public getDetailPre(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 67
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekSleep()V

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getDetail()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getOneMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 426
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->setOneMonth()V

    .line 427
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getSixMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->setSixMonth()V

    .line 73
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekSleep()V

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getYearMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->setYear()V

    .line 79
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->getWeekSleep()V

    .line 80
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailSleepNewPresenter;->get()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    return-object v0
.end method
