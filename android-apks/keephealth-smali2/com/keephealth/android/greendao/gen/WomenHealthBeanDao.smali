.class public Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "WomenHealthBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "WOMEN_HEALTH_BEAN"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 56
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 57
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"WOMEN_HEALTH_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"IS_PREGNANCY\" INTEGER NOT NULL ,\"MAKE_LOVE\" INTEGER NOT NULL ,\"IS_MENSTRUAL\" INTEGER NOT NULL ,\"DYSMENORRHEA\" INTEGER NOT NULL ,\"FLOW\" INTEGER NOT NULL ,\"SYMPTOM\" TEXT,\"MOOD\" INTEGER NOT NULL ,\"IS_START_DATA\" INTEGER NOT NULL ,\"IS_END_MENSTRUAL_DATE\" INTEGER NOT NULL ,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"SOLAR_DATE\" INTEGER NOT NULL ,\"IS_SYSTEM\" INTEGER NOT NULL ,\"IS_CLICK\" INTEGER NOT NULL );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE UNIQUE INDEX "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "IDX_WOMEN_HEALTH_BEAN_YEAR_MONTH_DAY ON \"WOMEN_HEALTH_BEAN\" (\"YEAR\" ASC,\"MONTH\" ASC,\"DAY\" ASC);"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 81
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

    const-string v0, "\"WOMEN_HEALTH_BEAN\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 7

    .line 116
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 118
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 125
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v1, 0x7

    .line 130
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :cond_48
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMood()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 135
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 136
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 137
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 138
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 139
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 140
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsClick()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V
    .registers 7

    .line 87
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 93
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsPregnancy()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 96
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 97
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 99
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v1, 0x7

    .line 101
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :cond_48
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMood()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 104
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 109
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsClick()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x10

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 200
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->getKey(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z
    .registers 2

    .line 208
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->hasKey(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 24

    move-object/from16 v0, p1

    .line 150
    new-instance v19, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 151
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

    .line 152
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v1, p2, 0x2

    .line 153
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v1, p2, 0x3

    .line 154
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v1, p2, 0x4

    .line 155
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v1, p2, 0x5

    .line 156
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v1, p2, 0x6

    .line 157
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3f

    move-object/from16 v20, v2

    goto :goto_45

    :cond_3f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    :goto_45
    add-int/lit8 v1, p2, 0x7

    .line 158
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v1, p2, 0x8

    .line 159
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v1, p2, 0x9

    .line 160
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v1, p2, 0xa

    .line 161
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v1, p2, 0xb

    .line 162
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v1, p2, 0xc

    .line 163
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v1, p2, 0xd

    .line 164
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    add-int/lit8 v1, p2, 0xe

    .line 165
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v1, p2, 0xf

    .line 166
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v1, v19

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v8, v20

    invoke-direct/range {v1 .. v18}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>(Ljava/lang/Long;IIIIILjava/lang/String;IIIIIIJII)V

    return-object v19
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V
    .registers 8

    .line 173
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsPregnancy(I)V

    add-int/lit8 v0, p3, 0x2

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMakeLove(I)V

    add-int/lit8 v0, p3, 0x3

    .line 176
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsMenstrual(I)V

    add-int/lit8 v0, p3, 0x4

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    add-int/lit8 v0, p3, 0x5

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    add-int/lit8 v0, p3, 0x6

    .line 179
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4e
    invoke-virtual {p2, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSymptom(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMood(I)V

    add-int/lit8 v0, p3, 0x8

    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsStartData(I)V

    add-int/lit8 v0, p3, 0x9

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsEndMenstrualDate(I)V

    add-int/lit8 v0, p3, 0xa

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    add-int/lit8 v0, p3, 0xb

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    add-int/lit8 v0, p3, 0xc

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    add-int/lit8 v0, p3, 0xd

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    add-int/lit8 v0, p3, 0xe

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    add-int/lit8 p3, p3, 0xf

    .line 188
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsClick(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    .line 145
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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;J)Ljava/lang/Long;
    .registers 5

    .line 193
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setId(Ljava/lang/Long;)V

    .line 194
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->updateKeyAfterInsert(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
