.class public Lcom/keephealth/android/greendao/gen/HealthSportDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthSportDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthSport;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_SPORT"


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

    const-string v0, "\"HEALTH_SPORT\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAC_ADDRESS\" TEXT,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"TOTAL_STEP_COUNT\" INTEGER NOT NULL ,\"TOTAL_CALORY\" REAL NOT NULL ,\"TOTAL_DISTANCE\" REAL NOT NULL ,\"TOTAL_ACTIVE_TIME\" INTEGER NOT NULL ,\"TOTAL_DAY_STEP_COUNT\" INTEGER NOT NULL ,\"TOTAL_DAY_CALORY\" REAL NOT NULL ,\"TOTAL_DAY_DISTANCE\" REAL NOT NULL ,\"TOTAL_DAY_ACTIVE_TIME\" INTEGER NOT NULL ,\"START_TIME\" INTEGER NOT NULL ,\"TIME_SPACE\" INTEGER NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"USER_ID\" TEXT,\"REMARK\" TEXT,\"ITEM_COUNT\" INTEGER NOT NULL );"

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

    const-string v0, "\"HEALTH_SPORT\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 7

    .line 133
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 135
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 139
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getIsUploaded()Z

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
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 145
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 149
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 150
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 151
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayStepCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 154
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 155
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 156
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getStartTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 157
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTimeSpace()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 158
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 160
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bc

    const/16 v1, 0x12

    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 165
    :cond_bc
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c7

    const/16 v1, 0x13

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 169
    :cond_c7
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getItemCount()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthSport;)V
    .registers 7

    .line 92
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 98
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getIsUploaded()Z

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
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 102
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 109
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 110
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayStepCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayCalory()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 113
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayDistance()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 114
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDayActiveTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 115
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getStartTime()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 116
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTimeSpace()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 117
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bc

    const/16 v1, 0x12

    .line 121
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 124
    :cond_bc
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c7

    const/16 v1, 0x13

    .line 126
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 128
    :cond_c7
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getItemCount()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x14

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthSport;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthSport;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 237
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthSport;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthSport;)Z
    .registers 2

    .line 245
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthSport;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthSport;
    .registers 28

    move-object/from16 v0, p1

    .line 179
    new-instance v22, Lcom/keephealth/android/greendao/bean/HealthSport;

    .line 180
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_14

    :cond_c
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_14
    add-int/lit8 v3, p2, 0x1

    .line 181
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    add-int/lit8 v4, p2, 0x2

    .line 182
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v4, 0x0

    goto :goto_2d

    :cond_29
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2d
    add-int/lit8 v5, p2, 0x3

    .line 183
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 184
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v7, p2, 0x5

    .line 185
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x6

    .line 186
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x7

    .line 187
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 188
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    add-int/lit8 v11, p2, 0x9

    .line 189
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0xa

    .line 190
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0xb

    .line 191
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    add-int/lit8 v14, p2, 0xc

    .line 192
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    add-int/lit8 v15, p2, 0xd

    .line 193
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v2, p2, 0xe

    .line 194
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v2, p2, 0xf

    .line 195
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    add-int/lit8 v2, p2, 0x10

    .line 196
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    add-int/lit8 v2, p2, 0x11

    .line 197
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_8c

    const/16 v23, 0x0

    goto :goto_92

    :cond_8c
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    :goto_92
    add-int/lit8 v2, p2, 0x12

    .line 198
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_9d

    const/16 v24, 0x0

    goto :goto_a3

    :cond_9d
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v2

    :goto_a3
    add-int/lit8 v2, p2, 0x13

    .line 199
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, v22

    move v2, v3

    move-object v3, v4

    move v4, v5

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

    move/from16 v15, v17

    move/from16 v16, v18

    move-wide/from16 v17, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    invoke-direct/range {v0 .. v21}, Lcom/keephealth/android/greendao/bean/HealthSport;-><init>(Ljava/lang/Long;ZLjava/lang/String;IIIIFFIIFFIIIJLjava/lang/String;Ljava/lang/String;I)V

    return-object v22
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthSport;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthSport;I)V
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setId(Ljava/lang/Long;)V

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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setIsUploaded(Z)V

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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 209
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setYear(I)V

    add-int/lit8 v0, p3, 0x4

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setMonth(I)V

    add-int/lit8 v0, p3, 0x5

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDay(I)V

    add-int/lit8 v0, p3, 0x6

    .line 212
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalStepCount(I)V

    add-int/lit8 v0, p3, 0x7

    .line 213
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalCalory(F)V

    add-int/lit8 v0, p3, 0x8

    .line 214
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDistance(F)V

    add-int/lit8 v0, p3, 0x9

    .line 215
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalActiveTime(I)V

    add-int/lit8 v0, p3, 0xa

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayStepCount(I)V

    add-int/lit8 v0, p3, 0xb

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayCalory(F)V

    add-int/lit8 v0, p3, 0xc

    .line 218
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayDistance(F)V

    add-int/lit8 v0, p3, 0xd

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTotalDayActiveTime(I)V

    add-int/lit8 v0, p3, 0xe

    .line 220
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setStartTime(I)V

    add-int/lit8 v0, p3, 0xf

    .line 221
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setTimeSpace(I)V

    add-int/lit8 v0, p3, 0x10

    .line 222
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->setDate(J)V

    add-int/lit8 v0, p3, 0x11

    .line 223
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_bb

    move-object v0, v1

    goto :goto_bf

    :cond_bb
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_bf
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 224
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    goto :goto_cf

    :cond_cb
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_cf
    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setRemark(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x13

    .line 225
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/HealthSport;->setItemCount(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthSport;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthSport;J)Ljava/lang/Long;
    .registers 5

    .line 230
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthSport;->setId(Ljava/lang/Long;)V

    .line 231
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthSport;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
