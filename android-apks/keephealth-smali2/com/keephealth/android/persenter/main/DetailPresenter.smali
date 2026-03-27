.class public Lcom/keephealth/android/persenter/main/DetailPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "DetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/persenter/sport/BaseTimePresenter<",
        "Lcom/keephealth/android/persenter/main/IDetailStep;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    return-void
.end method

.method private addTo(Lcom/keephealth/android/greendao/bean/HealthSport;Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 5

    .line 75
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 76
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 77
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 78
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalActiveTime(I)V

    return-void
.end method

.method private clear(Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 4

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 83
    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 84
    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalActiveTime(I)V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setRemark(Ljava/lang/String;)V

    return-void
.end method

.method private get(I)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 92
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/persenter/main/DetailPresenter;->endDate:Ljava/util/Date;

    .line 95
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/persenter/main/DetailPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    .line 96
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sports:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "trtr4r"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u6b65\u6570\u8be6\u60c5\u9875\u9762\u67e5\u8be2\u83b7\u53d6\u768430\u5929\u7684\u6570\u636e:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 100
    sget-object v7, Lcom/keephealth/android/persenter/main/DetailPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0x17

    const/16 v8, 0xb

    .line 101
    invoke-virtual {v5, v8, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    const/16 v9, 0x3b

    .line 102
    invoke-virtual {v5, v7, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    .line 103
    invoke-virtual {v5, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    .line 109
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    .line 111
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "temp.getTime().getTime():"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   startDate.getTime():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/keephealth/android/persenter/main/DetailPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v4

    move v14, v13

    move v15, v14

    .line 112
    :goto_e0
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sget-object v18, Lcom/keephealth/android/persenter/main/DetailPresenter;->startDate:Ljava/util/Date;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_353

    .line 115
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v7, 0x2

    .line 116
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    const/4 v7, 0x5

    .line 117
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    :goto_108
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v7, v22

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSport;

    move-object/from16 v22, v2

    .line 119
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v2

    if-ne v2, v10, :cond_148

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v2

    if-ne v2, v8, :cond_148

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v2

    if-ne v2, v3, :cond_148

    .line 121
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayStepCount(I)V

    .line 122
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayCalory(F)V

    .line 123
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayDistance(F)V

    .line 124
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayActiveTime(I)V

    move-object/from16 v21, v7

    :cond_148
    move-object/from16 v2, v22

    const/4 v7, 0x5

    goto :goto_108

    :cond_14c
    move-object/from16 v22, v2

    if-nez v21, :cond_155

    .line 128
    new-instance v21, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    :cond_155
    move-object/from16 v2, v21

    .line 130
    invoke-direct {v0, v12, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->addTo(Lcom/keephealth/android/greendao/bean/HealthSport;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    .line 131
    sget-object v7, Lcom/keephealth/android/persenter/main/DetailPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    move-object/from16 v20, v12

    iget-object v12, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v12}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v12

    aget v7, v7, v12

    const/4 v12, 0x1

    if-eq v7, v12, :cond_2f9

    const/4 v12, 0x2

    if-eq v7, v12, :cond_271

    const/4 v12, 0x3

    if-eq v7, v12, :cond_175

    move-object v12, v6

    :cond_170
    :goto_170
    const/4 v2, 0x5

    const/4 v3, 0x0

    :goto_172
    const/4 v4, 0x1

    goto/16 :goto_33e

    .line 172
    :cond_175
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_18c

    .line 173
    sget-object v7, Lcom/keephealth/android/persenter/main/DetailPresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->setRemark(Ljava/lang/String;)V

    .line 175
    :cond_18c
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v7

    if-lez v7, :cond_194

    add-int/lit8 v15, v15, 0x1

    .line 178
    :cond_194
    invoke-direct {v0, v11, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->addTo(Lcom/keephealth/android/greendao/bean/HealthSport;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    move-object v12, v6

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/keephealth/android/persenter/main/DetailPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 182
    sget-object v6, Lcom/keephealth/android/persenter/main/DetailPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v6, 0x0

    const/16 v7, 0xb

    .line 183
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 184
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 185
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 186
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 187
    invoke-virtual {v0, v10, v4, v3}, Lcom/keephealth/android/persenter/main/DetailPresenter;->isEndMonth(III)Z

    move-result v3

    if-nez v3, :cond_1f2

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->isDateEquals(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 189
    :cond_1f2
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v13, v5, v8}, Lcom/keephealth/android/persenter/main/DetailPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 191
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    if-eqz v15, :cond_243

    .line 193
    invoke-virtual {v2, v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->setItemCount(I)V

    .line 194
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 195
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v3

    div-int/2addr v3, v15

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayStepCount(I)V

    .line 196
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 197
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v3

    int-to-float v4, v15

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayCalory(F)V

    .line 198
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 199
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayDistance(F)V

    .line 200
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalActiveTime(I)V

    .line 201
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v3

    div-int/2addr v3, v15

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayActiveTime(I)V

    .line 204
    :cond_243
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setRemark(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 206
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-direct {v0, v11}, Lcom/keephealth/android/persenter/main/DetailPresenter;->clear(Lcom/keephealth/android/greendao/bean/HealthSport;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e00\u5e74_a:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v15, 0x0

    goto/16 :goto_33e

    :cond_271
    move-object v12, v6

    .line 143
    invoke-direct {v0, v11, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->addTo(Lcom/keephealth/android/greendao/bean/HealthSport;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    .line 144
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v2

    if-lez v2, :cond_27d

    add-int/lit8 v15, v15, 0x1

    :cond_27d
    const/4 v2, 0x0

    .line 147
    invoke-virtual {v0, v13, v5, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 148
    invoke-virtual {v0, v13, v5}, Lcom/keephealth/android/persenter/main/DetailPresenter;->isWeek(ILjava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_2f5

    .line 149
    new-instance v2, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    if-eqz v15, :cond_2ce

    .line 151
    invoke-virtual {v2, v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->setItemCount(I)V

    .line 152
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 153
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v3

    div-int/2addr v3, v15

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayStepCount(I)V

    .line 154
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 155
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v3

    int-to-float v4, v15

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayCalory(F)V

    .line 156
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 157
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayDistance(F)V

    .line 158
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalActiveTime(I)V

    .line 159
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v3

    div-int/2addr v3, v15

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayActiveTime(I)V

    .line 161
    :cond_2ce
    invoke-virtual {v0, v5}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setRemark(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 163
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-direct {v0, v11}, Lcom/keephealth/android/persenter/main/DetailPresenter;->clear(Lcom/keephealth/android/greendao/bean/HealthSport;)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u516d\u4e2a\u6708_a:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    :cond_2f5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_170

    :cond_2f9
    move-object v12, v6

    const/4 v3, 0x0

    .line 134
    invoke-virtual {v0, v13, v5, v3}, Lcom/keephealth/android/persenter/main/DetailPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 135
    sget-object v4, Lcom/keephealth/android/persenter/main/DetailPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->setRemark(Ljava/lang/String;)V

    .line 136
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v2

    add-int/2addr v14, v2

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u4e00\u4e2a\u6708_a:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  total_step:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x5

    goto/16 :goto_172

    .line 224
    :goto_33e
    invoke-virtual {v5, v2, v4}, Ljava/util/Calendar;->add(II)V

    move-object v6, v12

    move-object/from16 v12, v20

    move-object/from16 v2, v22

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v10, 0xd

    move/from16 v23, v4

    move v4, v3

    move/from16 v3, v23

    goto/16 :goto_e0

    :cond_353
    move v3, v4

    move-object/from16 v20, v12

    .line 227
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/keephealth/android/model/bean/StepDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/StepDetailVO;-><init>()V

    .line 229
    iput-object v9, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->healthSportList:Ljava/util/List;

    .line 230
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->dates:Ljava/util/List;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object v2

    iput-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    :goto_379
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_389

    .line 234
    invoke-static {v9, v4}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getHealthSportItem(Ljava/util/List;I)Lcom/keephealth/android/greendao/bean/HealthSportItem;

    move-result-object v3

    .line 235
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_379

    .line 237
    :cond_389
    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    move-object/from16 v4, v20

    iput-object v4, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 238
    iput-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->items:Ljava/util/List;

    return-object v1
.end method

.method private static getHealthSportItem(Ljava/util/List;I)Lcom/keephealth/android/greendao/bean/HealthSportItem;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSport;",
            ">;I)",
            "Lcom/keephealth/android/greendao/bean/HealthSportItem;"
        }
    .end annotation

    .line 244
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 245
    new-instance p1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {p1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 246
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setItemCount(I)V

    .line 247
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 248
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 249
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setActiveTime(I)V

    .line 251
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setRemark(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayActiveTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgActiveTime(I)V

    .line 253
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayStepCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgStep(I)V

    .line 254
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayCalory()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgCalory(F)V

    .line 255
    invoke-virtual {p0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayDistance()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgDistance(F)V

    return-object p1
.end method


# virtual methods
.method public getDetail(I)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 28

    move-object/from16 v0, p0

    .line 266
    new-instance v1, Lcom/keephealth/android/model/bean/StepDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/StepDetailVO;-><init>()V

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iput-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->healthSportList:Ljava/util/List;

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDetail_a:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trtr4r"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v3, Lcom/keephealth/android/persenter/main/DetailPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v5, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eq v3, v6, :cond_432

    const/4 v7, 0x2

    if-eq v3, v7, :cond_432

    const/4 v8, 0x3

    if-eq v3, v8, :cond_432

    if-eq v3, v5, :cond_3c

    goto/16 :goto_3fb

    .line 273
    :cond_3c
    const-string v3, "\u4e00\u5929"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v3

    .line 315
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 316
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_5c
    const/16 v15, 0x18

    if-ge v11, v15, :cond_342

    .line 324
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v15

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v9, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->year:I

    .line 325
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v9, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v10

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v8, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->day:I

    .line 326
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v9, v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v9, v8

    .line 325
    invoke-virtual {v15, v5, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v7, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v10

    .line 327
    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    .line 328
    new-instance v7, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 329
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_301

    .line 330
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v15, v10

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_c4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 331
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v21

    add-int v6, v20, v21

    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 332
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v20

    const/high16 v21, 0x41200000    # 10.0f

    mul-float v20, v20, v21

    add-float v6, v6, v20

    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 333
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v20

    add-float v6, v6, v20

    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 334
    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v6

    add-int/2addr v15, v6

    .line 335
    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v6

    add-float/2addr v9, v6

    .line 336
    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v6

    add-float v18, v18, v6

    .line 337
    invoke-virtual/range {v19 .. v19}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v6

    if-lez v6, :cond_11a

    .line 338
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getActiveTime()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setActiveTime(I)V

    :cond_11a
    const/4 v6, 0x1

    goto :goto_c4

    :cond_11c
    add-float/2addr v13, v9

    add-int/2addr v12, v15

    add-float v14, v14, v18

    .line 350
    sget v6, Lcom/keephealth/android/app/AppApplication;->hourNow:I

    if-ne v6, v11, :cond_2ee

    .line 351
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    const-string v8, "HOME_DATA_TIME"

    const-string v10, ""

    invoke-static {v6, v8, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2ee

    .line 356
    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2ee

    .line 357
    array-length v8, v6

    const/4 v10, 0x2

    if-le v8, v10, :cond_2ee

    const/4 v8, 0x0

    .line 359
    aget-object v17, v6, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->year:I

    if-ne v8, v10, :cond_2ee

    const/4 v8, 0x1

    aget-object v10, v6, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->month:I

    if-ne v8, v10, :cond_2ee

    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v8, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->day:I

    if-ne v6, v8, :cond_2ee

    .line 361
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    const-string v8, "HOME_DATA_CAL"

    const/4 v10, 0x0

    invoke-static {v6, v8, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 362
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v8

    move-object/from16 v20, v2

    const-string v2, "HOME_DATA_STEP"

    invoke-static {v8, v2, v10}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 363
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v8

    const-string v10, "HOME_DATA_DISTANCE"

    move-object/from16 v21, v4

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v8, v10, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)F

    move-result v4

    .line 365
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 367
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v8

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    move-object/from16 v22, v3

    iget v3, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->year:I

    .line 368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    move-object/from16 v23, v1

    const/4 v10, 0x4

    new-array v1, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    move-object/from16 v24, v7

    iget v7, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v1, v10

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->day:I

    .line 369
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v1, v10

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v1, v10

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Minute:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v1, v7

    .line 368
    invoke-virtual {v8, v3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v8, 0x0

    aput-object v3, v5, v8

    .line 370
    invoke-virtual {v1, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 372
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v3

    .line 373
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v10, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->year:I

    .line 374
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v10, 0x2

    new-array v7, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    move/from16 v25, v11

    iget v11, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->month:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v11, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->day:I

    .line 375
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    .line 374
    invoke-virtual {v5, v8, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v7, v11, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x0

    aput-object v8, v7, v10

    .line 376
    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSport;

    int-to-float v6, v6

    cmpg-float v7, v13, v6

    if-gtz v7, :cond_276

    sub-float v7, v6, v13

    add-float/2addr v9, v7

    if-eqz v1, :cond_272

    .line 381
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v7

    add-float/2addr v7, v6

    sub-float/2addr v7, v13

    invoke-virtual {v1, v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 383
    :cond_272
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    goto :goto_282

    .line 385
    :cond_276
    invoke-virtual {v5, v13}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    if-eqz v1, :cond_282

    .line 387
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    :cond_282
    :goto_282
    if-gt v12, v2, :cond_296

    sub-int v6, v2, v12

    add-int/2addr v15, v6

    if-eqz v1, :cond_292

    .line 393
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v6

    add-int/2addr v6, v2

    sub-int/2addr v6, v12

    invoke-virtual {v1, v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 395
    :cond_292
    invoke-virtual {v5, v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    goto :goto_2a2

    .line 397
    :cond_296
    invoke-virtual {v5, v12}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    if-eqz v1, :cond_2a2

    .line 399
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    :cond_2a2
    :goto_2a2
    cmpg-float v2, v14, v4

    if-gtz v2, :cond_2bb

    sub-float v2, v4, v14

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v18, v18, v2

    if-eqz v1, :cond_2b7

    .line 405
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v2

    add-float/2addr v2, v4

    sub-float/2addr v2, v14

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 407
    :cond_2b7
    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    goto :goto_2c7

    .line 409
    :cond_2bb
    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    if-eqz v1, :cond_2c7

    .line 411
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 414
    :cond_2c7
    :goto_2c7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fee\u6539\u6570\u636e\u540e\u66f4\u65b0\u6570\u636e\u5e93_sport:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r5r5t"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 416
    new-array v2, v1, [Lcom/keephealth/android/greendao/bean/HealthSport;

    const/4 v1, 0x0

    aput-object v5, v2, v1

    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->updateInTx([Ljava/lang/Object;)V

    goto :goto_2fc

    :cond_2ee
    move-object/from16 v23, v1

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move-object/from16 v24, v7

    move/from16 v25, v11

    const/16 v16, 0x0

    :goto_2fc
    move/from16 v1, v18

    move-object/from16 v2, v24

    goto :goto_312

    :cond_301
    move-object/from16 v23, v1

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v25, v11

    const/16 v16, 0x0

    move-object v2, v7

    move/from16 v1, v16

    move v9, v1

    const/4 v15, 0x0

    .line 423
    :goto_312
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    .line 424
    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 425
    invoke-virtual {v2, v15}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 427
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%02d:00"

    invoke-static {v3, v1}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setRemark(Ljava/lang/String;)V

    move-object/from16 v1, v23

    .line 428
    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v25, 0x1

    move-object/from16 v2, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v10, 0x0

    goto/16 :goto_5c

    :cond_342
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .line 438
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    const-string v3, "00:00"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    const-string v3, "06:00"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    const-string v3, "12:00"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    const-string v3, "18:00"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    const-string v3, "23:59"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 444
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 445
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 446
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual/range {v21 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getActiveTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalActiveTime(I)V

    .line 447
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v4, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->year:I

    .line 449
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v6, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->month:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->day:I

    .line 450
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 449
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v3, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v6

    .line 451
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3fb

    .line 452
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3fb

    .line 453
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSport;

    move-object/from16 v3, v20

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_3fb
    :goto_3fb
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 462
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 463
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 464
    iget-object v2, v0, Lcom/keephealth/android/persenter/main/DetailPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    return-object v1

    :cond_432
    move v1, v5

    .line 459
    invoke-direct {v0, v1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->get(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v1

    return-object v1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    const/4 p1, 0x2

    .line 56
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetail(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 3

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetail(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailNext(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->nextDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    const/4 p1, 0x3

    .line 60
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetail(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailPre(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    const/4 p1, 0x4

    .line 64
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetail(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getOneMonth(I)Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOneMonth_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trtr4r"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->setOneMonth()V

    const/4 p1, 0x3

    .line 262
    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->get(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getSixMonth()Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->setSixMonth()V

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->get(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getYearMonth()Lcom/keephealth/android/model/bean/StepDetailVO;
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->setYear()V

    const/4 v0, 0x2

    .line 72
    invoke-direct {p0, v0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->get(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    return-object v0
.end method
