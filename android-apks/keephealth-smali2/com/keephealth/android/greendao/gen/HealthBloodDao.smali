.class public Lcom/keephealth/android/greendao/gen/HealthBloodDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HealthBloodDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HealthBlood;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HEALTH_BLOOD"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 58
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 59
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HEALTH_BLOOD\" (\"IS_UPLOADED\" INTEGER NOT NULL ,\"MAX_BLOOD\" TEXT,\"MIN_BLOOD\" TEXT,\"AVG_BLOOD\" TEXT,\"MAX_OXYGEN\" INTEGER NOT NULL ,\"MIN_OXYGEN\" INTEGER NOT NULL ,\"AVG_OXYGEN\" INTEGER NOT NULL ,\"MAX_BLOOD_FZ\" INTEGER NOT NULL ,\"MIN_BLOOD_FZ\" INTEGER NOT NULL ,\"MAX_BLOOD_SS\" INTEGER NOT NULL ,\"MIN_BLOOD_SS\" INTEGER NOT NULL ,\"AVG_BLOOD_FZ\" INTEGER NOT NULL ,\"AVG_BLOOD_SS\" INTEGER NOT NULL ,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"DATA\" INTEGER NOT NULL ,\"RE_MARK\" TEXT);"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 82
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

    const-string v0, "\"HEALTH_BLOOD\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 6

    .line 127
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 128
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 130
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBlood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 135
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBlood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x3

    .line 137
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 140
    :cond_26
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBlood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 144
    :cond_30
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxOxygen()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 145
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinOxygen()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 149
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 150
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 154
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 155
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 156
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getData()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 158
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b9

    const/16 v0, 0x12

    .line 160
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_b9
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HealthBlood;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 6

    .line 88
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 91
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBlood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    .line 93
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_1c
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBlood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x3

    .line 98
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :cond_26
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBlood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 103
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 105
    :cond_30
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxOxygen()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinOxygen()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 109
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 113
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 114
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 115
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 116
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 117
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getData()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b9

    const/16 v0, 0x12

    .line 121
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_b9
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HealthBlood;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->getKey(Lcom/keephealth/android/greendao/bean/HealthBlood;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HealthBlood;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HealthBlood;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->hasKey(Lcom/keephealth/android/greendao/bean/HealthBlood;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthBlood;
    .registers 26

    move-object/from16 v0, p1

    .line 171
    new-instance v20, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 172
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    add-int/lit8 v2, p2, 0x1

    .line 173
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

    .line 174
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v3, 0x0

    goto :goto_29

    :cond_25
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_29
    add-int/lit8 v5, p2, 0x3

    .line 175
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v5, 0x0

    goto :goto_37

    :cond_33
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_37
    add-int/lit8 v6, p2, 0x4

    .line 176
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v7, p2, 0x5

    .line 177
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x6

    .line 178
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x7

    .line 179
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 180
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x9

    .line 181
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0xa

    .line 182
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0xb

    .line 183
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v14, p2, 0xc

    .line 184
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v15, p2, 0xd

    .line 185
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v4, p2, 0xe

    .line 186
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v4, p2, 0xf

    .line 187
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    add-int/lit8 v4, p2, 0x10

    .line 188
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    add-int/lit8 v4, p2, 0x11

    .line 189
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_90

    const/16 v19, 0x0

    goto :goto_96

    :cond_90
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    :goto_96
    move-object/from16 v0, v20

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

    move/from16 v15, v17

    move/from16 v16, v18

    move-wide/from16 v17, v21

    invoke-direct/range {v0 .. v19}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIIJLjava/lang/String;)V

    return-object v20
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HealthBlood;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthBlood;I)V
    .registers 7

    .line 196
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x1

    .line 197
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBlood(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_28

    move-object v0, v2

    goto :goto_2c

    :cond_28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBlood(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_39

    move-object v0, v2

    goto :goto_3d

    :cond_39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBlood(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 200
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxOxygen(I)V

    add-int/lit8 v0, p3, 0x5

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinOxygen(I)V

    add-int/lit8 v0, p3, 0x6

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgOxygen(I)V

    add-int/lit8 v0, p3, 0x7

    .line 203
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodFz(I)V

    add-int/lit8 v0, p3, 0x8

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodFz(I)V

    add-int/lit8 v0, p3, 0x9

    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMaxBloodSs(I)V

    add-int/lit8 v0, p3, 0xa

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMinBloodSs(I)V

    add-int/lit8 v0, p3, 0xb

    .line 207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    add-int/lit8 v0, p3, 0xc

    .line 208
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    add-int/lit8 v0, p3, 0xd

    .line 209
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setYear(I)V

    add-int/lit8 v0, p3, 0xe

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setMonth(I)V

    add-int/lit8 v0, p3, 0xf

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setDay(I)V

    add-int/lit8 v0, p3, 0x10

    .line 212
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setData(J)V

    add-int/lit8 p3, p3, 0x11

    .line 213
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_be

    goto :goto_c2

    :cond_be
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_c2
    invoke-virtual {p2, v2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HealthBlood;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthBlood;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HealthBlood;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
