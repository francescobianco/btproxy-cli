.class public Lcom/keephealth/android/greendao/gen/HealthSportItemDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthSportItemDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthSportItem;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_SPORT_ITEM"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 60
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 61
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HEALTH_SPORT_ITEM\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAC_ADDRESS\" TEXT,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"STEP_COUNT\" INTEGER NOT NULL ,\"ACTIVE_TIME\" INTEGER NOT NULL ,\"CALORY\" REAL NOT NULL ,\"DISTANCE\" REAL NOT NULL ,\"AVG_STEP\" INTEGER NOT NULL ,\"AVG_ACTIVE_TIME\" INTEGER NOT NULL ,\"AVG_CALORY\" REAL NOT NULL ,\"AVG_DISTANCE\" REAL NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"USER_ID\" TEXT,\"REMARK\" TEXT,\"ITEM_COUNT\" INTEGER NOT NULL ,\"HOUR\" INTEGER NOT NULL ,\"MINUTE\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 86
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

    const-string v0, "\"HEALTH_SPORT_ITEM\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthSportItem;)V
    .registers 7

    .line 133
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 135
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 139
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x1

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 141
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 145
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 149
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 150
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 151
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 152
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgStep()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 154
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 155
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    const/16 v0, 0xf

    .line 156
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 158
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    const/16 v1, 0x10

    .line 160
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 163
    :cond_a8
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b3

    const/16 v1, 0x11

    .line 165
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 167
    :cond_b3
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 168
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 169
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMinute()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthSportItem;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthSportItem;)V
    .registers 7

    .line 92
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 98
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x1

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 100
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 102
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 109
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 110
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgStep()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 113
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 114
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getAvgDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    const/16 v0, 0xf

    .line 115
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    const/16 v1, 0x10

    .line 119
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :cond_a8
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b3

    const/16 v1, 0x11

    .line 124
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_b3
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 127
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMinute()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x14

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthSportItem;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthSportItem;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 237
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthSportItem;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthSportItem;)Z
    .registers 2

    .line 245
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthSportItem;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthSportItem;
    .registers 28

    move-object/from16 v0, p1

    .line 179
    new-instance v23, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 180
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v3, v2

    goto :goto_16

    :cond_d
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    :goto_16
    add-int/lit8 v1, p2, 0x1

    .line 181
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    move v4, v1

    add-int/lit8 v1, p2, 0x2

    .line 182
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object v5, v2

    goto :goto_31

    :cond_2c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_31
    add-int/lit8 v1, p2, 0x3

    .line 183
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v1, p2, 0x4

    .line 184
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v1, p2, 0x5

    .line 185
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v1, p2, 0x6

    .line 186
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v1, p2, 0x7

    .line 187
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v1, p2, 0x8

    .line 188
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    add-int/lit8 v1, p2, 0x9

    .line 189
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    add-int/lit8 v1, p2, 0xa

    .line 190
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v1, p2, 0xb

    .line 191
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v1, p2, 0xc

    .line 192
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    add-int/lit8 v1, p2, 0xd

    .line 193
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v16

    add-int/lit8 v1, p2, 0xe

    .line 194
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    add-int/lit8 v1, p2, 0xf

    .line 195
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_84

    move-object/from16 v19, v2

    goto :goto_8a

    :cond_84
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_8a
    add-int/lit8 v1, p2, 0x10

    .line 196
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_95

    move-object/from16 v24, v2

    goto :goto_9b

    :cond_95
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    :goto_9b
    add-int/lit8 v1, p2, 0x11

    .line 197
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v1, p2, 0x12

    .line 198
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v1, p2, 0x13

    .line 199
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move-object/from16 v1, v23

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move-wide/from16 v16, v17

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    invoke-direct/range {v1 .. v22}, Lcom/keephealth/android/greendao/bean/HealthSportItem;-><init>(Ljava/lang/Long;ZLjava/lang/String;IIIIIFFIIFFJLjava/lang/String;Ljava/lang/String;III)V

    return-object v23
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthSportItem;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthSportItem;I)V
    .registers 8

    .line 206
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x2

    .line 208
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v0, v1

    goto :goto_30

    :cond_2c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 209
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setYear(I)V

    add-int/lit8 v0, p3, 0x4

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMonth(I)V

    add-int/lit8 v0, p3, 0x5

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDay(I)V

    add-int/lit8 v0, p3, 0x6

    .line 212
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setStepCount(I)V

    add-int/lit8 v0, p3, 0x7

    .line 213
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setActiveTime(I)V

    add-int/lit8 v0, p3, 0x8

    .line 214
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setCalory(F)V

    add-int/lit8 v0, p3, 0x9

    .line 215
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDistance(F)V

    add-int/lit8 v0, p3, 0xa

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgStep(I)V

    add-int/lit8 v0, p3, 0xb

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgActiveTime(I)V

    add-int/lit8 v0, p3, 0xc

    .line 218
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgCalory(F)V

    add-int/lit8 v0, p3, 0xd

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setAvgDistance(F)V

    add-int/lit8 v0, p3, 0xe

    .line 220
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setDate(J)V

    add-int/lit8 v0, p3, 0xf

    .line 221
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a9

    move-object v0, v1

    goto :goto_ad

    :cond_a9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_ad
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 222
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b9

    goto :goto_bd

    :cond_b9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_bd
    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setRemark(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x11

    .line 223
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setItemCount(I)V

    add-int/lit8 v0, p3, 0x12

    .line 224
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setHour(I)V

    add-int/lit8 p3, p3, 0x13

    .line 225
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setMinute(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthSportItem;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthSportItem;J)Ljava/lang/Long;
    .registers 5

    .line 230
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->setId(Ljava/lang/Long;)V

    .line 231
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthSportItem;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
