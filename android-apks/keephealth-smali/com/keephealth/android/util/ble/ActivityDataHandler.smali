.class public Lcom/keephealth/android/util/ble/ActivityDataHandler;
.super Ljava/lang/Object;
.source "ActivityDataHandler.java"


# instance fields
.field private activityDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private bytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field dataIndex:I

.field private end:[B

.field private endOne:[B

.field private itemDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private listArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private startFlag:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 27
    new-array v1, v0, [B

    fill-array-data v1, :array_38

    iput-object v1, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->end:[B

    .line 28
    new-array v0, v0, [B

    fill-array-data v0, :array_40

    iput-object v0, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->endOne:[B

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [B

    fill-array-data v0, :array_48

    iput-object v0, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->startFlag:[B

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->bytes:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->listArrayList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->activityDatas:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->itemDatas:Ljava/util/List;

    return-void

    nop

    :array_38
    .array-data 1
        -0x5dt
        0x2t
        0x0t
        0x3t
        0x0t
        -0x36t
    .end array-data

    nop

    :array_40
    .array-data 1
        -0x5dt
        0x2t
        0x0t
        0x2t
        0x0t
        0x74t
    .end array-data

    nop

    :array_48
    .array-data 1
        -0x5dt
        0x1at
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public handlerActivity([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 11

    .line 39
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    const/4 v1, 0x0

    .line 40
    aget-byte v2, p1, v1

    iget-object v3, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->end:[B

    aget-byte v4, v3, v1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v4, :cond_2f

    aget-byte v4, p1, v7

    aget-byte v8, v3, v7

    if-ne v4, v8, :cond_2f

    aget-byte v4, p1, v6

    aget-byte v8, v3, v6

    if-ne v4, v8, :cond_2f

    aget-byte v4, p1, v5

    aget-byte v3, v3, v5

    if-ne v4, v3, :cond_2f

    .line 41
    const-string p1, "\u6ca1\u6709\u6d3b\u52a8\u6570\u636e\u4e86.."

    sget-object v2, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 43
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object v0

    .line 45
    :cond_2f
    iget-object v3, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->endOne:[B

    aget-byte v4, v3, v1

    if-ne v2, v4, :cond_5d

    aget-byte v4, p1, v7

    aget-byte v8, v3, v7

    if-ne v4, v8, :cond_5d

    aget-byte v4, p1, v6

    aget-byte v8, v3, v6

    if-ne v4, v8, :cond_5d

    aget-byte v4, p1, v5

    aget-byte v8, v3, v5

    if-ne v4, v8, :cond_5d

    const/4 v4, 0x4

    aget-byte v8, p1, v4

    aget-byte v3, v3, v4

    if-ne v8, v3, :cond_5d

    .line 46
    const-string p1, "\u672c\u6b21\u6d3b\u52a8\u63a5\u6536\u5b8c\u6bd5\u6570\u636e"

    sget-object v1, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 48
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    .line 49
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/ActivityDataHandler;->handlerData()V

    goto :goto_8d

    .line 51
    :cond_5d
    iget-object v3, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->startFlag:[B

    aget-byte v4, v3, v1

    if-ne v2, v4, :cond_84

    aget-byte v2, p1, v7

    aget-byte v4, v3, v7

    if-ne v2, v4, :cond_84

    aget-byte v2, p1, v6

    aget-byte v4, v3, v6

    if-ne v2, v4, :cond_84

    aget-byte v2, p1, v5

    aget-byte v3, v3, v5

    if-ne v2, v3, :cond_84

    .line 52
    iget-object v2, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->listArrayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 53
    iget-object v2, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->bytes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 54
    iget-object v2, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->itemDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 56
    :cond_84
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 57
    iput-boolean v7, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    .line 58
    iget-object v1, p0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->itemDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8d
    return-object v0
.end method

.method public handlerData()V
    .registers 18

    move-object/from16 v0, p0

    .line 98
    iget-object v1, v0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->itemDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    mul-int/2addr v1, v2

    new-array v3, v1, [B

    const/16 v4, 0x1a

    .line 99
    new-array v4, v4, [B

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 101
    :goto_14
    iget-object v8, v0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->itemDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-ge v6, v8, :cond_a0

    .line 102
    iget-object v8, v0, Lcom/keephealth/android/util/ble/ActivityDataHandler;->itemDatas:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 103
    aget-byte v12, v8, v5

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa3

    if-ne v12, v13, :cond_40

    .line 104
    invoke-static {v8, v11, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v4

    add-int/2addr v4, v9

    .line 105
    new-array v4, v4, [B

    .line 106
    array-length v7, v8

    .line 107
    array-length v9, v8

    invoke-static {v8, v5, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8e

    .line 109
    :cond_40
    array-length v9, v8

    invoke-static {v8, v5, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    array-length v9, v8

    add-int/2addr v7, v9

    .line 111
    array-length v9, v4

    if-ne v7, v9, :cond_8e

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "flag_start:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v12, v4

    sub-int/2addr v12, v11

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "yyyt5"

    invoke-static {v10, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v4}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    array-length v10, v4

    sub-int/2addr v10, v11

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    if-eq v9, v10, :cond_8e

    return-void

    :cond_8e
    :goto_8e
    move v9, v5

    .line 119
    :goto_8f
    array-length v10, v8

    if-ge v9, v10, :cond_9c

    mul-int/lit8 v10, v6, 0x14

    add-int/2addr v10, v9

    .line 120
    aget-byte v11, v8, v9

    aput-byte v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_8f

    :cond_9c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_14

    .line 123
    :cond_a0
    aget-byte v4, v3, v10

    .line 124
    aget-byte v4, v3, v9

    const/4 v6, 0x5

    const/4 v7, 0x7

    .line 125
    invoke-static {v3, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v8

    .line 126
    aget-byte v7, v3, v7

    const/16 v9, 0x8

    .line 127
    aget-byte v9, v3, v9

    const/16 v10, 0x9

    .line 128
    aget-byte v10, v3, v10

    const/16 v12, 0xa

    .line 129
    aget-byte v12, v3, v12

    const/16 v13, 0xb

    const/16 v14, 0xd

    .line 130
    invoke-static {v3, v13, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v15

    const/16 v13, 0x11

    .line 131
    invoke-static {v3, v14, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v14

    .line 132
    aget-byte v13, v3, v13

    invoke-static {v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v13

    const/16 v6, 0x12

    .line 133
    invoke-static {v3, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v6

    const/16 v11, 0x18

    .line 134
    invoke-static {v3, v2, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v2

    const/16 v5, 0x1c

    .line 135
    invoke-static {v3, v11, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-static {v11}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v11

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u83b7\u53d6\u8fd0\u52a8\u8ddd\u79bb\uff1a"

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1c

    .line 137
    aget-byte v0, v3, v0

    .line 151
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>()V

    .line 152
    invoke-virtual {v5, v15}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    .line 153
    invoke-virtual {v5, v14}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    .line 154
    invoke-virtual {v5, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    .line 155
    invoke-virtual {v5, v13}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvg_hr_value(I)V

    .line 156
    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHour(I)V

    .line 157
    invoke-virtual {v5, v12}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMinute(I)V

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v5, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setSecond(I)V

    .line 159
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    div-int/lit8 v13, v6, 0x3c

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 161
    const-string v13, "\'"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    rem-int/lit8 v6, v6, 0x3c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvgSpeed(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v6, 0x1

    .line 166
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v6, v7, -0x1

    const/4 v13, 0x2

    .line 167
    invoke-virtual {v2, v13, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x5

    .line 168
    invoke-virtual {v2, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xb

    .line 169
    invoke-virtual {v2, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 170
    invoke-virtual {v2, v6, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    const/4 v10, 0x0

    .line 171
    invoke-virtual {v2, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 172
    invoke-virtual {v2, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 173
    invoke-virtual {v5, v13}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDataFrom(I)V

    .line 174
    invoke-virtual {v5, v8}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setYear(I)V

    .line 175
    invoke-virtual {v5, v7}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMonth(I)V

    .line 176
    invoke-virtual {v5, v9}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDay(I)V

    .line 177
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDate(J)V

    .line 178
    invoke-virtual {v5, v4}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setType(I)V

    .line 179
    invoke-virtual {v5, v11}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    .line 180
    invoke-virtual {v5, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAerobic_mins(I)V

    const/16 v0, 0x28

    if-le v1, v0, :cond_1c9

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x29

    const/16 v2, 0x2b

    .line 193
    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/16 v2, 0x2c

    move v4, v2

    :goto_1a4
    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v1, 0x2c

    if-ge v6, v7, :cond_1c2

    .line 196
    aget-byte v7, v3, v4

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v4, v4, 0x1

    .line 197
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    .line 202
    new-instance v8, Lcom/keephealth/android/model/bean/ActivityItem;

    invoke-direct {v8}, Lcom/keephealth/android/model/bean/ActivityItem;-><init>()V

    .line 203
    iput v7, v8, Lcom/keephealth/android/model/bean/ActivityItem;->hr:I

    .line 204
    iput v4, v8, Lcom/keephealth/android/model/bean/ActivityItem;->step:I

    .line 205
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_1a4

    .line 207
    :cond_1c2
    invoke-static {v0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHr_data_vlaue_json(Ljava/lang/String;)V

    .line 210
    :cond_1c9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".........\u83b7\u53d6\u6d3b\u52a8\u6570\u636e"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 214
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 216
    invoke-virtual {v0, v5}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method
