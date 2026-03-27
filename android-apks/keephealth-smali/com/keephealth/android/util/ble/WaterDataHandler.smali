.class public Lcom/keephealth/android/util/ble/WaterDataHandler;
.super Ljava/lang/Object;
.source "WaterDataHandler.java"


# instance fields
.field dataAll:[B

.field dataItem:[B

.field dataLengthCount:I

.field indexData:I

.field length:I

.field listData:Ljava/util/List;
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataLengthCount:I

    .line 23
    iput v0, p0, Lcom/keephealth/android/util/ble/WaterDataHandler;->length:I

    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setDataWater([BI)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 28
    const-string v2, " -- "

    const-string v3, "\u559d\u6c34\u63a5\u53e3\u6570\u636e \u5e74\u6708\u65e5\u65f6\u5206\u79d2: "

    const-string v4, " "

    const/4 v5, 0x4

    const-string v6, ":"

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x5

    const-string v10, "-"

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez p2, :cond_29c

    .line 29
    aget-byte v14, v1, v13

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xf0

    if-eq v14, v15, :cond_20

    return v13

    .line 33
    :cond_20
    iput v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    .line 35
    invoke-static {v1, v12, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v9

    iput v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->length:I

    add-int/2addr v9, v5

    .line 36
    new-array v9, v9, [B

    iput-object v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataAll:[B

    .line 37
    iput v13, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataLengthCount:I

    .line 39
    array-length v14, v1

    invoke-static {v1, v13, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataLengthCount:I

    array-length v1, v1

    add-int/2addr v9, v1

    iput v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataLengthCount:I

    .line 41
    iget-object v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataAll:[B

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    new-array v9, v1, [B

    .line 43
    iget v14, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->length:I

    const/16 v15, 0x10

    if-gt v14, v15, :cond_299

    const/16 v14, 0x8

    .line 44
    iput v14, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    .line 45
    :goto_56
    iget v14, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    iget-object v15, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataAll:[B

    aget-byte v12, v15, v7

    and-int/lit16 v12, v12, 0xff

    if-ge v14, v12, :cond_71

    .line 46
    invoke-static {v15, v14, v9, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget v12, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    add-int/lit8 v14, v1, 0x3

    add-int/2addr v12, v14

    iput v12, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    .line 48
    iget-object v12, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    goto :goto_56

    :cond_71
    move v1, v13

    .line 50
    :goto_72
    iget-object v7, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_297

    .line 51
    iget-object v7, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_8d

    move-object v13, v3

    move-object/from16 v19, v6

    goto/16 :goto_28c

    .line 55
    :cond_8d
    iget-object v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9, v13, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v9

    .line 56
    iget-object v12, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    aget-byte v12, v12, v11

    and-int/lit16 v12, v12, 0xff

    .line 57
    iget-object v14, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    aget-byte v14, v14, v8

    and-int/lit16 v14, v14, 0xff

    .line 58
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v15

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v15

    .line 59
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v15

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v8, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    move-object/from16 v16, v3

    .line 60
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v8, v13

    sget-object v3, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v8, v11

    .line 59
    invoke-virtual {v15, v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 61
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v5, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v8, 0x2

    new-array v11, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 63
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v11, v13

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v15, 0x1

    aput-object v8, v11, v15

    .line 62
    invoke-virtual {v3, v5, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    move v3, v13

    move v5, v3

    :goto_13a
    if-ge v3, v7, :cond_206

    .line 67
    iget-object v8, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    mul-int/lit8 v11, v3, 0x5

    add-int/lit8 v15, v11, 0x5

    aget-byte v8, v8, v15

    and-int/lit16 v8, v8, 0xff

    .line 68
    iget-object v15, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    add-int/lit8 v17, v11, 0x6

    aget-byte v15, v15, v17

    and-int/lit16 v15, v15, 0xff

    .line 69
    iget-object v13, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    add-int/lit8 v18, v11, 0x7

    aget-byte v13, v13, v18

    and-int/lit16 v13, v13, 0xff

    move/from16 v18, v7

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 72
    iget-object v13, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object/from16 v19, v6

    add-int/lit8 v6, v11, 0x8

    add-int/lit8 v11, v11, 0xa

    invoke-static {v13, v6, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v6

    add-int/2addr v5, v6

    .line 74
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, v16

    invoke-static {v13, v11}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v11, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    .line 76
    invoke-virtual {v11, v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    .line 77
    invoke-virtual {v11, v12}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    .line 78
    invoke-virtual {v11, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    .line 79
    invoke-virtual {v11, v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    .line 80
    invoke-virtual {v11, v15}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 81
    invoke-static {v7}, Lcom/keephealth/android/util/TimeUtil;->convertDateStringToTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setData(J)V

    .line 82
    invoke-virtual {v11, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    .line 83
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v6

    .line 86
    invoke-virtual {v6, v11}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->save(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v18

    move-object/from16 v6, v19

    const/4 v13, 0x0

    goto/16 :goto_13a

    :cond_206
    move-object/from16 v19, v6

    move-object/from16 v13, v16

    .line 89
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x2

    new-array v11, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 91
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v11, v15

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v15, 0x1

    aput-object v8, v11, v15

    .line 90
    invoke-virtual {v6, v7, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    .line 91
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-nez v6, :cond_286

    .line 93
    new-instance v6, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 94
    invoke-virtual {v6, v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setYear(I)V

    .line 95
    invoke-virtual {v6, v12}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setMonth(I)V

    .line 96
    invoke-virtual {v6, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setDay(I)V

    .line 97
    invoke-virtual {v6, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v5}, Lcom/keephealth/android/util/TimeUtil;->convertDateStringToTimestampDay(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setData(J)V

    .line 100
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->save(Ljava/lang/Object;)V

    goto :goto_28c

    .line 103
    :cond_286
    invoke-virtual {v6, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 104
    invoke-virtual {v3, v6}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->update(Ljava/lang/Object;)V

    :goto_28c
    add-int/lit8 v1, v1, 0x1

    move-object v3, v13

    move-object/from16 v6, v19

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v13, 0x0

    goto/16 :goto_72

    :cond_297
    const/4 v1, 0x1

    return v1

    :cond_299
    move v0, v13

    goto/16 :goto_539

    :cond_29c
    move-object v13, v3

    move-object/from16 v19, v6

    .line 111
    iget-object v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataAll:[B

    iget v5, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataLengthCount:I

    array-length v6, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataLengthCount:I

    array-length v1, v1

    add-int/2addr v3, v1

    iput v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataLengthCount:I

    .line 114
    iget v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->length:I

    const/4 v5, 0x4

    add-int/2addr v1, v5

    if-ne v3, v1, :cond_538

    .line 116
    iget-object v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataAll:[B

    iget v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    array-length v5, v1

    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataItem:[B

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u8d77\u59cb\u4f4d\u7f6e:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataItem:[B

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u559d\u6c34\u622a\u53d6\u6570\u636eonly1"

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_2df
    iget v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    iget v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->length:I

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_30e

    .line 120
    iget-object v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataItem:[B

    const/4 v3, 0x1

    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v6, v5

    const/4 v8, 0x0

    invoke-static {v1, v8, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 122
    iget-object v6, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataItem:[B

    aget-byte v8, v1, v3

    and-int/lit16 v3, v8, 0xff

    add-int/2addr v3, v5

    array-length v5, v6

    invoke-static {v6, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->dataItem:[B

    .line 123
    iget v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    array-length v5, v1

    add-int/2addr v3, v5

    iput v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->indexData:I

    .line 125
    iget-object v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2df

    :cond_30e
    const/4 v15, 0x0

    .line 127
    :goto_30f
    iget-object v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_536

    .line 128
    iget-object v1, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v3, 0x7

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 129
    iget-object v3, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v5, 0x3

    invoke-static {v3, v5, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v3

    .line 130
    iget-object v6, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    .line 131
    iget-object v8, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 135
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v11

    .line 136
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v11

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v14, 0x2

    new-array v5, v14, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v14, 0x0

    aput-object v7, v5, v14

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v14, 0x1

    aput-object v7, v5, v14

    .line 136
    invoke-virtual {v11, v12, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 138
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v11, 0x2

    new-array v12, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v12, v14

    sget-object v11, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v12, v14

    .line 139
    invoke-virtual {v5, v7, v12}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_3d6
    if-ge v7, v1, :cond_4a4

    .line 146
    iget-object v11, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    mul-int/lit8 v12, v7, 0x5

    add-int/lit8 v14, v12, 0x8

    aget-byte v11, v11, v14

    and-int/lit16 v11, v11, 0xff

    .line 147
    iget-object v14, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    add-int/lit8 v16, v12, 0x9

    aget-byte v14, v14, v16

    and-int/lit16 v14, v14, 0xff

    .line 148
    iget-object v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    add-int/lit8 v18, v12, 0xa

    aget-byte v9, v9, v18

    and-int/lit16 v9, v9, 0xff

    move/from16 v18, v1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v9, v0, Lcom/keephealth/android/util/ble/WaterDataHandler;->listData:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    add-int/lit8 v0, v12, 0xb

    add-int/lit8 v12, v12, 0xd

    invoke-static {v9, v0, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    .line 152
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v5, v0

    .line 154
    new-instance v9, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {v9}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;-><init>()V

    .line 155
    invoke-virtual {v9, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setYear(I)V

    .line 156
    invoke-virtual {v9, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMonth(I)V

    .line 157
    invoke-virtual {v9, v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setDay(I)V

    .line 158
    invoke-virtual {v9, v11}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setHour(I)V

    .line 159
    invoke-virtual {v9, v14}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setMinuter(I)V

    .line 160
    invoke-static {v1}, Lcom/keephealth/android/util/TimeUtil;->convertDateStringToTimestamp(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setData(J)V

    .line 161
    invoke-virtual {v9, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->setWater(I)V

    .line 162
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayItemDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v9}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayItemDao;->save(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v4, v20

    const/4 v9, 0x5

    goto/16 :goto_3d6

    :cond_4a4
    move-object/from16 v20, v4

    move-object/from16 v4, v19

    .line 168
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v7, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v9, 0x2

    new-array v11, v9, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 170
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v11, v14

    sget-object v12, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v11, v14

    .line 169
    invoke-virtual {v1, v7, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-nez v1, :cond_524

    .line 172
    new-instance v1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>()V

    .line 173
    invoke-virtual {v1, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setYear(I)V

    .line 174
    invoke-virtual {v1, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setMonth(I)V

    .line 175
    invoke-virtual {v1, v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setDay(I)V

    .line 176
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {v3}, Lcom/keephealth/android/util/TimeUtil;->convertDateStringToTimestampDay(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setData(J)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->save(Ljava/lang/Object;)V

    goto :goto_52a

    .line 182
    :cond_524
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->update(Ljava/lang/Object;)V

    :goto_52a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    const/4 v7, 0x6

    const/4 v9, 0x5

    goto/16 :goto_30f

    :cond_536
    const/4 v0, 0x1

    return v0

    :cond_538
    const/4 v0, 0x0

    :goto_539
    return v0
.end method
