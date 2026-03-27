.class public Lcom/keephealth/android/persenter/main/DetailHrPresenter;
.super Lcom/keephealth/android/persenter/sport/BaseTimePresenter;
.source "DetailHrPresenter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;-><init>()V

    return-void
.end method

.method private get()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 20

    move-object/from16 v0, p0

    .line 90
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 91
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->endDate:Ljava/util/Date;

    .line 93
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->startDate:Ljava/util/Date;

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

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v3

    .line 94
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 96
    sget-object v5, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0x17

    const/16 v6, 0xb

    .line 97
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/16 v7, 0x3b

    .line 98
    invoke-virtual {v4, v5, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 99
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 100
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    move v10, v3

    move v11, v10

    .line 105
    :goto_73
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-object v14, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x2

    if-gtz v12, :cond_1fb

    .line 108
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 109
    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 110
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :cond_9c
    :goto_9c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_bd

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 112
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v14

    if-ne v14, v12, :cond_9c

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v14

    if-ne v14, v5, :cond_9c

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v14

    if-ne v14, v3, :cond_9c

    move-object/from16 v17, v18

    goto :goto_9c

    :cond_bd
    if-nez v17, :cond_c4

    .line 117
    new-instance v17, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct/range {v17 .. v17}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    :cond_c4
    move-object/from16 v14, v17

    .line 119
    sget-object v16, Lcom/keephealth/android/persenter/main/DetailHrPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v6, v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v6

    aget v6, v16, v6

    if-eq v6, v2, :cond_1cf

    if-eq v6, v15, :cond_184

    if-eq v6, v13, :cond_dd

    :cond_d6
    const/16 v3, 0xb

    const/16 v5, 0xd

    :goto_da
    const/4 v6, 0x5

    goto/16 :goto_1f1

    .line 157
    :cond_dd
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    if-lez v6, :cond_e5

    add-int/lit8 v11, v11, 0x1

    .line 160
    :cond_e5
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v13

    add-int/2addr v6, v13

    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 162
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 163
    sget-object v6, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 165
    :cond_108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 166
    sget-object v13, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v13, 0x0

    const/16 v14, 0xb

    .line 167
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xc

    .line 168
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xd

    .line 169
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xe

    .line 170
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    .line 171
    invoke-virtual {v0, v12, v8, v3}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->isEndMonth(III)Z

    move-result v3

    if-nez v3, :cond_13a

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->isDateEquals(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 176
    :cond_13a
    invoke-virtual {v0, v10, v4, v5}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 177
    new-instance v3, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 178
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setYear(I)V

    .line 180
    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMonth(I)V

    if-eqz v11, :cond_173

    .line 181
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v5

    if-eqz v5, :cond_173

    .line 182
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v5

    div-int/2addr v5, v11

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 183
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v5

    div-int/2addr v5, v11

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgDayHr(I)V

    .line 184
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_173
    const/4 v3, 0x0

    .line 186
    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0xb

    const/16 v5, 0xd

    const/4 v6, 0x5

    const/4 v11, 0x0

    goto :goto_1f1

    :cond_184
    const/16 v3, 0xb

    const/16 v5, 0xd

    .line 129
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    if-lez v6, :cond_190

    add-int/lit8 v11, v11, 0x1

    .line 132
    :cond_190
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    const/4 v6, 0x0

    .line 136
    invoke-virtual {v0, v10, v4, v6}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 138
    invoke-virtual {v0, v10, v4}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->isWeek(ILjava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_1cd

    .line 139
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    if-eqz v11, :cond_1c7

    .line 141
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v8

    div-int/2addr v8, v11

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 142
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v8

    div-int/2addr v8, v11

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgDayHr(I)V

    .line 143
    invoke-virtual {v0, v4}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 144
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c7
    const/4 v6, 0x0

    .line 150
    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    move v11, v6

    goto :goto_1ed

    :cond_1cd
    const/4 v6, 0x0

    goto :goto_1ed

    :cond_1cf
    const/16 v3, 0xb

    const/16 v5, 0xd

    const/4 v6, 0x0

    .line 121
    invoke-virtual {v0, v10, v4, v6}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 122
    sget-object v6, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    if-lez v6, :cond_1ed

    .line 124
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1ed
    :goto_1ed
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_da

    .line 194
    :goto_1f1
    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->add(II)V

    move v6, v3

    move v8, v5

    const/4 v3, 0x0

    const/16 v5, 0xc

    goto/16 :goto_73

    .line 197
    :cond_1fb
    new-instance v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/HeartRateDetailVO;-><init>()V

    .line 198
    iput-object v7, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->healthSportList:Ljava/util/List;

    .line 199
    sget-object v3, Lcom/keephealth/android/persenter/main/DetailHrPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v4, v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0xa

    if-eq v3, v2, :cond_2b6

    if-eq v3, v15, :cond_255

    if-eq v3, v13, :cond_217

    goto/16 :goto_312

    :cond_217
    const/4 v13, 0x0

    .line 233
    :goto_218
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_312

    .line 234
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x7

    if-gt v3, v4, :cond_23a

    .line 235
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_252

    :cond_23a
    const/4 v9, 0x5

    .line 237
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_252

    .line 238
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_252
    :goto_252
    add-int/lit8 v13, v13, 0x1

    goto :goto_218

    :cond_255
    const/4 v13, 0x0

    .line 218
    :goto_256
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_312

    .line 219
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_27a

    .line 220
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xc

    :cond_278
    const/4 v9, 0x5

    goto :goto_2b3

    .line 221
    :cond_27a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0xc

    if-gt v3, v6, :cond_29b

    .line 222
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_278

    .line 223
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b3

    :cond_29b
    const/4 v9, 0x5

    .line 226
    rem-int/lit8 v3, v13, 0x4

    if-nez v3, :cond_2b3

    .line 227
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b3
    :goto_2b3
    add-int/lit8 v13, v13, 0x1

    goto :goto_256

    :cond_2b6
    const/4 v13, 0x0

    .line 201
    :goto_2b7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_312

    if-nez v13, :cond_2cf

    .line 203
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30f

    .line 204
    :cond_2cf
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v13, v3, :cond_2e6

    .line 205
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30f

    .line 207
    :cond_2e6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_2fc

    .line 208
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30f

    .line 210
    :cond_2fc
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_30f

    .line 211
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30f
    :goto_30f
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b7

    .line 244
    :cond_312
    :goto_312
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object v3

    iput-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 249
    :goto_325
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v13, v9, :cond_3cc

    .line 250
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 251
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 252
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, 0x5a0

    const/4 v14, 0x4

    if-lt v11, v14, :cond_350

    if-nez v13, :cond_345

    .line 254
    invoke-virtual {v10, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    goto :goto_34e

    .line 256
    :cond_345
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/2addr v12, v11

    invoke-virtual {v10, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    :goto_34e
    const/4 v14, 0x0

    goto :goto_36c

    .line 259
    :cond_350
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v2

    div-int/2addr v12, v11

    invoke-virtual {v10, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    .line 260
    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    const-string v12, ""

    const/4 v14, 0x0

    invoke-interface {v11, v14, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 261
    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    iget-object v15, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v11, v15, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 263
    :goto_36c
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 264
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setYear(I)V

    .line 266
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMonth(I)V

    .line 267
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v9

    add-int/2addr v8, v9

    if-nez v13, :cond_399

    .line 270
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    .line 272
    :cond_399
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    if-lez v9, :cond_3a1

    add-int/lit8 v6, v6, 0x1

    .line 275
    :cond_3a1
    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    .line 276
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    if-lez v9, :cond_3c8

    .line 277
    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    if-nez v9, :cond_3bc

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    goto :goto_3c6

    :cond_3bc
    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_3c6
    iput v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    :cond_3c8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_325

    :cond_3cc
    if-lez v6, :cond_3d1

    .line 282
    div-int/2addr v8, v6

    iput v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    .line 284
    :cond_3d1
    iget-object v2, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v4, v2, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 285
    iput-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    return-object v1
.end method

.method private getBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 20

    move-object/from16 v0, p0

    .line 289
    iget-object v1, v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->dates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 290
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->endDate:Ljava/util/Date;

    .line 292
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->startDate:Ljava/util/Date;

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

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v3

    .line 293
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 294
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 295
    sget-object v5, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0x17

    const/16 v6, 0xb

    .line 296
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/16 v7, 0x3b

    .line 297
    invoke-virtual {v4, v5, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    .line 298
    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 299
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    move v10, v3

    move v11, v10

    .line 304
    :goto_73
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sget-object v14, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x2

    if-gtz v12, :cond_212

    .line 307
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 308
    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 309
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 310
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :cond_9c
    :goto_9c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_bd

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 311
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v14

    if-ne v14, v12, :cond_9c

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v14

    if-ne v14, v5, :cond_9c

    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v14

    if-ne v14, v3, :cond_9c

    move-object/from16 v17, v18

    goto :goto_9c

    :cond_bd
    if-nez v17, :cond_c4

    .line 316
    new-instance v17, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct/range {v17 .. v17}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    :cond_c4
    move-object/from16 v14, v17

    .line 318
    sget-object v16, Lcom/keephealth/android/persenter/main/DetailHrPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v6, v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v6

    aget v6, v16, v6

    if-eq v6, v2, :cond_1ec

    if-eq v6, v15, :cond_1a1

    if-eq v6, v13, :cond_dd

    :cond_d6
    const/16 v3, 0xb

    const/16 v5, 0xd

    :goto_da
    const/4 v6, 0x5

    goto/16 :goto_208

    .line 364
    :cond_dd
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    if-lez v6, :cond_e5

    add-int/lit8 v11, v11, 0x1

    .line 367
    :cond_e5
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v13

    add-int/2addr v6, v13

    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 369
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 370
    sget-object v6, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 372
    :cond_108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 373
    sget-object v13, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v13, 0x0

    const/16 v14, 0xb

    .line 374
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xc

    .line 375
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xd

    .line 376
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0xe

    .line 377
    invoke-virtual {v6, v14, v13}, Ljava/util/Calendar;->set(II)V

    .line 378
    invoke-virtual {v0, v12, v8, v3}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->isEndMonth(III)Z

    move-result v3

    if-nez v3, :cond_13a

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->isDateEquals(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 383
    :cond_13a
    invoke-virtual {v0, v10, v4, v5}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 384
    new-instance v3, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 385
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setYear(I)V

    .line 387
    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMonth(I)V

    if-eqz v11, :cond_170

    .line 388
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v5

    if-eqz v5, :cond_170

    .line 389
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v5

    div-int/2addr v5, v11

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 390
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v5

    div-int/2addr v5, v11

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgDayHr(I)V

    .line 393
    :cond_170
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "s:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fr33r5re"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 395
    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    const/4 v3, 0x0

    .line 396
    invoke-virtual {v9, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0xb

    const/16 v5, 0xd

    const/4 v6, 0x5

    const/4 v11, 0x0

    goto :goto_208

    :cond_1a1
    const/16 v3, 0xb

    const/16 v5, 0xd

    .line 328
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    if-lez v6, :cond_1ad

    add-int/lit8 v11, v11, 0x1

    .line 331
    :cond_1ad
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v6

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    const/4 v6, 0x0

    .line 335
    invoke-virtual {v0, v10, v4, v6}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 341
    invoke-virtual {v0, v10, v4}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->isWeek(ILjava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_1ea

    .line 342
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    if-eqz v11, :cond_1da

    .line 344
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v8

    div-int/2addr v8, v11

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 345
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v8

    div-int/2addr v8, v11

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgDayHr(I)V

    .line 348
    :cond_1da
    invoke-virtual {v0, v4}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getWeekStr2(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 351
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 356
    invoke-virtual {v9, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    move v11, v6

    goto :goto_204

    :cond_1ea
    const/4 v6, 0x0

    goto :goto_204

    :cond_1ec
    const/16 v3, 0xb

    const/16 v5, 0xd

    const/4 v6, 0x0

    .line 320
    invoke-virtual {v0, v10, v4, v6}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setDateLabel(ILjava/util/Calendar;I)V

    .line 321
    sget-object v6, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    .line 323
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_204
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_da

    .line 403
    :goto_208
    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->add(II)V

    move v6, v3

    move v8, v5

    const/4 v3, 0x0

    const/16 v5, 0xc

    goto/16 :goto_73

    .line 406
    :cond_212
    new-instance v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/HeartRateDetailVO;-><init>()V

    .line 407
    iput-object v7, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->healthSportList:Ljava/util/List;

    .line 408
    sget-object v3, Lcom/keephealth/android/persenter/main/DetailHrPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v4, v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0xa

    if-eq v3, v2, :cond_2fe

    if-eq v3, v15, :cond_26c

    if-eq v3, v13, :cond_22e

    goto/16 :goto_35a

    :cond_22e
    const/4 v13, 0x0

    .line 448
    :goto_22f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_35a

    .line 449
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x7

    if-gt v3, v4, :cond_251

    .line 450
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_269

    :cond_251
    const/4 v9, 0x5

    .line 452
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_269

    .line 453
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_269
    :goto_269
    add-int/lit8 v13, v13, 0x1

    goto :goto_22f

    :cond_26c
    const/4 v13, 0x0

    .line 427
    :goto_26d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_35a

    .line 428
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_2a1

    .line 429
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29d

    .line 430
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29d
    const/16 v6, 0xc

    :cond_29f
    :goto_29f
    const/4 v9, 0x5

    goto :goto_2fa

    .line 432
    :cond_2a1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0xc

    if-gt v3, v6, :cond_2d2

    .line 433
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_29f

    .line 434
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29f

    .line 435
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29f

    .line 439
    :cond_2d2
    rem-int/lit8 v3, v13, 0x4

    if-nez v3, :cond_29f

    .line 440
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29f

    .line 441
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2fa
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_26d

    :cond_2fe
    const/4 v13, 0x0

    .line 410
    :goto_2ff
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_35a

    if-nez v13, :cond_317

    .line 412
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_357

    .line 413
    :cond_317
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v13, v3, :cond_32e

    .line 414
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_357

    .line 416
    :cond_32e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_344

    .line 417
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_357

    .line 419
    :cond_344
    rem-int/lit8 v3, v13, 0x2

    if-nez v3, :cond_357

    .line 420
    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_357
    :goto_357
    add-int/lit8 v13, v13, 0x1

    goto :goto_2ff

    .line 459
    :cond_35a
    :goto_35a
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getByDate()Lcom/keephealth/android/views/MainVO;

    move-result-object v3

    iput-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    .line 460
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 461
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 464
    :goto_36d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v13, v9, :cond_414

    .line 465
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 466
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 467
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, 0x5a0

    const/4 v14, 0x4

    if-lt v11, v14, :cond_398

    if-nez v13, :cond_38d

    .line 469
    invoke-virtual {v10, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    goto :goto_396

    .line 471
    :cond_38d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/2addr v12, v11

    invoke-virtual {v10, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    :goto_396
    const/4 v14, 0x0

    goto :goto_3b4

    .line 474
    :cond_398
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v2

    div-int/2addr v12, v11

    invoke-virtual {v10, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    .line 475
    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    const-string v12, ""

    const/4 v14, 0x0

    invoke-interface {v11, v14, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 476
    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    iget-object v15, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v11, v15, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 478
    :goto_3b4
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 479
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setYear(I)V

    .line 481
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMonth(I)V

    .line 482
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v9

    add-int/2addr v8, v9

    if-nez v13, :cond_3e1

    .line 485
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    .line 487
    :cond_3e1
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    if-lez v9, :cond_3e9

    add-int/lit8 v6, v6, 0x1

    .line 490
    :cond_3e9
    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    .line 491
    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    if-lez v9, :cond_410

    .line 492
    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    if-nez v9, :cond_404

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    goto :goto_40e

    :cond_404
    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_40e
    iput v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    :cond_410
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_36d

    :cond_414
    if-lez v6, :cond_419

    .line 497
    div-int/2addr v8, v6

    iput v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    .line 499
    :cond_419
    iget-object v2, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v4, v2, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 500
    iput-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public getDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 11

    .line 514
    new-instance v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/HeartRateDetailVO;-><init>()V

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    iput-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->healthSportList:Ljava/util/List;

    .line 517
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    const/4 v3, 0x0

    if-eqz v2, :cond_106

    .line 518
    sget-object v2, Lcom/keephealth/android/persenter/main/DetailHrPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v4, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_101

    const/4 v5, 0x2

    if-eq v2, v5, :cond_101

    const/4 v6, 0x3

    if-eq v2, v6, :cond_101

    const/4 v6, 0x4

    if-eq v2, v6, :cond_29

    goto/16 :goto_106

    .line 520
    :cond_29
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->year:I

    .line 522
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v9, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->month:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v3

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v9, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->day:I

    .line 523
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v4

    .line 522
    invoke-virtual {v2, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v6, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v3

    .line 524
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b3

    move v6, v3

    .line 526
    :goto_7c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b3

    .line 527
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 528
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%02d:%02d"

    invoke-static {v9, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    if-lez v8, :cond_b0

    .line 531
    iget-object v8, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b0
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 535
    :cond_b3
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v2

    .line 536
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->year:I

    .line 537
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v5, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v3

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->day:I

    .line 538
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v4

    .line 537
    invoke-virtual {v2, v6, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_106

    .line 540
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 546
    :cond_101
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->get()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0

    :cond_106
    :goto_106
    move v1, v3

    move v2, v1

    .line 551
    :goto_108
    iget-object v4, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_162

    .line 552
    iget-object v4, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 553
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 554
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 555
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    if-lez v6, :cond_133

    add-int/lit8 v1, v1, 0x1

    .line 559
    :cond_133
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    add-int/2addr v2, v4

    .line 560
    iget v4, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    .line 561
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    if-lez v4, :cond_15f

    .line 562
    iget v4, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    if-nez v4, :cond_153

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    goto :goto_15d

    :cond_153
    iget v4, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_15d
    iput v4, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    :cond_15f
    add-int/lit8 v3, v3, 0x1

    goto :goto_108

    :cond_162
    if-lez v1, :cond_167

    .line 566
    div-int/2addr v2, v1

    iput v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    .line 568
    :cond_167
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    return-object v0
.end method

.method public getDetailBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 11

    .line 573
    new-instance v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/HeartRateDetailVO;-><init>()V

    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    iput-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->healthSportList:Ljava/util/List;

    .line 576
    sget-object v2, Lcom/keephealth/android/persenter/main/DetailHrPresenter$1;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_174

    const/4 v4, 0x2

    if-eq v2, v4, :cond_174

    const/4 v5, 0x3

    if-eq v2, v5, :cond_174

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v2, v5, :cond_25

    goto/16 :goto_10e

    .line 578
    :cond_25
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v2

    .line 579
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->year:I

    .line 580
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v7, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v9, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->month:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v6

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v9, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->day:I

    .line 581
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v3

    .line 580
    invoke-virtual {v2, v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v5, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v5, v6

    .line 582
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "items:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FF5343"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c1

    move v5, v6

    .line 585
    :goto_90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_c1

    .line 586
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 587
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%02d:%02d"

    invoke-static {v9, v8}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 590
    iget-object v8, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 594
    :cond_c1
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->year:I

    .line 596
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->month:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v4, v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v8, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->day:I

    .line 597
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v4, v3

    .line 596
    invoke-virtual {v2, v5, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 597
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_10e

    .line 599
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10e
    :goto_10e
    move v1, v6

    move v2, v1

    .line 609
    :goto_110
    iget-object v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_16a

    .line 610
    iget-object v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 611
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 612
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 613
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    if-lez v5, :cond_13b

    add-int/lit8 v1, v1, 0x1

    .line 617
    :cond_13b
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 618
    iget v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    .line 619
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    if-lez v3, :cond_167

    .line 620
    iget v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    if-nez v3, :cond_15b

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    goto :goto_165

    :cond_15b
    iget v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_165
    iput v3, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    :cond_167
    add-int/lit8 v6, v6, 0x1

    goto :goto_110

    :cond_16a
    if-lez v1, :cond_16f

    .line 624
    div-int/2addr v2, v1

    iput v2, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    .line 626
    :cond_16f
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->mainVO:Lcom/keephealth/android/views/MainVO;

    iput-object v1, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    return-object v0

    .line 605
    :cond_174
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->get()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->currentDate(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/views/MainVO;

    .line 35
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailNext(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->nextDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 58
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getDetailPre(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->preDate(Lcom/keephealth/android/model/bean/DetailTimeType;)Lcom/keephealth/android/views/MainVO;

    .line 63
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetail()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    return-object p1
.end method

.method public getOneMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 505
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setOneMonth()V

    .line 506
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->get()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getOneMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 509
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setOneMonth()V

    .line 510
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getSixMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setSixMonth()V

    .line 68
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->get()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getSixMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setSixMonth()V

    .line 73
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getYearMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setYear()V

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->get()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method

.method public getYearMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->setYear()V

    .line 82
    invoke-direct {p0}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    return-object v0
.end method
