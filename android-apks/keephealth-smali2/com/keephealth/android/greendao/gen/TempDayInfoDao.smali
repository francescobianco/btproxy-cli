.class public Lcom/keephealth/android/greendao/gen/TempDayInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "TempDayInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/TempDayInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/TempDayInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "TEMP_DAY_INFO"


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

    const-string v0, "\"TEMP_DAY_INFO\" (\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"AVG_TEMP\" REAL NOT NULL ,\"OFF_SET\" INTEGER NOT NULL ,\"REMARK\" TEXT,\"IS_UPLOADED\" INTEGER NOT NULL );"

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

    const-string v0, "\"TEMP_DAY_INFO\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/TempDayInfo;)V
    .registers 6

    .line 85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 86
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 88
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 90
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 91
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getOffSet()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v1, 0x7

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    :cond_41
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getIsUploaded()Z

    move-result p2

    if-eqz p2, :cond_4a

    const-wide/16 v0, 0x1

    goto :goto_4c

    :cond_4a
    const-wide/16 v0, 0x0

    :goto_4c
    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/TempDayInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/TempDayInfo;)V
    .registers 6

    .line 68
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 69
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 70
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 71
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 72
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 73
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getAvgTemp()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 74
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getOffSet()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 76
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v1, 0x7

    .line 78
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :cond_41
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->getIsUploaded()Z

    move-result p2

    if-eqz p2, :cond_4a

    const-wide/16 v0, 0x1

    goto :goto_4c

    :cond_4a
    const-wide/16 v0, 0x0

    :goto_4c
    const/16 p2, 0x8

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/TempDayInfo;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->getKey(Lcom/keephealth/android/greendao/bean/TempDayInfo;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/TempDayInfo;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/TempDayInfo;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->hasKey(Lcom/keephealth/android/greendao/bean/TempDayInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/TempDayInfo;
    .registers 15

    .line 107
    new-instance v11, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    .line 108
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v0, p2, 0x1

    .line 109
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v0, p2, 0x2

    .line 110
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v0, p2, 0x3

    .line 111
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v0, p2, 0x4

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    add-int/lit8 v0, p2, 0x5

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v0, p2, 0x6

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    const/4 v0, 0x0

    goto :goto_32

    :cond_2e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_32
    move-object v9, v0

    add-int/lit8 p2, p2, 0x7

    .line 115
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    move v10, p1

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/greendao/bean/TempDayInfo;-><init>(IIIJDILjava/lang/String;Z)V

    return-object v11
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/TempDayInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/TempDayInfo;I)V
    .registers 6

    .line 122
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setYear(I)V

    add-int/lit8 v0, p3, 0x1

    .line 123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setMonth(I)V

    add-int/lit8 v0, p3, 0x2

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDay(I)V

    add-int/lit8 v0, p3, 0x3

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setDate(J)V

    add-int/lit8 v0, p3, 0x4

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setAvgTemp(D)V

    add-int/lit8 v0, p3, 0x5

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setOffSet(I)V

    add-int/lit8 v0, p3, 0x6

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v0, 0x0

    goto :goto_42

    :cond_3e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setRemark(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x7

    .line 129
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_4f

    const/4 p1, 0x1

    goto :goto_50

    :cond_4f
    const/4 p1, 0x0

    :goto_50
    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/TempDayInfo;->setIsUploaded(Z)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/TempDayInfo;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/TempDayInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/TempDayInfoDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/TempDayInfo;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/TempDayInfo;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
