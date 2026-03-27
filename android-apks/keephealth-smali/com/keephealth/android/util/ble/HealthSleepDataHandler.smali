.class public Lcom/keephealth/android/util/ble/HealthSleepDataHandler;
.super Ljava/lang/Object;
.source "HealthSleepDataHandler.java"


# instance fields
.field dataIndex:I

.field dataLength:I

.field datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataIndex:I

    .line 29
    iput v0, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataLength:I

    return-void
.end method


# virtual methods
.method public handlerHistory([B)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 95
    array-length v2, v1

    const/16 v3, 0xb

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handlerHistory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\u7761\u7720\u603b\u6570\u636e1"

    invoke-static {v7, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xa

    const/4 v7, 0x0

    .line 97
    invoke-static {v1, v5, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u7761\u7720\u603b\u6570\u636e2"

    invoke-static {v5, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 101
    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 102
    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 103
    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 104
    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 105
    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 106
    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    move v8, v7

    .line 108
    :goto_5b
    const-string v11, "-"

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v8, v2, :cond_1e4

    const/4 v14, 0x4

    .line 109
    new-array v15, v14, [B

    .line 110
    invoke-static {v4, v8, v15, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-static {v15}, Lcom/keephealth/android/util/DateUtil;->parseDateTimeFromBytes([B)Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    move-result-object v15

    iput-object v15, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    .line 112
    new-array v15, v14, [B

    add-int/lit8 v3, v8, 0x4

    .line 113
    invoke-static {v4, v3, v15, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    new-instance v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    .line 115
    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 116
    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 117
    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 118
    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->hour:I

    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 119
    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->minute:I

    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    .line 120
    aget-byte v10, v15, v12

    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 121
    invoke-virtual {v3, v13}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setAccuracyType(I)V

    .line 122
    invoke-static {v15, v7, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v10

    .line 123
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v15, v15, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v15, v15, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v14, v14, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v14, v14, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->hour:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v15, v15, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->minute:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v14, v14, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->second:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "\u6bcf\u6761\u7761\u7720\u6570\u636e\u65f6\u95f4"

    invoke-static {v14, v11}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, v10}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 127
    iget-object v14, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v14, v14, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    iget-object v15, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v15, v15, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    add-int/lit8 v18, v15, -0x1

    iget-object v15, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v15, v15, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    iget-object v9, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v9, v9, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->hour:I

    iget-object v12, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v12, v12, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->minute:I

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move/from16 v17, v14

    move/from16 v19, v15

    move/from16 v20, v9

    move/from16 v21, v12

    invoke-virtual/range {v16 .. v22}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v9, 0xe

    .line 128
    invoke-virtual {v11, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 129
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDate(J)V

    .line 130
    iget-object v9, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v9, v9, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setYear(I)V

    .line 131
    iget-object v9, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v9, v9, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setMonth(I)V

    .line 132
    iget-object v9, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v9, v9, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDay(I)V

    .line 133
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 134
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    if-eq v3, v13, :cond_1ce

    const/4 v9, 0x2

    if-eq v3, v9, :cond_1bd

    const/4 v9, 0x3

    if-eq v3, v9, :cond_1ac

    const/4 v9, 0x4

    if-eq v3, v9, :cond_19b

    const/4 v9, 0x5

    if-eq v3, v9, :cond_18a

    goto :goto_1de

    .line 152
    :cond_18a
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 153
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_1de

    .line 148
    :cond_19b
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 149
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_1de

    .line 144
    :cond_1ac
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 145
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_1de

    .line 140
    :cond_1bd
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 141
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_1de

    .line 136
    :cond_1ce
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 137
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v5, v3}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    :goto_1de
    add-int/lit8 v8, v8, 0x8

    const/16 v3, 0xb

    goto/16 :goto_5b

    .line 157
    :cond_1e4
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    if-eqz v2, :cond_36b

    .line 158
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v8, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v8, v8, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    .line 160
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v8, 0x3

    new-array v8, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v7

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    .line 161
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v13

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v10, 0x14

    .line 162
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 160
    invoke-virtual {v3, v4, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 164
    iget-object v4, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v4, v4, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    iget-object v8, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v8, v8, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    sub-int/2addr v8, v13

    iget-object v9, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v9, v9, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    invoke-virtual {v3, v4, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 165
    iget-object v4, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v4, v4, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    sub-int/2addr v4, v13

    const/4 v8, 0x5

    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 166
    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v9, 0x2

    .line 167
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v13

    .line 168
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v4, v4, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9ad8\u7cbe\u5ea6\u7761\u772011"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v8, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v8, v8, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->year:I

    .line 176
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->month:I

    .line 177
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v7

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v10, v0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->parsedDateTime:Lcom/keephealth/android/ui/main/bean/ParsedDateTime;

    iget v10, v10, Lcom/keephealth/android/ui/main/bean/ParsedDateTime;->day:I

    .line 178
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v13

    .line 176
    invoke-virtual {v4, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 180
    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->insert(Ljava/lang/Object;)J

    .line 182
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "LAST_SYNCH_TIME"

    invoke-static {v3, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    .line 184
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 185
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 186
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 187
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v8, v3

    long-to-int v3, v8

    if-gtz v3, :cond_323

    move v3, v13

    :cond_323
    const/4 v4, 0x6

    neg-int v3, v3

    .line 191
    invoke-virtual {v5, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 199
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 200
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 201
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v13

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v5, v7

    .line 200
    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 203
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_36b
    return-void
.end method

.method public init([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 10

    .line 31
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 33
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataLength:I

    .line 34
    rem-int/lit8 v3, v1, 0x14

    const/16 v4, 0x14

    if-nez v3, :cond_22

    .line 35
    div-int/2addr v1, v4

    iput v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataIndex:I

    goto :goto_26

    .line 37
    :cond_22
    div-int/2addr v1, v4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataIndex:I

    .line 39
    :goto_26
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget p1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataLength:I

    if-gt p1, v4, :cond_ab

    .line 41
    iget-object p1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataIndex:I

    if-ne p1, v1, :cond_ab

    .line 42
    iget p1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataLength:I

    new-array v1, p1, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 44
    :goto_40
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_67

    .line 45
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-static {v6, v3, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 48
    :cond_67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int/2addr p1, v2

    aget-byte v5, v1, p1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9ad8\u7cbe\u5ea6\u7761\u7720\u6570\u636e"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ne v3, p1, :cond_ab

    .line 52
    :try_start_a6
    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->handlerHistory([B)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_a9

    .line 55
    :catch_a9
    iput-boolean v2, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 59
    :cond_ab
    iput-boolean v2, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object v0
.end method

.method public receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 10

    .line 64
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x14

    array-length v4, p1

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u603b\u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5206\u5305\u6570\u636e\u63a5\u6536\u9ad8\u7cbe\u5ea6\u7761\u7720\u6570\u636e"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataIndex:I

    if-ne v1, v2, :cond_cb

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x14

    array-length p1, p1

    add-int/2addr v1, p1

    iget p1, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->dataLength:I

    if-ne v1, p1, :cond_cb

    .line 69
    new-array v1, p1, [B

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 71
    :goto_60
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_87

    .line 72
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-static {v6, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 75
    :cond_87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int/2addr p1, v3

    aget-byte v5, v1, p1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u9ad8\u7cbe\u5ea6\u7761\u7720\u6570\u636e"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ne v2, p1, :cond_cb

    .line 79
    :try_start_c6
    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->handlerHistory([B)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_c9

    .line 82
    :catch_c9
    iput-boolean v3, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 85
    :cond_cb
    iput-boolean v3, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object v0
.end method
