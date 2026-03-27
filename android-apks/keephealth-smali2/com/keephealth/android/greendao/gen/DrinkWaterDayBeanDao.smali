.class public Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "DrinkWaterDayBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DRINK_WATER_DAY_BEAN"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 47
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 48
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"DRINK_WATER_DAY_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"WATER\" INTEGER NOT NULL ,\"DATA\" INTEGER NOT NULL ,\"RE_MARK\" TEXT);"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 60
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

    const-string v0, "\"DRINK_WATER_DAY_BEAN\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)V
    .registers 7

    .line 86
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 88
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 92
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 96
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getData()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 98
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_47

    const/4 v0, 0x7

    .line 100
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_47
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)V
    .registers 7

    .line 66
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 68
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 72
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 73
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 75
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 76
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getData()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 78
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_47

    const/4 v0, 0x7

    .line 80
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_47
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 143
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->getKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)Z
    .registers 2

    .line 151
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->hasKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;
    .registers 13

    .line 111
    new-instance v9, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    .line 112
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

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v0, p2, 0x2

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v0, p2, 0x3

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v0, p2, 0x4

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v0, p2, 0x5

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    add-int/lit8 p2, p2, 0x6

    .line 118
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object p1, v1

    goto :goto_40

    :cond_3c
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_40
    move-object v0, v9

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v7

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;-><init>(Ljava/lang/Long;IIIIJLjava/lang/String;)V

    return-object v9
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;I)V
    .registers 8

    .line 125
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setYear(I)V

    add-int/lit8 v0, p3, 0x2

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setMonth(I)V

    add-int/lit8 v0, p3, 0x3

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setDay(I)V

    add-int/lit8 v0, p3, 0x4

    .line 129
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setWater(I)V

    add-int/lit8 v0, p3, 0x5

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setData(J)V

    add-int/lit8 p3, p3, 0x6

    .line 131
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4e
    invoke-virtual {p2, v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setReMark(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    .line 106
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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;J)Ljava/lang/Long;
    .registers 5

    .line 136
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->setId(Ljava/lang/Long;)V

    .line 137
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->updateKeyAfterInsert(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
