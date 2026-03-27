.class public Lcom/keephealth/android/greendao/gen/HealthActivityDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthActivityDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthActivity;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_ACTIVITY"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 67
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 68
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HEALTH_ACTIVITY\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAC_ADDRESS\" TEXT,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"HOUR\" INTEGER NOT NULL ,\"MINUTE\" INTEGER NOT NULL ,\"SECOND\" INTEGER NOT NULL ,\"HR_DATA_INTERVAL_MINUTE\" INTEGER NOT NULL ,\"TYPE\" INTEGER NOT NULL ,\"STEP\" INTEGER NOT NULL ,\"DURATIONS\" INTEGER NOT NULL ,\"CALORIES\" INTEGER NOT NULL ,\"DISTANCE\" INTEGER NOT NULL ,\"AVG_SPEED\" TEXT,\"SPEEDS\" TEXT,\"AVG_HR_VALUE\" INTEGER NOT NULL ,\"MAX_HR_VALUE\" INTEGER NOT NULL ,\"BURN_FAT_MINS\" INTEGER NOT NULL ,\"AEROBIC_MINS\" INTEGER NOT NULL ,\"LIMIT_MINS\" INTEGER NOT NULL ,\"USER_ID\" TEXT,\"REMARK\" TEXT,\"DATA_FROM\" INTEGER NOT NULL ,\"HR_DATA_VLAUE_JSON\" TEXT,\"DATE\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 100
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

    const-string v0, "\"HEALTH_ACTIVITY\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthActivity;)V
    .registers 7

    .line 166
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 168
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 172
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x1

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 174
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 176
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 178
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 179
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 180
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 181
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 182
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMinute()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 183
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getSecond()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 184
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_interval_minute()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 185
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 186
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 187
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 188
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 189
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 191
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a9

    const/16 v1, 0x10

    .line 193
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 196
    :cond_a9
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getSpeeds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    const/16 v1, 0x11

    .line 198
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 200
    :cond_b4
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvg_hr_value()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 201
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMax_hr_value()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 202
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getBurn_fat_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 203
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAerobic_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 204
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getLimit_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 206
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f1

    const/16 v1, 0x17

    .line 208
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 211
    :cond_f1
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fc

    const/16 v1, 0x18

    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 215
    :cond_fc
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDataFrom()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 217
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_vlaue_json()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_111

    const/16 v1, 0x1a

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_111
    const/16 v0, 0x1b

    .line 221
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthActivity;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthActivity;)V
    .registers 7

    .line 106
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 108
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 112
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-wide/16 v0, 0x1

    goto :goto_1c

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 114
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x3

    .line 116
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 118
    :cond_2a
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 120
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMinute()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getSecond()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_interval_minute()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 125
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 126
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getStep()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 127
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getCalories()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 129
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDistance()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 131
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvgSpeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a9

    const/16 v1, 0x10

    .line 133
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_a9
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getSpeeds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    const/16 v1, 0x11

    .line 138
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 140
    :cond_b4
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAvg_hr_value()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 141
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMax_hr_value()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 142
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getBurn_fat_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 143
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getAerobic_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 144
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getLimit_mins()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f1

    const/16 v1, 0x17

    .line 148
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 151
    :cond_f1
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fc

    const/16 v1, 0x18

    .line 153
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 155
    :cond_fc
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDataFrom()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x19

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 157
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getHr_data_vlaue_json()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_111

    const/16 v1, 0x1a

    .line 159
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_111
    const/16 v0, 0x1b

    .line 161
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthActivity;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthActivity;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 303
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthActivity;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthActivity;)Z
    .registers 2

    .line 311
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthActivity;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthActivity;
    .registers 35

    move-object/from16 v0, p1

    .line 231
    new-instance v29, Lcom/keephealth/android/greendao/bean/HealthActivity;

    .line 232
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

    .line 233
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    add-int/lit8 v4, p2, 0x2

    .line 234
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

    .line 235
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 236
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v7, p2, 0x5

    .line 237
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x6

    .line 238
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x7

    .line 239
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 240
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x9

    .line 241
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0xa

    .line 242
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0xb

    .line 243
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v14, p2, 0xc

    .line 244
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v15, p2, 0xd

    .line 245
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v2, p2, 0xe

    .line 246
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v2, p2, 0xf

    .line 247
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_80

    const/16 v18, 0x0

    goto :goto_86

    :cond_80
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_86
    add-int/lit8 v2, p2, 0x10

    .line 248
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_91

    const/16 v19, 0x0

    goto :goto_97

    :cond_91
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    :goto_97
    add-int/lit8 v2, p2, 0x11

    .line 249
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v2, p2, 0x12

    .line 250
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v2, p2, 0x13

    .line 251
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    add-int/lit8 v2, p2, 0x14

    .line 252
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    add-int/lit8 v2, p2, 0x15

    .line 253
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    add-int/lit8 v2, p2, 0x16

    .line 254
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_c0

    const/16 v25, 0x0

    goto :goto_c6

    :cond_c0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    :goto_c6
    add-int/lit8 v2, p2, 0x17

    .line 255
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_d1

    const/16 v26, 0x0

    goto :goto_d7

    :cond_d1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    :goto_d7
    add-int/lit8 v2, p2, 0x18

    .line 256
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    add-int/lit8 v2, p2, 0x19

    .line 257
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_e8

    const/16 v31, 0x0

    goto :goto_ee

    :cond_e8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    :goto_ee
    add-int/lit8 v2, p2, 0x1a

    .line 258
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    move-object/from16 v0, v29

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

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move/from16 v25, v30

    move-object/from16 v26, v31

    invoke-direct/range {v0 .. v28}, Lcom/keephealth/android/greendao/bean/HealthActivity;-><init>(Ljava/lang/Long;ZLjava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    return-object v29
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthActivity;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthActivity;I)V
    .registers 8

    .line 265
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 266
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x2

    .line 267
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v0, v1

    goto :goto_30

    :cond_2c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMacAddress(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 268
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setYear(I)V

    add-int/lit8 v0, p3, 0x4

    .line 269
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMonth(I)V

    add-int/lit8 v0, p3, 0x5

    .line 270
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDay(I)V

    add-int/lit8 v0, p3, 0x6

    .line 271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHour(I)V

    add-int/lit8 v0, p3, 0x7

    .line 272
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMinute(I)V

    add-int/lit8 v0, p3, 0x8

    .line 273
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setSecond(I)V

    add-int/lit8 v0, p3, 0x9

    .line 274
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHr_data_interval_minute(I)V

    add-int/lit8 v0, p3, 0xa

    .line 275
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setType(I)V

    add-int/lit8 v0, p3, 0xb

    .line 276
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setStep(I)V

    add-int/lit8 v0, p3, 0xc

    .line 277
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDurations(I)V

    add-int/lit8 v0, p3, 0xd

    .line 278
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setCalories(I)V

    add-int/lit8 v0, p3, 0xe

    .line 279
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDistance(I)V

    add-int/lit8 v0, p3, 0xf

    .line 280
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a9

    move-object v0, v1

    goto :goto_ad

    :cond_a9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_ad
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvgSpeed(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 281
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_ba

    move-object v0, v1

    goto :goto_be

    :cond_ba
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_be
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setSpeeds(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x11

    .line 282
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAvg_hr_value(I)V

    add-int/lit8 v0, p3, 0x12

    .line 283
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setMax_hr_value(I)V

    add-int/lit8 v0, p3, 0x13

    .line 284
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setBurn_fat_mins(I)V

    add-int/lit8 v0, p3, 0x14

    .line 285
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setAerobic_mins(I)V

    add-int/lit8 v0, p3, 0x15

    .line 286
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setLimit_mins(I)V

    add-int/lit8 v0, p3, 0x16

    .line 287
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f8

    move-object v0, v1

    goto :goto_fc

    :cond_f8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_fc
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x17

    .line 288
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_109

    move-object v0, v1

    goto :goto_10d

    :cond_109
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10d
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setRemark(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x18

    .line 289
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDataFrom(I)V

    add-int/lit8 v0, p3, 0x19

    .line 290
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_122

    goto :goto_126

    :cond_122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_126
    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setHr_data_vlaue_json(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1a

    .line 291
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setDate(J)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthActivity;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    .line 226
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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthActivity;J)Ljava/lang/Long;
    .registers 5

    .line 296
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setId(Ljava/lang/Long;)V

    .line 297
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthActivity;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
