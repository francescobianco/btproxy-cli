.class public Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthGpsItemDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthGpsItemDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthGpsItem;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_GPS_ITEM"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 50
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 51
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HEALTH_GPS_ITEM\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAC_ADDRESS\" TEXT,\"START_DATE\" TEXT,\"END_DATE\" INTEGER,\"LONGITUDE\" REAL,\"LATITUDE\" REAL,\"DATE\" INTEGER,\"USER_ID\" TEXT,\"REMARK\" TEXT);"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 66
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

    const-string v0, "\"HEALTH_GPS_ITEM\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthGpsItem;)V
    .registers 7

    .line 123
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 125
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 129
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x1

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getStartDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    const/4 v1, 0x4

    .line 138
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 141
    :cond_34
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getEndDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v1, 0x5

    .line 143
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    :cond_42
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_50

    const/4 v1, 0x6

    .line 148
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 151
    :cond_50
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v1, 0x7

    .line 153
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 156
    :cond_5e
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6d

    const/16 v1, 0x8

    .line 158
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 161
    :cond_6d
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    const/16 v1, 0x9

    .line 163
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 166
    :cond_78
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getRemark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_83

    const/16 v0, 0xa

    .line 168
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_83
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthGpsItem;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthGpsItem;)V
    .registers 7

    .line 72
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 74
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 78
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x1

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 82
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 85
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getStartDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    const/4 v1, 0x4

    .line 87
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :cond_34
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getEndDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v1, 0x5

    .line 92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 95
    :cond_42
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_50

    const/4 v1, 0x6

    .line 97
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 100
    :cond_50
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v1, 0x7

    .line 102
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 105
    :cond_5e
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6d

    const/16 v1, 0x8

    .line 107
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    :cond_6d
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    const/16 v1, 0x9

    .line 112
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 115
    :cond_78
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getRemark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_83

    const/16 v0, 0xa

    .line 117
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_83
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthGpsItem;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthGpsItem;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 217
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthGpsItem;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthGpsItem;)Z
    .registers 2

    .line 225
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthGpsItem;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthGpsItem;
    .registers 15

    .line 179
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    .line 180
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v2, v1

    goto :goto_14

    :cond_b
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    :goto_14
    add-int/lit8 v0, p2, 0x1

    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    move v3, v0

    add-int/lit8 v0, p2, 0x2

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object v4, v1

    goto :goto_2f

    :cond_2a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2f
    add-int/lit8 v0, p2, 0x3

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_39

    move-object v5, v1

    goto :goto_3e

    :cond_39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_3e
    add-int/lit8 v0, p2, 0x4

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_48

    move-object v6, v1

    goto :goto_51

    :cond_48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v6, v0

    :goto_51
    add-int/lit8 v0, p2, 0x5

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5b

    move-object v7, v1

    goto :goto_64

    :cond_5b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v7, v0

    :goto_64
    add-int/lit8 v0, p2, 0x6

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6e

    move-object v8, v1

    goto :goto_77

    :cond_6e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v8, v0

    :goto_77
    add-int/lit8 v0, p2, 0x7

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_81

    move-object v9, v1

    goto :goto_8a

    :cond_81
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v0

    :goto_8a
    add-int/lit8 v0, p2, 0x8

    .line 188
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_94

    move-object v10, v1

    goto :goto_99

    :cond_94
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_99
    add-int/lit8 p2, p2, 0x9

    .line 189
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    move-object p1, v1

    goto :goto_a7

    :cond_a3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_a7
    move-object v0, v11

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;-><init>(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthGpsItem;I)V
    .registers 8

    .line 196
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x2

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v0, v1

    goto :goto_30

    :cond_2c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object v0, v1

    goto :goto_41

    :cond_3d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setStartDate(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 200
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    move-object v0, v1

    goto :goto_56

    :cond_4e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_56
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setEndDate(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x5

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_63

    move-object v0, v1

    goto :goto_6b

    :cond_63
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_6b
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLongitude(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x6

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_78

    move-object v0, v1

    goto :goto_80

    :cond_78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_80
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setLatitude(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x7

    .line 203
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8d

    move-object v0, v1

    goto :goto_95

    :cond_8d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_95
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setDate(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x8

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a2

    move-object v0, v1

    goto :goto_a6

    :cond_a2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a6
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setUserId(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x9

    .line 205
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    goto :goto_b6

    :cond_b2
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b6
    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setRemark(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthGpsItem;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    .line 174
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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthGpsItem;J)Ljava/lang/Long;
    .registers 5

    .line 210
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthGpsItem;->setId(Ljava/lang/Long;)V

    .line 211
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthGpsItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthGpsItemDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthGpsItem;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
