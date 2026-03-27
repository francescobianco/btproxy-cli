.class public Lcom/keephealth/android/greendao/gen/WeightDataDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "WeightDataDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/WeightDataDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/ui/main/bean/WeightData;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "WEIGHT_DATA"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 52
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 53
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"WEIGHT_DATA\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"WEIGHT\" REAL NOT NULL ,\"WEIGHT_LB\" REAL NOT NULL ,\"BMI\" TEXT,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"HOUR\" INTEGER NOT NULL ,\"MINUTER\" INTEGER NOT NULL ,\"DATA\" INTEGER NOT NULL ,\"MONGTH_DAY\" TEXT,\"HOUT_MINTER\" TEXT);"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    const-string p1, "IF EXISTS "

    goto :goto_e

    :cond_c
    const-string p1, ""

    :goto_e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"WEIGHT_DATA\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/main/bean/WeightData;)V
    .registers 7

    .line 109
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 115
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 116
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 118
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x4

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :cond_2d
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 125
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMinuter()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 127
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getData()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 129
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMongthDay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    const/16 v1, 0xb

    .line 131
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 134
    :cond_70
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getHoutMinter()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7b

    const/16 v0, 0xc

    .line 136
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_7b
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/main/bean/WeightData;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/main/bean/WeightData;)V
    .registers 7

    .line 76
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 78
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 82
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 83
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 85
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x4

    .line 87
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :cond_2d
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 90
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 91
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 92
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMinuter()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getData()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 96
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMongthDay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    const/16 v1, 0xb

    .line 98
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :cond_70
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getHoutMinter()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7b

    const/16 v0, 0xc

    .line 103
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_7b
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/main/bean/WeightData;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/ui/main/bean/WeightData;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 189
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->getKey(Lcom/keephealth/android/ui/main/bean/WeightData;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/ui/main/bean/WeightData;)Z
    .registers 2

    .line 197
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->hasKey(Lcom/keephealth/android/ui/main/bean/WeightData;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/main/bean/WeightData;
    .registers 20

    move-object/from16 v0, p1

    .line 147
    new-instance v14, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 148
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v1, v2

    goto :goto_15

    :cond_d
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_15
    add-int/lit8 v3, p2, 0x1

    .line 149
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    add-int/lit8 v4, p2, 0x2

    .line 150
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-int/lit8 v5, p2, 0x3

    .line 151
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    move-object v5, v2

    goto :goto_2f

    :cond_2b
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2f
    add-int/lit8 v6, p2, 0x4

    .line 152
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v7, p2, 0x5

    .line 153
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x6

    .line 154
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x7

    .line 155
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 156
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x9

    .line 157
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    add-int/lit8 v13, p2, 0xa

    .line 158
    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5d

    move-object v13, v2

    goto :goto_61

    :cond_5d
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_61
    add-int/lit8 v15, p2, 0xb

    .line 159
    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6b

    move-object v15, v2

    goto :goto_70

    :cond_6b
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    :goto_70
    move-object v0, v14

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Lcom/keephealth/android/ui/main/bean/WeightData;-><init>(Ljava/lang/Long;FFLjava/lang/String;IIIIIJLjava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/main/bean/WeightData;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/main/bean/WeightData;I)V
    .registers 8

    .line 166
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_11

    :cond_9
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_11
    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 167
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setWeight(F)V

    add-int/lit8 v0, p3, 0x2

    .line 168
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setWeightLb(F)V

    add-int/lit8 v0, p3, 0x3

    .line 169
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object v0, v1

    goto :goto_34

    :cond_30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setBmi(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 170
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setYear(I)V

    add-int/lit8 v0, p3, 0x5

    .line 171
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setMonth(I)V

    add-int/lit8 v0, p3, 0x6

    .line 172
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setDay(I)V

    add-int/lit8 v0, p3, 0x7

    .line 173
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setHour(I)V

    add-int/lit8 v0, p3, 0x8

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setMinuter(I)V

    add-int/lit8 v0, p3, 0x9

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/keephealth/android/ui/main/bean/WeightData;->setData(J)V

    add-int/lit8 v0, p3, 0xa

    .line 176
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_77

    move-object v0, v1

    goto :goto_7b

    :cond_77
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7b
    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setMongthDay(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0xb

    .line 177
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_87

    goto :goto_8b

    :cond_87
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8b
    invoke-virtual {p2, v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->setHoutMinter(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/main/bean/WeightData;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    .line 142
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_10

    :cond_8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/ui/main/bean/WeightData;J)Ljava/lang/Long;
    .registers 5

    .line 182
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->setId(Ljava/lang/Long;)V

    .line 183
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->updateKeyAfterInsert(Lcom/keephealth/android/ui/main/bean/WeightData;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
