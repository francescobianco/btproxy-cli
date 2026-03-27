.class public Lcom/keephealth/android/greendao/gen/MedalDataDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "MedalDataDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/MedalDataDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/ui/mine/bean/MedalData;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "MEDAL_DATA"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 48
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 49
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"MEDAL_DATA\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,\"MEDAL_TITLE\" INTEGER NOT NULL ,\"MEDAL_TIPS\" INTEGER NOT NULL ,\"MEDLE_ACHIEVE_RES\" INTEGER NOT NULL ,\"MEDLE_UNACHIEVE_RES\" INTEGER NOT NULL ,\"ACHIEVE\" INTEGER NOT NULL ,\"MEDAL_ACHIEVE_TIME\" INTEGER NOT NULL ,\"MEDALA_TYPE\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 62
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

    const-string v0, "\"MEDAL_DATA\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/mine/bean/MedalData;)V
    .registers 6

    .line 81
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTitle()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 84
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTips()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 85
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleAchieveRes()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 86
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleUnachieveRes()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getAchieve()Z

    move-result v0

    if-eqz v0, :cond_38

    const-wide/16 v0, 0x1

    goto :goto_3a

    :cond_38
    const-wide/16 v0, 0x0

    :goto_3a
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 88
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalAchieveTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalaType()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/ui/mine/bean/MedalData;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/mine/bean/MedalData;)V
    .registers 6

    .line 68
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 70
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTitle()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 71
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTips()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleAchieveRes()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 73
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleUnachieveRes()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getAchieve()Z

    move-result v0

    if-eqz v0, :cond_38

    const-wide/16 v0, 0x1

    goto :goto_3a

    :cond_38
    const-wide/16 v0, 0x0

    :goto_3a
    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 75
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalAchieveTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 76
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalaType()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/ui/mine/bean/MedalData;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/ui/mine/bean/MedalData;)Ljava/lang/Long;
    .registers 4

    if-eqz p1, :cond_b

    .line 133
    invoke-virtual {p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->getKey(Lcom/keephealth/android/ui/mine/bean/MedalData;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/ui/mine/bean/MedalData;)Z
    .registers 3

    .line 141
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported for entities with a non-null key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->hasKey(Lcom/keephealth/android/ui/mine/bean/MedalData;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/mine/bean/MedalData;
    .registers 15

    .line 99
    new-instance v11, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 100
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-int/lit8 v0, p2, 0x1

    .line 101
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v0, p2, 0x2

    .line 102
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v0, p2, 0x3

    .line 103
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v0, p2, 0x4

    .line 104
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v0, p2, 0x5

    .line 105
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    move v7, v0

    add-int/lit8 v0, p2, 0x6

    .line 106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    add-int/lit8 p2, p2, 0x7

    .line 107
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    return-object v11
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/ui/mine/bean/MedalData;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/mine/bean/MedalData;I)V
    .registers 6

    .line 114
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setId(J)V

    add-int/lit8 v0, p3, 0x1

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalTitle(I)V

    add-int/lit8 v0, p3, 0x2

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalTips(I)V

    add-int/lit8 v0, p3, 0x3

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedleAchieveRes(I)V

    add-int/lit8 v0, p3, 0x4

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedleUnachieveRes(I)V

    add-int/lit8 v0, p3, 0x5

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    add-int/lit8 v0, p3, 0x6

    .line 120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    add-int/lit8 p3, p3, 0x7

    .line 121
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalaType(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/ui/mine/bean/MedalData;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 3

    .line 94
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/ui/mine/bean/MedalData;J)Ljava/lang/Long;
    .registers 4

    .line 126
    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setId(J)V

    .line 127
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->updateKeyAfterInsert(Lcom/keephealth/android/ui/mine/bean/MedalData;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
