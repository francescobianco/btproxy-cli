.class public Lcom/keephealth/android/util/ble/HRVDataHandler;
.super Ljava/lang/Object;
.source "HRVDataHandler.java"


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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataIndex:I

    .line 40
    iput v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataLength:I

    return-void
.end method

.method private handler(Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 85
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 86
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    new-array v5, v4, [B

    move v6, v2

    .line 87
    :goto_17
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_34

    .line 88
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move v8, v2

    .line 89
    :goto_24
    array-length v9, v7

    if-ge v8, v9, :cond_31

    mul-int/lit8 v9, v6, 0x14

    add-int/2addr v9, v8

    .line 90
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

    .line 93
    invoke-static {v3, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v7

    .line 94
    aget-byte v6, v3, v6

    const/4 v8, 0x4

    const/4 v9, 0x6

    .line 95
    invoke-static {v3, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v8

    .line 96
    aget-byte v9, v3, v9

    const/4 v10, 0x7

    .line 97
    aget-byte v10, v3, v10

    const/16 v11, 0x8

    .line 98
    aget-byte v3, v3, v11

    .line 99
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "***************HRV\u89e3\u6790\u6570\u636e length:"

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

    .line 101
    div-int/2addr v6, v3

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 103
    new-instance v11, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>()V

    move v12, v2

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_bf
    add-int/lit8 v2, v12, 0x9

    if-ge v2, v4, :cond_191

    if-ge v13, v6, :cond_191

    add-int/lit8 v0, v12, 0xb

    .line 109
    invoke-static {v5, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    .line 110
    new-instance v2, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-direct {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;-><init>()V

    .line 111
    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setTmpHandler(I)V

    .line 112
    invoke-virtual {v2, v8}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setYear(I)V

    .line 113
    invoke-virtual {v2, v9}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setMonth(I)V

    .line 114
    invoke-virtual {v2, v10}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setDay(I)V

    .line 115
    invoke-virtual {v2, v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setOffTime(I)V

    const/16 v0, 0x3c

    .line 116
    div-int/2addr v0, v3

    move/from16 v18, v4

    div-int v4, v13, v0

    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setHour(I)V

    .line 117
    rem-int v0, v13, v0

    mul-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setMinute(I)V

    move/from16 v19, v3

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v7, v3, v8}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v3, v9, -0x1

    move-object/from16 v20, v5

    const/4 v5, 0x2

    .line 119
    invoke-virtual {v7, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    .line 120
    invoke-virtual {v7, v5, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xb

    .line 121
    invoke-virtual {v7, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 122
    invoke-virtual {v7, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v7, v0, v4}, Ljava/util/Calendar;->set(II)V

    move v4, v6

    .line 124
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->setDate(J)V

    add-int/lit8 v13, v13, 0x1

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v11, v8}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setYear(I)V

    .line 129
    invoke-virtual {v11, v9}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMonth(I)V

    .line 130
    invoke-virtual {v11, v10}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setDay(I)V

    const/4 v5, 0x1

    .line 131
    invoke-virtual {v7, v5, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    .line 132
    invoke-virtual {v7, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 133
    invoke-virtual {v7, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    const/4 v5, 0x0

    .line 134
    invoke-virtual {v7, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 135
    invoke-virtual {v7, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 136
    invoke-virtual {v7, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 137
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setDate(J)V

    .line 138
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v0

    if-lez v0, :cond_15c

    move/from16 v0, v17

    add-int/lit8 v17, v0, 0x1

    .line 140
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v0

    add-int/2addr v14, v0

    goto :goto_15e

    :cond_15c
    move/from16 v0, v17

    .line 142
    :goto_15e
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v0

    move/from16 v3, v16

    if-le v0, v3, :cond_16b

    .line 143
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v16

    goto :goto_16d

    :cond_16b
    move/from16 v16, v3

    :goto_16d
    if-nez v15, :cond_173

    .line 146
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v15

    .line 148
    :cond_173
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v0

    if-ge v0, v15, :cond_184

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v0

    if-lez v0, :cond_184

    .line 149
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v0

    move v15, v0

    :cond_184
    add-int/lit8 v12, v12, 0x2

    move v6, v4

    move/from16 v4, v18

    move/from16 v3, v19

    move-object/from16 v5, v20

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_bf

    :cond_191
    move/from16 v3, v16

    move/from16 v0, v17

    if-eqz v0, :cond_236

    .line 153
    invoke-virtual {v11, v15}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMinValue(I)V

    .line 154
    invoke-virtual {v11, v3}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMaxValue(I)V

    int-to-float v2, v14

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 155
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 156
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVDayDataBeanDao()Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 158
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 159
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 160
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    .line 158
    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 162
    new-array v2, v7, [Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    aput-object v11, v2, v6

    invoke-virtual {v0, v2}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->insertInTx([Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVItemBeanDao()Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 165
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 167
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 165
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 169
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_23a

    :cond_236
    const/4 v6, 0x0

    .line 171
    invoke-virtual {v11, v6}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    .line 176
    :goto_23a
    const-string v0, "***************HRV\u89e3\u6790\u6570\u636e\u5b8c\u6bd5*********************"

    sget-object v1, Lcom/keephealth/android/app/Constants;->SYCN_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentTemp([B)Lcom/keephealth/android/greendao/bean/TempInfo;
    .registers 8

    .line 28
    new-instance v0, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/TempInfo;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x6

    .line 30
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    const/16 v3, 0x8

    .line 32
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    const/4 v5, 0x1

    .line 33
    invoke-static {v1, v2, v5}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpForehead(D)V

    int-to-double v1, p1

    div-double/2addr v1, v3

    .line 34
    invoke-static {v1, v2, v5}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    return-object v0
.end method

.method public handTempTest([B)V
    .registers 4

    const/4 v0, 0x4

    .line 180
    aget-byte p1, p1, v0

    .line 181
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

    .line 183
    :goto_12
    iput-boolean v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isTempTest:Z

    .line 184
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public init([B)V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 43
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataLength:I

    .line 44
    rem-int/lit8 v2, v0, 0x14

    if-nez v2, :cond_1c

    .line 45
    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataIndex:I

    goto :goto_21

    .line 47
    :cond_1c
    div-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataIndex:I

    .line 49
    :goto_21
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x14

    array-length p1, p1

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u603b\u6570\u636e\u957f\u5ea6== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5206\u5305\u6570\u636e\u63a5\u6536HRV"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 10

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u6570\u636e\u957f\u5ea6== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

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

    iget v1, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5206\u5305\u6570\u636e\u63a5\u6536HRV"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataIndex:I

    if-ne v1, v3, :cond_cd

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x14

    array-length p1, p1

    add-int/2addr v1, p1

    iget p1, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->dataLength:I

    if-ne v1, p1, :cond_cd

    .line 59
    new-array v1, p1, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 61
    :goto_60
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_87

    .line 62
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-static {v6, v3, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v6, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 65
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

    const-string v4, "HRV\u6570\u636e"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ne v3, p1, :cond_cd

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/util/ble/HRVDataHandler;->datas:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/HRVDataHandler;->handler(Ljava/util/List;)V

    .line 69
    iput-boolean v2, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 78
    :cond_cd
    iput-boolean v2, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object v0
.end method
