.class public Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthHeartRateItemDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_HEART_RATE_ITEM"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 55
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 56
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HEALTH_HEART_RATE_ITEM\" (\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAC_ADDRESS\" TEXT,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"OFFSET_MINUTE\" INTEGER NOT NULL ,\"SS\" INTEGER NOT NULL ,\"FZ\" INTEGER NOT NULL ,\"OXYGEN\" INTEGER NOT NULL ,\"HEART_RAVE_VALUE\" INTEGER NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"USER_ID\" TEXT,\"REMARK\" TEXT,\"HOUR\" INTEGER NOT NULL ,\"MINUTER\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 76
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

    const-string v0, "\"HEALTH_HEART_RATE_ITEM\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)V
    .registers 6

    .line 114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 115
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 121
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 125
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getSs()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOxygen()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 129
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b

    const/16 v1, 0xc

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_7b
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    const/16 v1, 0xd

    .line 138
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 140
    :cond_86
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 141
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0xf

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)V
    .registers 6

    .line 82
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 83
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 85
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 87
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 90
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 91
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 92
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOffsetMinute()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getSs()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getOxygen()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 96
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 97
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 99
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b

    const/16 v1, 0xc

    .line 101
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_7b
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    const/16 v1, 0xd

    .line 106
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :cond_86
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 109
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0xf

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;
    .registers 23

    move-object/from16 v0, p1

    .line 151
    new-instance v18, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 152
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    move v2, v1

    add-int/lit8 v1, p2, 0x1

    .line 153
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    move-object v3, v4

    goto :goto_1e

    :cond_19
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_1e
    add-int/lit8 v1, p2, 0x2

    .line 154
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v1, p2, 0x3

    .line 155
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v1, p2, 0x4

    .line 156
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v1, p2, 0x5

    .line 157
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v1, p2, 0x6

    .line 158
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v1, p2, 0x7

    .line 159
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v1, p2, 0x8

    .line 160
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v1, p2, 0x9

    .line 161
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v1, p2, 0xa

    .line 162
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    add-int/lit8 v1, p2, 0xb

    .line 163
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5e

    move-object v15, v4

    goto :goto_63

    :cond_5e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    :goto_63
    add-int/lit8 v1, p2, 0xc

    .line 164
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_6e

    move-object/from16 v19, v4

    goto :goto_74

    :cond_6e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_74
    add-int/lit8 v1, p2, 0xd

    .line 165
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    add-int/lit8 v1, p2, 0xe

    .line 166
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v1, v18

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-wide v12, v13

    move-object v14, v15

    move-object/from16 v15, v19

    invoke-direct/range {v1 .. v17}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>(ZLjava/lang/String;IIIIIIIIJLjava/lang/String;Ljava/lang/String;II)V

    return-object v18
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;I)V
    .registers 7

    .line 173
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x1

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    move-object v0, v2

    goto :goto_1b

    :cond_17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setYear(I)V

    add-int/lit8 v0, p3, 0x3

    .line 176
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMonth(I)V

    add-int/lit8 v0, p3, 0x4

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDay(I)V

    add-int/lit8 v0, p3, 0x5

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOffsetMinute(I)V

    add-int/lit8 v0, p3, 0x6

    .line 179
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setSs(I)V

    add-int/lit8 v0, p3, 0x7

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setFz(I)V

    add-int/lit8 v0, p3, 0x8

    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setOxygen(I)V

    add-int/lit8 v0, p3, 0x9

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    add-int/lit8 v0, p3, 0xa

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setDate(J)V

    add-int/lit8 v0, p3, 0xb

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_79

    move-object v0, v2

    goto :goto_7d

    :cond_79
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7d
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_89

    goto :goto_8d

    :cond_89
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8d
    invoke-virtual {p2, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHour(I)V

    add-int/lit8 p3, p3, 0xe

    .line 187
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setMinuter(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Void;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
