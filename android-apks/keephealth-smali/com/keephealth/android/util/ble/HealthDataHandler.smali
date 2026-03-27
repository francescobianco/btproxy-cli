.class public Lcom/keephealth/android/util/ble/HealthDataHandler;
.super Ljava/lang/Object;
.source "HealthDataHandler.java"


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

.field number:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataIndex:I

    .line 41
    iput v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataLength:I

    .line 127
    iput v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->number:I

    return-void
.end method

.method private handler(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/HealthDataHandler;->handlerHistory(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private handlerHistory(Ljava/util/List;)Ljava/util/List;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSportItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 130
    const-string v9, "GGED2"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 132
    :try_start_c
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 133
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v12, 0x14

    mul-int/2addr v2, v12

    new-array v3, v2, [B

    move v4, v11

    .line 134
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 135
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move v6, v11

    .line 136
    :goto_29
    array-length v7, v5

    if-ge v6, v7, :cond_36

    mul-int/lit8 v7, v4, 0x14

    add-int/2addr v7, v6

    .line 137
    aget-byte v13, v5, v6

    aput-byte v13, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 140
    :cond_39
    iget v0, v8, Lcom/keephealth/android/util/ble/HealthDataHandler;->number:I

    const/4 v13, 0x1

    add-int/2addr v0, v13

    iput v0, v8, Lcom/keephealth/android/util/ble/HealthDataHandler;->number:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_44

    const/4 v0, 0x0

    return-object v0

    :cond_44
    const/4 v14, 0x3

    .line 145
    invoke-static {v1, v13, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    .line 146
    aget-byte v0, v1, v14

    const/4 v15, 0x6

    .line 147
    invoke-static {v1, v4, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v7

    .line 148
    aget-byte v6, v1, v15

    const/4 v5, 0x7

    .line 149
    aget-byte v15, v1, v5

    const/16 v5, 0x8

    .line 150
    aget-byte v1, v1, v5

    .line 151
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    .line 152
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "****************\u6b65\u6570\u7761\u7720\u8be6\u60c5\u6570\u636e,type:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ",year:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ",month:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ",day:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ",period:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "*************"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v12, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "\u7761\u7720\u6570\u636e"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handlerHistory: --\u6b65\u6570\u7761\u7720\u6570\u636e "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v13, v7}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v12, v6, -0x1

    const/4 v14, 0x2

    .line 157
    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    .line 158
    invoke-virtual {v0, v5, v15}, Ljava/util/Calendar;->set(II)V

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v14, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 162
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    move/from16 v20, v12

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDate(J)V

    .line 163
    invoke-virtual {v14, v7}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setYear(I)V

    .line 164
    invoke-virtual {v14, v6}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setMonth(I)V

    .line 165
    invoke-virtual {v14, v15}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDay(I)V

    const/4 v11, 0x0

    .line 166
    invoke-virtual {v14, v11}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setAccuracyType(I)V

    .line 168
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v11

    const/16 v12, 0x5a0

    .line 173
    div-int/2addr v12, v1
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10e} :catch_6e1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_c .. :try_end_10e} :catch_6e1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    :goto_114
    move-object/from16 v23, v10

    add-int/lit8 v10, v18, 0xb

    const-wide v24, 0x40f86a0000000000L    # 100000.0

    const-wide v26, 0x3fe8f5c28f5c28f6L    # 0.78

    move-object/from16 v28, v9

    if-ge v10, v2, :cond_2e2

    if-ge v13, v12, :cond_2e2

    add-int/lit8 v9, v18, 0x9

    .line 175
    :try_start_12a
    invoke-static {v3, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    const/4 v10, 0x1

    .line 176
    aget-byte v21, v9, v10

    const/16 v19, 0x0

    aget-byte v9, v9, v19

    move/from16 v30, v2

    const/4 v10, 0x2

    new-array v2, v10, [B

    aput-byte v21, v2, v19

    const/4 v10, 0x1

    aput-byte v9, v2, v10

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString2([B)Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x10

    .line 178
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v9, "%016d"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 181
    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x2

    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v31, v12

    .line 183
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 189
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>()V

    .line 190
    invoke-virtual {v10, v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setYear(I)V

    .line 191
    invoke-virtual {v10, v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMonth(I)V

    .line 192
    invoke-virtual {v10, v15}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDay(I)V

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    move-object/from16 v32, v0

    const/4 v0, 0x1

    .line 194
    invoke-virtual {v12, v0, v7}, Ljava/util/Calendar;->set(II)V

    move/from16 v0, v20

    move-object/from16 v20, v4

    const/4 v4, 0x2

    .line 195
    invoke-virtual {v12, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    .line 196
    invoke-virtual {v12, v4, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0x3c

    .line 197
    div-int v33, v4, v1

    div-int v4, v13, v33

    move/from16 v33, v0

    const/16 v0, 0xb

    invoke-virtual {v12, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0x3c

    .line 198
    div-int v4, v0, v1

    rem-int v4, v13, v4

    mul-int/2addr v4, v1

    const/16 v0, 0xc

    invoke-virtual {v12, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v4, 0x0

    .line 199
    invoke-virtual {v12, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0x3c

    .line 200
    div-int v4, v0, v1

    div-int v4, v13, v4

    invoke-virtual {v10, v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setHour(I)V

    .line 201
    div-int v4, v0, v1

    rem-int v0, v13, v4

    mul-int/2addr v0, v1

    invoke-virtual {v10, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMinute(I)V

    move-object/from16 v34, v5

    .line 202
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDate(J)V

    .line 204
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;-><init>()V

    const/16 v4, 0x3c

    .line 205
    div-int v5, v4, v1

    div-int v5, v13, v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setHour(I)V

    .line 207
    div-int/2addr v4, v1

    rem-int v4, v13, v4

    mul-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMinuter(I)V

    .line 208
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDate(J)V

    .line 209
    invoke-virtual {v0, v7}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setYear(I)V

    .line 210
    invoke-virtual {v0, v6}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setMonth(I)V

    .line 211
    invoke-virtual {v0, v15}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setDay(I)V

    .line 212
    const-string v4, " "

    invoke-virtual {v0, v4}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleeptime(Ljava/lang/String;)V

    const/16 v4, 0xf

    if-ne v3, v4, :cond_296

    const/16 v3, 0x8

    const/4 v4, 0x4

    .line 215
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 216
    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setOffsetMinute(I)V

    if-nez v22, :cond_229

    mul-int v4, v13, v1

    .line 220
    div-int/lit8 v5, v4, 0x3c

    invoke-virtual {v14, v5}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeH(I)V

    .line 221
    rem-int/lit8 v4, v4, 0x3c

    invoke-virtual {v14, v4}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    const/4 v4, 0x1

    const/16 v22, 0x1

    goto :goto_22a

    :cond_229
    const/4 v4, 0x1

    :goto_22a
    if-eq v2, v4, :cond_283

    const/4 v4, 0x2

    if-eq v2, v4, :cond_270

    const/4 v4, 0x3

    if-eq v2, v4, :cond_25d

    const/4 v4, 0x4

    if-eq v2, v4, :cond_24b

    const/4 v5, 0x5

    if-eq v2, v5, :cond_23a

    goto/16 :goto_2be

    .line 242
    :cond_23a
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    .line 243
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_2be

    :cond_24b
    const/4 v5, 0x5

    .line 238
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    .line 239
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_2be

    :cond_25d
    const/4 v4, 0x4

    const/4 v5, 0x5

    .line 234
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    .line 235
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_2be

    :cond_270
    const/4 v4, 0x4

    const/4 v5, 0x5

    .line 230
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    .line 231
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_2be

    :cond_283
    const/4 v4, 0x4

    const/4 v5, 0x5

    .line 226
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    .line 227
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    goto :goto_2be

    :cond_296
    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x5

    add-int/2addr v8, v9

    .line 252
    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v12

    mul-float/2addr v2, v12

    int-to-float v12, v9

    mul-float/2addr v2, v12

    float-to-double v3, v2

    mul-double v3, v3, v26

    div-double v3, v3, v24

    double-to-float v2, v3

    .line 255
    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v3

    mul-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    .line 256
    invoke-virtual {v10, v9}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    .line 257
    invoke-virtual {v10, v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    .line 258
    invoke-virtual {v10, v3}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    :goto_2be
    if-lez v9, :cond_2c3

    .line 264
    invoke-virtual {v10, v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setActiveTime(I)V

    :cond_2c3
    move-object/from16 v9, v34

    .line 267
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v20

    .line 270
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x2

    move-object v5, v9

    move-object/from16 v10, v23

    move-object/from16 v9, v28

    move-object/from16 v3, v29

    move/from16 v2, v30

    move/from16 v12, v31

    move-object/from16 v0, v32

    move/from16 v20, v33

    goto/16 :goto_114

    :cond_2e2
    move-object/from16 v32, v0

    move-object v9, v5

    const/4 v5, 0x5

    .line 277
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    .line 278
    invoke-virtual/range {v32 .. v32}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDate(J)V

    .line 279
    invoke-virtual {v10, v7}, Lcom/keephealth/android/greendao/bean/HealthSport;->setYear(I)V

    .line 280
    invoke-virtual {v10, v6}, Lcom/keephealth/android/greendao/bean/HealthSport;->setMonth(I)V

    .line 281
    invoke-virtual {v10, v15}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDay(I)V

    .line 285
    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    mul-float/2addr v0, v1

    int-to-float v1, v8

    mul-float/2addr v0, v1

    float-to-double v0, v0

    mul-double v0, v0, v26

    div-double v0, v0, v24

    double-to-float v0, v0

    .line 286
    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v1

    mul-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    .line 287
    invoke-virtual {v10, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 288
    invoke-virtual {v10, v1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 289
    invoke-virtual {v10, v8}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    .line 290
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v11

    .line 291
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 293
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v3, v12

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 294
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v12, 0x1

    aput-object v2, v3, v12

    .line 292
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSport;

    if-eqz v0, :cond_37c

    .line 296
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v0

    if-ne v0, v8, :cond_37c

    invoke-static {v7, v6, v15}, Lcom/keephealth/android/util/DateUtil;->isToday(III)Z

    move-result v0

    if-eqz v0, :cond_374

    if-nez v8, :cond_374

    goto :goto_37c

    :cond_374
    move-object v13, v4

    move/from16 v17, v6

    move v10, v7

    move-object/from16 v16, v11

    move v11, v5

    goto :goto_39c

    .line 297
    :cond_37c
    :goto_37c
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v8

    new-instance v12, Lcom/keephealth/android/util/ble/HealthDataHandler$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v7

    move-object v13, v4

    move v4, v6

    move-object/from16 v16, v11

    move v11, v5

    move v5, v15

    move/from16 v17, v6

    move-object v6, v10

    move v10, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/ble/HealthDataHandler$1;-><init>(Lcom/keephealth/android/util/ble/HealthDataHandler;Lcom/keephealth/android/greendao/gen/HealthSportDao;IIILcom/keephealth/android/greendao/bean/HealthSport;Ljava/util/List;)V

    invoke-virtual {v8, v12}, Lcom/keephealth/android/greendao/gen/DaoSession;->runInTx(Ljava/lang/Runnable;)V

    .line 323
    :goto_39c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "****************\u7761\u7720\u6570\u636e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_3c6

    .line 326
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHighPrecisionSleep()Z

    move-result v0

    if-eqz v0, :cond_3c6

    goto/16 :goto_657

    .line 334
    :cond_3c6
    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v0

    if-eqz v0, :cond_657

    .line 335
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v0

    .line 336
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepDao()Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    move-result-object v1

    .line 337
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 338
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 339
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v6, 0x14

    .line 340
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    .line 338
    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move/from16 v3, v17

    .line 342
    invoke-virtual {v2, v10, v3, v15}, Ljava/util/Calendar;->set(III)V

    add-int/lit8 v4, v15, -0x1

    .line 343
    invoke-virtual {v2, v11, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x1

    .line 344
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v4, 0x2

    .line 345
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 346
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 347
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 348
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v7, v6

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v6, 0x14

    .line 350
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v7, v6

    .line 348
    invoke-virtual {v4, v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 353
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 354
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 356
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    .line 354
    invoke-virtual {v2, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 358
    invoke-virtual {v1, v14}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->insert(Ljava/lang/Object;)J

    .line 360
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "LAST_SYNCH_TIME"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 361
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    const/4 v6, 0x0

    .line 362
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 363
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 364
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 365
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/32 v1, 0x5265c00

    div-long/2addr v5, v1

    long-to-int v1, v5

    if-gtz v1, :cond_4fa

    const/4 v1, 0x1

    :cond_4fa
    neg-int v2, v1

    const/4 v5, 0x6

    .line 369
    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "distanDay\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v28

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_555

    .line 374
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 375
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 376
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 377
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    .line 375
    invoke-virtual {v1, v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 379
    invoke-virtual {v0, v13}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    goto/16 :goto_657

    :cond_555
    const/4 v1, 0x1

    .line 381
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v10, v2, :cond_61e

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_61e

    .line 382
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v15, v1, :cond_61e

    .line 384
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 385
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 386
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 387
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 385
    invoke-virtual {v1, v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 388
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x12

    if-eqz v1, :cond_5c5

    .line 389
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5c5

    .line 390
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_5c5
    if-nez v1, :cond_5cc

    .line 393
    invoke-virtual {v0, v13}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertInTx(Ljava/lang/Iterable;)V

    goto/16 :goto_657

    :cond_5cc
    const/4 v4, 0x0

    :goto_5cd
    if-ge v4, v2, :cond_5e1

    .line 396
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5cd

    .line 398
    :cond_5e1
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 399
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 400
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v6, v5

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 401
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v6, v5

    .line 399
    invoke-virtual {v2, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 403
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    goto :goto_657

    .line 408
    :cond_61e
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 409
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 410
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 411
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    .line 409
    invoke-virtual {v1, v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 413
    invoke-virtual {v0, v13}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 425
    :cond_657
    :goto_657
    const-string v0, "****************\u6b65\u6570\u7761\u7720\u89e3\u6790\u5b8c\u6bd5*************"

    sget-object v1, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x17

    const/16 v2, 0xb

    .line 427
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x3b

    const/16 v3, 0xc

    .line 428
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 429
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 430
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v5, 0x0

    .line 431
    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 432
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 433
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 434
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 435
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 436
    invoke-virtual/range {v16 .. v16}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 437
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/greenrobot/greendao/Property;->between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v1

    .line 438
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ece\u8bbe\u5907\u83b7\u53d6\u6570\u636e\u540e\u5b58\u50a8\u6570\u636e\u5e93\u540e\u67e5\u8be2\u6570\u636e\u5e93\u7684\u6570\u636e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V
    :try_end_6e0
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_6e0} :catch_6e3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_12a .. :try_end_6e0} :catch_6e3

    goto :goto_6e3

    :catch_6e1
    move-object/from16 v23, v10

    :catch_6e3
    :goto_6e3
    return-object v23
.end method


# virtual methods
.method public handlerCurrent([B)Lcom/keephealth/android/greendao/bean/HealthSport;
    .registers 13

    const/4 v0, 0x3

    .line 82
    aget-byte v0, p1, v0

    .line 83
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 84
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    const/16 v2, 0xc

    .line 85
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/16 v3, 0x10

    .line 86
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    .line 89
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportDao()Lcom/keephealth/android/greendao/gen/HealthSportDao;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    aget v6, v2, v5

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v9, 0x1

    aget v10, v2, v9

    .line 93
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v5

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v10, v2, v6

    .line 94
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v9

    .line 92
    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v4, v5

    .line 95
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSport;

    if-nez v3, :cond_89

    .line 99
    new-instance v3, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-direct {v3}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>()V

    :cond_89
    int-to-float v1, v1

    .line 103
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    .line 104
    invoke-virtual {v3, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    int-to-float p1, p1

    .line 105
    invoke-virtual {v3, p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    .line 106
    aget p1, v2, v5

    aget v0, v2, v9

    aget v1, v2, v6

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDate(J)V

    .line 107
    aget p1, v2, v5

    invoke-virtual {v3, p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setYear(I)V

    .line 108
    aget p1, v2, v9

    invoke-virtual {v3, p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setMonth(I)V

    .line 109
    aget p1, v2, v6

    invoke-virtual {v3, p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDay(I)V

    return-object v3
.end method

.method public init([B)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 45
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataLength:I

    .line 47
    rem-int/lit8 v2, v0, 0x14

    if-nez v2, :cond_1c

    .line 48
    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataIndex:I

    goto :goto_21

    .line 50
    :cond_1c
    div-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataIndex:I

    .line 52
    :goto_21
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 10

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

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

    iget v2, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5206\u5305\u6570\u636e\u63a5\u6536\u6b65\u6570\u7761\u7720"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataIndex:I

    if-ne v1, v2, :cond_cf

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x14

    array-length p1, p1

    add-int/2addr v1, p1

    iget p1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->dataLength:I

    if-ne v1, p1, :cond_cf

    .line 61
    new-array v1, p1, [B

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 63
    :goto_60
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_87

    .line 64
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-static {v6, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 67
    :cond_87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int/2addr p1, v3

    aget-byte v6, v1, p1

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6b65\u6570\u7761\u7720\u6570\u636e"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ne v4, p1, :cond_cf

    .line 69
    iput-boolean v3, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 70
    iput-boolean v2, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    .line 72
    :try_start_ca
    iget-object p1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler;->datas:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/HealthDataHandler;->handler(Ljava/util/List;)Ljava/lang/Object;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cf} :catch_cf

    .line 77
    :catch_cf
    :cond_cf
    iput-boolean v3, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object v0
.end method
