.class public Lcom/keephealth/android/greendao/gen/HealthSleepDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthSleepDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthSleep;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_SLEEP"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 62
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 63
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HEALTH_SLEEP\" (\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAC_ADDRESS\" TEXT,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"SLEEP_ENDED_TIME_H\" INTEGER NOT NULL ,\"SLEEP_ENDED_TIME_M\" INTEGER NOT NULL ,\"SLEEPSTARTED_TIME_H\" INTEGER NOT NULL ,\"SLEEPSTARTED_TIME_M\" INTEGER NOT NULL ,\"TOTAL_SLEEP_MINUTES\" INTEGER NOT NULL ,\"LIGHT_SLEEP_COUNT\" INTEGER NOT NULL ,\"DEEP_SLEEP_COUNT\" INTEGER NOT NULL ,\"AWAKE_COUNT\" INTEGER NOT NULL ,\"LIGHT_SLEEP_MINUTES\" INTEGER NOT NULL ,\"DEEP_SLEEP_MINUTES\" INTEGER NOT NULL ,\"WAKE_MUNUTES\" INTEGER NOT NULL ,\"SLEEP_MINUTES\" INTEGER NOT NULL ,\"EYE_MINUTES\" INTEGER NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"USER_ID\" TEXT,\"REMARK\" TEXT,\"ACCURACY_TYPE\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 90
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

    const-string v0, "\"HEALTH_SLEEP\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthSleep;)V
    .registers 6

    .line 135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 136
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 138
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 140
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 142
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 143
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 144
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 145
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepEndedTimeH()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepEndedTimeM()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeH()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 149
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 150
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getAwakeCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 154
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 155
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 156
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 157
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 158
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 160
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cb

    const/16 v1, 0x14

    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 165
    :cond_cb
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d6

    const/16 v1, 0x15

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 169
    :cond_d6
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getAccuracyType()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x16

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthSleep;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthSleep;)V
    .registers 6

    .line 96
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 97
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 99
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 101
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 104
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepEndedTimeH()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepEndedTimeM()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeH()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 109
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 113
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getAwakeCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 114
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 115
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 116
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x11

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 118
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getEyeMinutes()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 119
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cb

    const/16 v1, 0x14

    .line 123
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_cb
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d6

    const/16 v1, 0x15

    .line 128
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 130
    :cond_d6
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getAccuracyType()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x16

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthSleep;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthSleep;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthSleep;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthSleep;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthSleep;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthSleep;
    .registers 30

    move-object/from16 v0, p1

    .line 179
    new-instance v24, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 180
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    add-int/lit8 v2, p2, 0x1

    .line 181
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v2, 0x0

    goto :goto_1b

    :cond_17
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    add-int/lit8 v3, p2, 0x2

    .line 182
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

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
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 188
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

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
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v14, p2, 0xc

    .line 192
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v15, p2, 0xd

    .line 193
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v4, p2, 0xe

    .line 194
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v4, p2, 0xf

    .line 195
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    add-int/lit8 v4, p2, 0x10

    .line 196
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    add-int/lit8 v4, p2, 0x11

    .line 197
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v4, p2, 0x12

    .line 198
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    add-int/lit8 v4, p2, 0x13

    .line 199
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_8c

    const/16 v25, 0x0

    goto :goto_92

    :cond_8c
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    :goto_92
    add-int/lit8 v4, p2, 0x14

    .line 200
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_9d

    const/16 v26, 0x0

    goto :goto_a3

    :cond_9d
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    :goto_a3
    add-int/lit8 v4, p2, 0x15

    .line 201
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move-object/from16 v0, v24

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

    move/from16 v17, v19

    move/from16 v18, v20

    move-wide/from16 v19, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    invoke-direct/range {v0 .. v23}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>(ZLjava/lang/String;IIIIIIIIIIIIIIIIJLjava/lang/String;Ljava/lang/String;I)V

    return-object v24
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthSleep;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthSleep;I)V
    .registers 7

    .line 208
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x1

    .line 209
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setYear(I)V

    add-int/lit8 v0, p3, 0x3

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setMonth(I)V

    add-int/lit8 v0, p3, 0x4

    .line 212
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDay(I)V

    add-int/lit8 v0, p3, 0x5

    .line 213
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepEndedTimeH(I)V

    add-int/lit8 v0, p3, 0x6

    .line 214
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepEndedTimeM(I)V

    add-int/lit8 v0, p3, 0x7

    .line 215
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeH(I)V

    add-int/lit8 v0, p3, 0x8

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepstartedTimeM(I)V

    add-int/lit8 v0, p3, 0x9

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setTotalSleepMinutes(I)V

    add-int/lit8 v0, p3, 0xa

    .line 218
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepCount(I)V

    add-int/lit8 v0, p3, 0xb

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepCount(I)V

    add-int/lit8 v0, p3, 0xc

    .line 220
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setAwakeCount(I)V

    add-int/lit8 v0, p3, 0xd

    .line 221
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setLightSleepMinutes(I)V

    add-int/lit8 v0, p3, 0xe

    .line 222
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDeepSleepMinutes(I)V

    add-int/lit8 v0, p3, 0xf

    .line 223
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setWakeMunutes(I)V

    add-int/lit8 v0, p3, 0x10

    .line 224
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setSleepMinutes(I)V

    add-int/lit8 v0, p3, 0x11

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setEyeMinutes(I)V

    add-int/lit8 v0, p3, 0x12

    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setDate(J)V

    add-int/lit8 v0, p3, 0x13

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c1

    move-object v0, v2

    goto :goto_c5

    :cond_c1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d1

    goto :goto_d5

    :cond_d1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_d5
    invoke-virtual {p2, v2}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setRemark(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x15

    .line 229
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setAccuracyType(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthSleep;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthSleep;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthSleep;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
