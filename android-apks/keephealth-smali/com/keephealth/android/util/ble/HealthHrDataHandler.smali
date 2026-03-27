.class public Lcom/keephealth/android/util/ble/HealthHrDataHandler;
.super Ljava/lang/Object;
.source "HealthHrDataHandler.java"


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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataIndex:I

    .line 37
    iput v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataLength:I

    return-void
.end method

.method private handlerHistory(Ljava/util/List;)Ljava/util/List;
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 154
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    new-array v5, v4, [B

    move v6, v2

    .line 155
    :goto_17
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_34

    .line 156
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move v8, v2

    .line 157
    :goto_24
    array-length v9, v7

    if-ge v8, v9, :cond_31

    mul-int/lit8 v9, v6, 0x14

    add-int/2addr v9, v8

    .line 158
    aget-byte v10, v7, v8

    aput-byte v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_34
    const/4 v0, 0x1

    const/4 v6, 0x3

    .line 161
    invoke-static {v3, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v7

    .line 162
    aget-byte v6, v3, v6

    const/4 v8, 0x4

    const/4 v9, 0x6

    .line 163
    invoke-static {v3, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v8

    .line 164
    aget-byte v9, v3, v9

    const/4 v10, 0x7

    .line 165
    aget-byte v10, v3, v10

    const/16 v11, 0x8

    .line 166
    aget-byte v3, v3, v11

    .line 167
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "***************\u5fc3\u7387\u8840\u538b\u89e3\u6790\u6570\u636e length:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",\u603b\u6761\u6570:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-int/lit8 v7, v7, 0x14

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ",\u64cd\u4f5c\u7c7b\u578b:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u5e74:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u6708:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u65e5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\u5468\u671f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "********"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v6

    .line 169
    new-instance v7, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 170
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 171
    invoke-static {v8, v9, v10}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    .line 172
    invoke-virtual {v7, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setYear(I)V

    .line 173
    invoke-virtual {v7, v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMonth(I)V

    .line 174
    invoke-virtual {v7, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDay(I)V

    .line 175
    invoke-static {v8, v9, v10}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setData(J)V

    .line 176
    invoke-virtual {v11, v8}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setYear(I)V

    .line 177
    invoke-virtual {v11, v9}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMonth(I)V

    .line 178
    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setDay(I)V

    .line 181
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v14, 0x5a0

    .line 186
    div-int/2addr v14, v3

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 201
    invoke-virtual {v15, v0, v8}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v0, v9, -0x1

    const/4 v2, 0x2

    .line 202
    invoke-virtual {v15, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 203
    invoke-virtual {v15, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data_size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FF3232"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v21, v11

    move-object/from16 v19, v12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_141
    move/from16 v31, v11

    add-int/lit8 v11, v16, 0x4

    move-object/from16 v32, v13

    .line 206
    const-string v13, "/"

    if-ge v11, v4, :cond_32a

    if-ge v1, v14, :cond_32a

    move/from16 v33, v4

    .line 208
    aget-byte v4, v5, v16

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v34, v16, 0x1

    move/from16 v35, v11

    .line 209
    aget-byte v11, v5, v34

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v34, v16, 0x2

    move/from16 v36, v14

    .line 210
    aget-byte v14, v5, v34

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v16, v16, 0x3

    move-object/from16 v34, v13

    .line 211
    aget-byte v13, v5, v16

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v1, v1, 0x1

    move/from16 v16, v1

    .line 213
    new-instance v1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    move-object/from16 v37, v5

    .line 214
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;-><init>()V

    .line 215
    invoke-virtual {v1, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    .line 217
    invoke-virtual {v1, v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    add-int/lit8 v38, v0, -0x1

    const/16 v39, 0x3c

    .line 218
    div-int v39, v39, v3

    move/from16 v40, v0

    div-int v0, v38, v39

    move-object/from16 v41, v5

    const/16 v5, 0xb

    invoke-virtual {v15, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 219
    rem-int v38, v38, v39

    mul-int v5, v38, v3

    move/from16 v38, v3

    const/16 v3, 0xc

    invoke-virtual {v15, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 220
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move/from16 v39, v2

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDate(J)V

    if-le v11, v14, :cond_1b3

    .line 222
    invoke-virtual {v1, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setSs(I)V

    .line 223
    invoke-virtual {v1, v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setFz(I)V

    goto :goto_1b9

    .line 225
    :cond_1b3
    invoke-virtual {v1, v14}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setSs(I)V

    .line 226
    invoke-virtual {v1, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setFz(I)V

    .line 228
    :goto_1b9
    invoke-virtual {v1, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOxygen(I)V

    .line 229
    invoke-virtual {v1, v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setYear(I)V

    .line 230
    invoke-virtual {v1, v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMonth(I)V

    .line 231
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHour(I)V

    .line 232
    invoke-virtual {v1, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMinuter(I)V

    .line 233
    invoke-virtual {v1, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDay(I)V

    if-lez v4, :cond_1f0

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v6, v4

    if-nez v39, :cond_1da

    .line 240
    invoke-virtual {v7, v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMaxHr(I)V

    .line 241
    invoke-virtual {v7, v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMinHr(I)V

    const/4 v2, 0x1

    goto :goto_1f2

    .line 243
    :cond_1da
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMaxHr()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMaxHr(I)V

    .line 244
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMinHr()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMinHr(I)V

    :cond_1f0
    move/from16 v2, v39

    .line 247
    :goto_1f2
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move/from16 v39, v2

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move/from16 v42, v6

    move-object/from16 v6, v41

    invoke-virtual {v6, v2, v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDate(J)V

    .line 248
    invoke-virtual {v6, v11}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setFzValue(I)V

    .line 249
    invoke-virtual {v6, v14}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setSsValue(I)V

    .line 250
    invoke-virtual {v6, v13}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setOxygenValue(I)V

    .line 251
    invoke-virtual {v6, v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setYear(I)V

    .line 252
    invoke-virtual {v6, v9}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMonth(I)V

    .line 253
    invoke-virtual {v6, v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setHour(I)V

    .line 254
    invoke-virtual {v6, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMinute(I)V

    .line 255
    invoke-virtual {v6, v10}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setDay(I)V

    move-object/from16 v0, v32

    .line 259
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlerHistory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8840\u538b\u6570\u636e"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_2bf

    if-eqz v14, :cond_2bf

    add-int/lit8 v2, v31, 0x1

    move/from16 v3, v28

    add-int v28, v3, v11

    move/from16 v5, v27

    add-int v27, v5, v14

    move/from16 v6, v22

    if-eqz v6, :cond_25c

    if-ge v6, v14, :cond_253

    goto :goto_25c

    :cond_253
    move/from16 v22, v6

    move-object/from16 v6, v21

    move/from16 v3, v23

    move-object/from16 v5, v34

    goto :goto_27c

    .line 267
    :cond_25c
    :goto_25c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, v34

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v21

    invoke-virtual {v6, v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBlood(Ljava/lang/String;)V

    move/from16 v22, v14

    move/from16 v3, v23

    :goto_27c
    if-eqz v3, :cond_284

    if-le v3, v14, :cond_281

    goto :goto_284

    :cond_281
    move/from16 v23, v3

    goto :goto_286

    :cond_284
    :goto_284
    move/from16 v23, v14

    :goto_286
    move/from16 v3, v24

    if-eqz v3, :cond_290

    if-le v3, v11, :cond_28d

    goto :goto_290

    :cond_28d
    move/from16 v24, v3

    goto :goto_2aa

    .line 274
    :cond_290
    :goto_290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBlood(Ljava/lang/String;)V

    move/from16 v24, v11

    :goto_2aa
    move/from16 v14, v25

    if-eqz v14, :cond_2b8

    if-ge v14, v11, :cond_2b1

    goto :goto_2b8

    :cond_2b1
    move v11, v2

    move-object v2, v6

    move/from16 v25, v14

    move-object/from16 v21, v15

    goto :goto_2dd

    :cond_2b8
    :goto_2b8
    move/from16 v25, v11

    move-object/from16 v21, v15

    move v11, v2

    move-object v2, v6

    goto :goto_2dd

    :cond_2bf
    move-object/from16 v2, v21

    move/from16 v6, v22

    move/from16 v11, v23

    move/from16 v14, v25

    move/from16 v5, v27

    move/from16 v3, v28

    move-object/from16 v21, v15

    move/from16 v15, v24

    move/from16 v28, v3

    move/from16 v27, v5

    move/from16 v22, v6

    move/from16 v23, v11

    move/from16 v25, v14

    move/from16 v24, v15

    move/from16 v11, v31

    :goto_2dd
    if-eqz v13, :cond_300

    move/from16 v3, v29

    add-int/lit8 v29, v3, 0x1

    move/from16 v5, v30

    add-int v30, v5, v13

    move/from16 v6, v26

    if-eqz v6, :cond_2f1

    if-ge v6, v13, :cond_2ee

    goto :goto_2f1

    :cond_2ee
    move/from16 v26, v6

    goto :goto_2f3

    :cond_2f1
    :goto_2f1
    move/from16 v26, v13

    :goto_2f3
    if-eqz v20, :cond_2fd

    move/from16 v14, v20

    if-le v14, v13, :cond_2fa

    goto :goto_2fd

    :cond_2fa
    move/from16 v20, v14

    goto :goto_308

    :cond_2fd
    :goto_2fd
    move/from16 v20, v13

    goto :goto_308

    :cond_300
    move/from16 v14, v20

    move/from16 v6, v26

    move/from16 v3, v29

    move/from16 v5, v30

    :goto_308
    add-int/lit8 v3, v40, 0x1

    .line 291
    invoke-virtual {v7, v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    move-object/from16 v4, v19

    .line 292
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v0

    move v0, v3

    move/from16 v1, v16

    move-object/from16 v15, v21

    move/from16 v4, v33

    move/from16 v16, v35

    move/from16 v14, v36

    move-object/from16 v5, v37

    move/from16 v3, v38

    move/from16 v6, v42

    move-object/from16 v21, v2

    move/from16 v2, v39

    goto/16 :goto_141

    :cond_32a
    move/from16 v16, v10

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v11, v23

    move/from16 v15, v24

    move/from16 v14, v25

    move/from16 v0, v26

    move/from16 v5, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v10, v30

    move/from16 v20, v9

    move-object v9, v13

    move/from16 v13, v22

    if-lez v12, :cond_5a2

    int-to-float v6, v6

    const/high16 v21, 0x3f800000    # 1.0f

    div-float v6, v6, v21

    int-to-float v12, v12

    div-float/2addr v6, v12

    float-to-int v6, v6

    .line 295
    invoke-virtual {v7, v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    .line 296
    invoke-virtual {v2, v14}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodFz(I)V

    .line 297
    invoke-virtual {v2, v15}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodFz(I)V

    .line 298
    invoke-virtual {v2, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodSs(I)V

    .line 299
    invoke-virtual {v2, v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodSs(I)V

    .line 300
    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    .line 301
    invoke-virtual {v2, v1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bloodFzSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v11, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFSD232"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_3bf

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v5

    div-float v5, v5, v21

    int-to-float v6, v11

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v3, v3

    div-float v3, v3, v21

    div-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBlood(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2, v5}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 306
    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "avgBlood:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3bf
    if-lez v4, :cond_3ca

    int-to-float v0, v10

    div-float v0, v0, v21

    int-to-float v1, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 310
    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    .line 312
    :cond_3ca
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v0

    .line 313
    invoke-virtual/range {v18 .. v18}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 314
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 315
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 316
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 314
    invoke-virtual {v1, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    move-object/from16 v1, v18

    .line 318
    invoke-virtual {v1, v7}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->insert(Ljava/lang/Object;)J

    .line 319
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 320
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 321
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 322
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 320
    invoke-virtual {v1, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    move-object/from16 v1, v19

    .line 326
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->insertInTx(Ljava/lang/Iterable;)V

    if-lez v10, :cond_5a2

    .line 328
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_516

    .line 329
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isManualBPRecording()Z

    move-result v0

    if-eqz v0, :cond_516

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 331
    :goto_464
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_47f

    move-object/from16 v3, v32

    .line 332
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    const/4 v5, 0x0

    .line 333
    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setFzValue(I)V

    .line 334
    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setSsValue(I)V

    .line 335
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_464

    .line 337
    :cond_47f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 339
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 340
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 341
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v6, v9

    .line 339
    invoke-virtual {v3, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 342
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 343
    const-string v3, "0/0"

    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBlood(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 345
    invoke-virtual {v2, v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 346
    invoke-virtual {v1, v2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->insert(Ljava/lang/Object;)J

    .line 347
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 349
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 350
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 351
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 349
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 353
    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->insertInTx(Ljava/lang/Iterable;)V

    goto/16 :goto_5a2

    :cond_516
    move-object/from16 v3, v32

    .line 355
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodDao()Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 357
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 358
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 359
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    .line 357
    invoke-virtual {v1, v4, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 361
    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->insert(Ljava/lang/Object;)J

    .line 362
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 364
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 365
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 366
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 364
    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 368
    invoke-virtual {v0, v3}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->insertInTx(Ljava/lang/Iterable;)V

    :cond_5a2
    :goto_5a2
    return-object v17
.end method


# virtual methods
.method public handler(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->handlerHistory(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handlerCurrent([B)Lcom/keephealth/android/greendao/bean/HealthHeartRate;
    .registers 14

    .line 83
    const-string v0, "\u83b7\u53d6\u5f53\u524d\u5fc3\u7387\u6570\u636e"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 84
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    .line 85
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    .line 86
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x7

    .line 87
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "heartValue:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",fz:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sh:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",xy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v3

    .line 90
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x0

    aget v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x1

    aget v11, v3, v10

    .line 92
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v6

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    aget v11, v3, v7

    .line 93
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v8, v10

    .line 91
    invoke-virtual {v4, v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v5, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v5, v6

    .line 94
    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_af

    .line 96
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_af

    .line 97
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    goto :goto_e4

    .line 99
    :cond_af
    new-instance v4, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    .line 100
    aget v5, v3, v6

    aget v8, v3, v10

    aget v9, v3, v7

    invoke-static {v5, v8, v9}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    .line 101
    aget v5, v3, v6

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setYear(I)V

    .line 102
    aget v5, v3, v10

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMonth(I)V

    .line 103
    aget v3, v3, v7

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDay(I)V

    .line 104
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setUserId(Ljava/lang/String;)V

    move-object v3, v4

    .line 106
    :goto_e4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5b9e\u65f6\u5fc3\u7387\u503c:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ghfgr4"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_103

    .line 108
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "heartValue"

    invoke-static {v4, v6, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 110
    :cond_103
    invoke-virtual {v3, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    .line 112
    invoke-virtual {v3, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setFz(I)V

    .line 113
    invoke-virtual {v3, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSs(I)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "xy:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "fz:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  sh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trtr5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-nez v0, :cond_154

    .line 117
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    sput-object v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 118
    sget-object v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setOxygen(I)V

    goto :goto_159

    .line 120
    :cond_154
    sget-object v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setOxygen(I)V

    :goto_159
    const/16 v0, 0x46

    if-lt p1, v0, :cond_166

    .line 123
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "oxygen_value"

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    :cond_166
    invoke-virtual {v3, p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setOxygen(I)V

    return-object v3
.end method

.method public handlerHartOpen([B)V
    .registers 4

    .line 387
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    const/4 v1, 0x4

    .line 388
    aget-byte p1, p1, v1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isTestTime:Z

    .line 389
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public init([B)V
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 40
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataLength:I

    .line 41
    rem-int/lit8 v2, v0, 0x14

    if-nez v2, :cond_1c

    .line 42
    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataIndex:I

    goto :goto_21

    .line 44
    :cond_1c
    div-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataIndex:I

    .line 46
    :goto_21
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 10

    .line 50
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

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

    iget v2, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5206\u5305\u6570\u636e\u63a5\u6536\u5fc3\u7387\u8840\u538b\u8840\u6c27"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataIndex:I

    if-ne v1, v2, :cond_cd

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x14

    array-length p1, p1

    add-int/2addr v1, p1

    iget p1, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->dataLength:I

    if-ne v1, p1, :cond_cd

    .line 55
    new-array v1, p1, [B

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 57
    :goto_60
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_87

    .line 58
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-static {v6, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 61
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

    const-string v4, "\u5fc3\u7387\u8840\u538b\u8840\u6c27\u6570\u636e"

    invoke-static {v4, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ne v2, p1, :cond_cd

    .line 65
    :try_start_c6
    iget-object p1, p0, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->datas:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->handler(Ljava/util/List;)Ljava/lang/Object;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_cb

    .line 68
    :catch_cb
    iput-boolean v3, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 71
    :cond_cd
    iput-boolean v3, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object v0
.end method

.method public setHeartRong([B)V
    .registers 6

    .line 377
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/keephealth/android/model/bean/HeartRateInterval;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/HeartRateInterval;-><init>()V

    const/4 v2, 0x4

    .line 379
    aget-byte v2, p1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomHr:Z

    const/4 v2, 0x5

    .line 380
    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v2

    iput v2, v1, Lcom/keephealth/android/model/bean/HeartRateInterval;->maxHr:I

    const/4 v2, 0x6

    .line 381
    aget-byte p1, p1, v2

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    iput p1, v1, Lcom/keephealth/android/model/bean/HeartRateInterval;->minHr:I

    .line 382
    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->interval:Lcom/keephealth/android/model/bean/HeartRateInterval;

    .line 383
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method
