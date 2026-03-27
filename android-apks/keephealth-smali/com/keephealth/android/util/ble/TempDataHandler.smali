.class public Lcom/keephealth/android/util/ble/TempDataHandler;
.super Ljava/lang/Object;
.source "TempDataHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


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
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataIndex:I

    .line 39
    iput v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataLength:I

    return-void
.end method

.method private handler(Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 84
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    new-array v5, v4, [B

    move v6, v2

    .line 85
    :goto_17
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_34

    .line 86
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move v8, v2

    .line 87
    :goto_24
    array-length v9, v7

    if-ge v8, v9, :cond_31

    mul-int/lit8 v9, v6, 0x14

    add-int/2addr v9, v8

    .line 88
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

    .line 91
    invoke-static {v3, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v7

    .line 92
    aget-byte v6, v3, v6

    const/4 v8, 0x4

    const/4 v9, 0x6

    .line 93
    invoke-static {v3, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v8

    .line 94
    aget-byte v9, v3, v9

    const/4 v10, 0x7

    .line 95
    aget-byte v10, v3, v10

    const/16 v11, 0x8

    .line 96
    aget-byte v3, v3, v11

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "***************\u6e29\u5ea6\u89e3\u6790\u6570\u636e length:"

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

    const/16 v6, 0x5a0

    .line 99
    div-int/2addr v6, v3

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 101
    new-instance v11, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/TempDayInfo;-><init>()V

    const-wide/16 v12, 0x0

    move v14, v2

    move v15, v14

    move/from16 v16, v15

    :goto_bd
    add-int/lit8 v2, v14, 0x9

    if-ge v2, v4, :cond_181

    if-ge v15, v6, :cond_181

    add-int/lit8 v0, v14, 0xb

    .line 105
    invoke-static {v5, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    .line 106
    new-instance v2, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;-><init>()V

    move/from16 v17, v4

    move-object/from16 v18, v5

    int-to-double v4, v0

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    div-double v4, v4, v19

    const/4 v0, 0x1

    .line 107
    invoke-static {v4, v5, v0}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    .line 108
    invoke-virtual {v2, v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->setYear(I)V

    .line 109
    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/TempInfo;->setMonth(I)V

    .line 110
    invoke-virtual {v2, v10}, Lcom/keephealth/android/greendao/bean/TempInfo;->setDay(I)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->setOffTime(I)V

    const/16 v0, 0x3c

    .line 112
    div-int/2addr v0, v3

    div-int v4, v15, v0

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->setHour(I)V

    .line 113
    rem-int v0, v15, v0

    mul-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/bean/TempInfo;->setMinute(I)V

    const/4 v5, 0x1

    .line 114
    invoke-virtual {v7, v5, v8}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v5, v9, -0x1

    move/from16 v19, v3

    const/4 v3, 0x2

    .line 115
    invoke-virtual {v7, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 116
    invoke-virtual {v7, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    .line 117
    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 118
    invoke-virtual {v7, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v7, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->setDate(J)V

    add-int/lit8 v15, v15, 0x1

    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v11, v8}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setYear(I)V

    .line 125
    invoke-virtual {v11, v9}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setMonth(I)V

    .line 126
    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDay(I)V

    const/4 v3, 0x1

    .line 127
    invoke-virtual {v7, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 128
    invoke-virtual {v7, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 129
    invoke-virtual {v7, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 131
    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-virtual {v7, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 133
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDate(J)V

    .line 134
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    const-wide/high16 v20, 0x4040000000000000L    # 32.0

    cmpl-double v0, v3, v20

    if-ltz v0, :cond_171

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    const-wide/high16 v20, 0x4045000000000000L    # 42.0

    cmpg-double v0, v3, v20

    if-gtz v0, :cond_171

    move/from16 v0, v16

    add-int/lit8 v16, v0, 0x1

    .line 136
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v2

    add-double/2addr v12, v2

    goto :goto_175

    :cond_171
    move/from16 v0, v16

    move/from16 v16, v0

    :goto_175
    add-int/lit8 v14, v14, 0x2

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v3, v19

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_bd

    :cond_181
    move/from16 v0, v16

    if-eqz v0, :cond_21d

    int-to-double v2, v0

    div-double/2addr v12, v2

    const/4 v0, 0x1

    .line 140
    invoke-static {v12, v13, v0}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    .line 141
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempDayInfoDao()Lcom/keephealth/android/greendao/gen/TempDayInfoDao;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 143
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 144
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 145
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    .line 143
    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 147
    new-array v2, v7, [Lcom/keephealth/android/greendao/bean/TempDayInfo;

    aput-object v11, v2, v6

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->insertInTx([Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 150
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 152
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 150
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 154
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 161
    :cond_21d
    const-string v0, "***************\u6e29\u5ea6\u89e3\u6790\u6570\u636e\u5b8c\u6bd5*********************"

    sget-object v1, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentTemp([B)Lcom/keephealth/android/greendao/bean/TempInfo;
    .registers 8

    .line 26
    new-instance v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x6

    .line 28
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/16 v3, 0x8

    .line 30
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    const/4 v5, 0x1

    .line 31
    invoke-static {v1, v2, v5}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpForehead(D)V

    int-to-double v1, p1

    div-double/2addr v1, v3

    .line 32
    invoke-static {v1, v2, v5}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->setDate(J)V

    return-object v0
.end method

.method public handTempTest([B)V
    .registers 4

    const/4 v0, 0x4

    .line 165
    aget-byte p1, p1, v0

    .line 166
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 168
    :goto_12
    iput-boolean v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isTempTest:Z

    .line 169
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public init([B)V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 42
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataLength:I

    .line 43
    rem-int/lit8 v2, v0, 0x14

    if-nez v2, :cond_1c

    .line 44
    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataIndex:I

    goto :goto_21

    .line 46
    :cond_1c
    div-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataIndex:I

    .line 48
    :goto_21
    iget-object v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 10

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x14

    array-length v3, p1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u603b\u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5206\u5305\u6570\u636e\u63a5\u6536\u6e29\u5ea6"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataIndex:I

    if-ne v1, v3, :cond_cd

    iget-object v1, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x14

    array-length p1, p1

    add-int/2addr v1, p1

    iget p1, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->dataLength:I

    if-ne v1, p1, :cond_cd

    .line 57
    new-array v1, p1, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 59
    :goto_60
    iget-object v6, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_87

    .line 60
    iget-object v6, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-static {v6, v3, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v6, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 63
    :cond_87
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

    const-string v4, "\u6e29\u5ea6\u6570\u636e"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ne v3, p1, :cond_cd

    .line 66
    iget-object p1, p0, Lcom/keephealth/android/util/ble/TempDataHandler;->datas:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/TempDataHandler;->handler(Ljava/util/List;)V

    .line 67
    iput-boolean v2, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 76
    :cond_cd
    iput-boolean v2, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object v0
.end method
