.class public Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthHeartRateDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthHeartRateDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthHeartRate;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_HEART_RATE"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 65
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 66
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HEALTH_HEART_RATE\" (\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAC_ADDRESS\" TEXT,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"START_TIME\" INTEGER NOT NULL ,\"SILENT_HEART\" INTEGER NOT NULL ,\"BURN_FAT_THRESHOLD\" INTEGER NOT NULL ,\"AEROBIC_THRESHOLD\" INTEGER NOT NULL ,\"LIMIT_THRESHOLD\" INTEGER NOT NULL ,\"BURN_FAT_MINS\" INTEGER NOT NULL ,\"AEROBIC_MINS\" INTEGER NOT NULL ,\"LIMIT_MINS\" INTEGER NOT NULL ,\"USER_MAX_HR\" INTEGER NOT NULL ,\"AVG_HR\" INTEGER NOT NULL ,\"AVG_DAY_HR\" INTEGER NOT NULL ,\"MAX_HR\" INTEGER NOT NULL ,\"MIN_HR\" INTEGER NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"USER_ID\" TEXT,\"REMARK\" TEXT,\"FZ\" INTEGER NOT NULL ,\"SS\" INTEGER NOT NULL ,\"OXYGEN\" INTEGER NOT NULL ,\"HRV\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 96
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

    const-string v0, "\"HEALTH_HEART_RATE\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 6

    .line 144
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 145
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 151
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 154
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getStartTime()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 155
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 156
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_threshold()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 157
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAerobic_threshold()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 158
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getLimit_threshold()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 159
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 160
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAerobic_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 161
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getLimit_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 162
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getUserMaxHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 163
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 164
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgDayHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 165
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMaxHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 166
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMinHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 167
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 169
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cb

    const/16 v1, 0x14

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 174
    :cond_cb
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d6

    const/16 v1, 0x15

    .line 176
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 178
    :cond_d6
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 179
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 180
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 181
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x19

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V
    .registers 6

    .line 102
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 103
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 107
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 109
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getStartTime()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 113
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 114
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_threshold()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 115
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAerobic_threshold()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 116
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getLimit_threshold()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getBurn_fat_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 118
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAerobic_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getLimit_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 120
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getUserMaxHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getAvgDayHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMaxHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x11

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getMinHr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 125
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 127
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cb

    const/16 v1, 0x14

    .line 129
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :cond_cb
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d6

    const/16 v1, 0x15

    .line 134
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_d6
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 137
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x17

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 138
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 139
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x19

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthHeartRate;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthHeartRate;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthHeartRate;
    .registers 33

    move-object/from16 v0, p1

    .line 191
    new-instance v28, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    .line 192
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

    .line 193
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

    .line 194
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v1, p2, 0x3

    .line 195
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v1, p2, 0x4

    .line 196
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v1, p2, 0x5

    .line 197
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v1, p2, 0x6

    .line 198
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v1, p2, 0x7

    .line 199
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v1, p2, 0x8

    .line 200
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v1, p2, 0x9

    .line 201
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v1, p2, 0xa

    .line 202
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v1, p2, 0xb

    .line 203
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v1, p2, 0xc

    .line 204
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v1, p2, 0xd

    .line 205
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    add-int/lit8 v1, p2, 0xe

    .line 206
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v1, p2, 0xf

    .line 207
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    add-int/lit8 v1, p2, 0x10

    .line 208
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    add-int/lit8 v1, p2, 0x11

    .line 209
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v1, p2, 0x12

    .line 210
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    add-int/lit8 v1, p2, 0x13

    .line 211
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_8f

    move-object/from16 v23, v4

    goto :goto_95

    :cond_8f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    :goto_95
    add-int/lit8 v1, p2, 0x14

    .line 212
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_a0

    move-object/from16 v29, v4

    goto :goto_a6

    :cond_a0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    :goto_a6
    add-int/lit8 v1, p2, 0x15

    .line 213
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    add-int/lit8 v1, p2, 0x16

    .line 214
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    add-int/lit8 v1, p2, 0x17

    .line 215
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    add-int/lit8 v1, p2, 0x18

    .line 216
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move-object/from16 v1, v28

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

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-wide/from16 v20, v21

    move-object/from16 v22, v23

    move-object/from16 v23, v29

    invoke-direct/range {v1 .. v27}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>(ZLjava/lang/String;IIIIIIIIIIIIIIIIJLjava/lang/String;Ljava/lang/String;IIII)V

    return-object v28
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthHeartRate;I)V
    .registers 7

    .line 223
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x1

    .line 224
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setYear(I)V

    add-int/lit8 v0, p3, 0x3

    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMonth(I)V

    add-int/lit8 v0, p3, 0x4

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDay(I)V

    add-int/lit8 v0, p3, 0x5

    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setStartTime(I)V

    add-int/lit8 v0, p3, 0x6

    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSilentHeart(I)V

    add-int/lit8 v0, p3, 0x7

    .line 230
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setBurn_fat_threshold(I)V

    add-int/lit8 v0, p3, 0x8

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAerobic_threshold(I)V

    add-int/lit8 v0, p3, 0x9

    .line 232
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setLimit_threshold(I)V

    add-int/lit8 v0, p3, 0xa

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setBurn_fat_mins(I)V

    add-int/lit8 v0, p3, 0xb

    .line 234
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAerobic_mins(I)V

    add-int/lit8 v0, p3, 0xc

    .line 235
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setLimit_mins(I)V

    add-int/lit8 v0, p3, 0xd

    .line 236
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setUserMaxHr(I)V

    add-int/lit8 v0, p3, 0xe

    .line 237
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgHr(I)V

    add-int/lit8 v0, p3, 0xf

    .line 238
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAvgDayHr(I)V

    add-int/lit8 v0, p3, 0x10

    .line 239
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMaxHr(I)V

    add-int/lit8 v0, p3, 0x11

    .line 240
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setMinHr(I)V

    add-int/lit8 v0, p3, 0x12

    .line 241
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setDate(J)V

    add-int/lit8 v0, p3, 0x13

    .line 242
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c1

    move-object v0, v2

    goto :goto_c5

    :cond_c1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d1

    goto :goto_d5

    :cond_d1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_d5
    invoke-virtual {p2, v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setRemark(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x15

    .line 244
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setFz(I)V

    add-int/lit8 v0, p3, 0x16

    .line 245
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setSs(I)V

    add-int/lit8 v0, p3, 0x17

    .line 246
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setOxygen(I)V

    add-int/lit8 p3, p3, 0x18

    .line 247
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setHrv(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthHeartRate;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthHeartRateDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthHeartRate;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthHeartRate;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
