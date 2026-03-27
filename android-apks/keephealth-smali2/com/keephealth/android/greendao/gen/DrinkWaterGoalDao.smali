.class public Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "DrinkWaterGoalDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DRINK_WATER_GOAL"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 44
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 45
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"DRINK_WATER_GOAL\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"NAME\" TEXT,\"HOUR\" INTEGER NOT NULL ,\"MINUTER\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 54
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

    const-string v0, "\"DRINK_WATER_GOAL\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)V
    .registers 7

    .line 77
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 79
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 84
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 88
    :cond_1b
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)V
    .registers 7

    .line 60
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 62
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 67
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    .line 69
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_1b
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x4

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 125
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->getKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)Z
    .registers 2

    .line 133
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->hasKey(Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;
    .registers 8

    .line 99
    new-instance v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    .line 100
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move-object v1, v2

    goto :goto_13

    :cond_b
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_13
    add-int/lit8 v3, p2, 0x1

    .line 101
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_20
    add-int/lit8 v3, p2, 0x2

    .line 102
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 p2, p2, 0x3

    .line 103
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;-><init>(Ljava/lang/Long;Ljava/lang/String;II)V

    return-object v0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;I)V
    .registers 8

    .line 110
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 111
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_21
    invoke-virtual {p2, v1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setHour(I)V

    add-int/lit8 p3, p3, 0x3

    .line 113
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setMinuter(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    .line 94
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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;J)Ljava/lang/Long;
    .registers 5

    .line 118
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->setId(Ljava/lang/Long;)V

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/DrinkWaterGoalDao;->updateKeyAfterInsert(Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
