.class public Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "ECGItemInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/ECGItemInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "ECGITEM_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 49
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 50
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"ECGITEM_INFO\" (\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"USER_ID\" TEXT,\"ZENG_YI\" INTEGER NOT NULL ,\"SPEED\" INTEGER NOT NULL ,\"HR\" REAL NOT NULL ,\"STATE\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 64
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

    const-string v0, "\"ECGITEM_INFO\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/ECGItemInfo;)V
    .registers 6

    .line 88
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 90
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 92
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x5

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    :cond_30
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getZengYi()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 99
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getSpeed()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 100
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getHr()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 101
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getState()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/ECGItemInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/ECGItemInfo;)V
    .registers 6

    .line 70
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 71
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 73
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 74
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 76
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x5

    .line 78
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :cond_30
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getZengYi()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getSpeed()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getHr()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 83
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->getState()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x9

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/ECGItemInfo;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->getKey(Lcom/keephealth/android/greendao/bean/ECGItemInfo;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/ECGItemInfo;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/ECGItemInfo;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->hasKey(Lcom/keephealth/android/greendao/bean/ECGItemInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/ECGItemInfo;
    .registers 15

    .line 111
    new-instance v11, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    .line 112
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v0, p2, 0x1

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v0, p2, 0x2

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v0, p2, 0x3

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v0, p2, 0x4

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v0, 0x0

    goto :goto_26

    :cond_22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_26
    move-object v6, v0

    add-int/lit8 v0, p2, 0x5

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v0, p2, 0x6

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v0, p2, 0x7

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    add-int/lit8 p2, p2, 0x8

    .line 120
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;-><init>(IIIJLjava/lang/String;IIFI)V

    return-object v11
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/ECGItemInfo;I)V
    .registers 6

    .line 127
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setYear(I)V

    add-int/lit8 v0, p3, 0x1

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setMonth(I)V

    add-int/lit8 v0, p3, 0x2

    .line 129
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDay(I)V

    add-int/lit8 v0, p3, 0x3

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDate(J)V

    add-int/lit8 v0, p3, 0x4

    .line 131
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    goto :goto_30

    :cond_2c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 132
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setZengYi(I)V

    add-int/lit8 v0, p3, 0x6

    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setSpeed(I)V

    add-int/lit8 v0, p3, 0x7

    .line 134
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setHr(F)V

    add-int/lit8 p3, p3, 0x8

    .line 135
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setState(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/ECGItemInfo;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/ECGItemInfo;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/ECGItemInfo;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
