.class public Lcom/keephealth/android/greendao/gen/DialDetailBDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "DialDetailBDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/DialDetailBDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/model/bean/DialDetailB;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DIAL_DETAIL_B"


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

    const-string v0, "\"DIAL_DETAIL_B\" (\"ID\" INTEGER NOT NULL ,\"ADAPTER_ID\" INTEGER NOT NULL ,\"FILE_URL\" TEXT,\"NAME\" TEXT,\"PIC_URL\" TEXT,\"ORDER\" INTEGER NOT NULL ,\"CUSTOM_ID\" INTEGER NOT NULL ,\"TYPE\" INTEGER NOT NULL ,\"BG_URL\" TEXT);"

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

    const-string v0, "\"DIAL_DETAIL_B\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/model/bean/DialDetailB;)V
    .registers 6

    .line 100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 101
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 102
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getAdapterId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 104
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x3

    .line 106
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    :cond_1f
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x4

    .line 111
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 114
    :cond_29
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    const/4 v1, 0x5

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 118
    :cond_33
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getOrder()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 120
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getBgUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5a

    const/16 v0, 0x9

    .line 124
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5a
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/model/bean/DialDetailB;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/model/bean/DialDetailB;)V
    .registers 6

    .line 70
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 71
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getAdapterId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x3

    .line 76
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :cond_1f
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x4

    .line 81
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 84
    :cond_29
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    const/4 v1, 0x5

    .line 86
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 88
    :cond_33
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getOrder()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 90
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 92
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getBgUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5a

    const/16 v0, 0x9

    .line 94
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5a
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/model/bean/DialDetailB;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->getKey(Lcom/keephealth/android/model/bean/DialDetailB;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/model/bean/DialDetailB;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/model/bean/DialDetailB;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->hasKey(Lcom/keephealth/android/model/bean/DialDetailB;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/model/bean/DialDetailB;
    .registers 14

    .line 135
    new-instance v10, Lcom/keephealth/android/model/bean/DialDetailB;

    .line 136
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v0, p2, 0x1

    .line 137
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v0, p2, 0x2

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_17

    move-object v3, v4

    goto :goto_1c

    :cond_17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1c
    add-int/lit8 v0, p2, 0x3

    .line 139
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_26

    move-object v5, v4

    goto :goto_2b

    :cond_26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_2b
    add-int/lit8 v0, p2, 0x4

    .line 140
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_35

    move-object v6, v4

    goto :goto_3a

    :cond_35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_3a
    add-int/lit8 v0, p2, 0x5

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v0, p2, 0x6

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v0, p2, 0x7

    .line 143
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 p2, p2, 0x8

    .line 144
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_56

    move-object p1, v4

    goto :goto_5a

    :cond_56
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5a
    move-object v0, v10

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/keephealth/android/model/bean/DialDetailB;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-object v10
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/model/bean/DialDetailB;I)V
    .registers 7

    .line 151
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setId(I)V

    add-int/lit8 v0, p3, 0x1

    .line 152
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setAdapterId(I)V

    add-int/lit8 v0, p3, 0x2

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    move-object v0, v2

    goto :goto_1f

    :cond_1b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setFileUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v0, v2

    goto :goto_30

    :cond_2c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 155
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    move-object v0, v2

    goto :goto_41

    :cond_3d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setPicUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 156
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setOrder(I)V

    add-int/lit8 v0, p3, 0x6

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setCustomId(I)V

    add-int/lit8 v0, p3, 0x7

    .line 158
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setType(I)V

    add-int/lit8 p3, p3, 0x8

    .line 159
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_68

    goto :goto_6c

    :cond_68
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6c
    invoke-virtual {p2, v2}, Lcom/keephealth/android/model/bean/DialDetailB;->setBgUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/model/bean/DialDetailB;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

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
    check-cast p1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->updateKeyAfterInsert(Lcom/keephealth/android/model/bean/DialDetailB;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/model/bean/DialDetailB;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
