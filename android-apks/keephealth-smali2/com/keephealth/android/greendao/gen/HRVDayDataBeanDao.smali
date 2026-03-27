.class public Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "HRVDayDataBeanDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/greendao/bean/HRVDayDataBean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "HRVDAY_DATA_BEAN"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 51
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 52
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"HRVDAY_DATA_BEAN\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"YEAR\" INTEGER NOT NULL ,\"MONTH\" INTEGER NOT NULL ,\"DAY\" INTEGER NOT NULL ,\"DATE\" INTEGER NOT NULL ,\"AVG_TEMP\" INTEGER NOT NULL ,\"OFF_SET\" INTEGER NOT NULL ,\"REMARK\" TEXT,\"IS_UPLOADED\" INTEGER NOT NULL ,\"MIN_VALUE\" INTEGER NOT NULL ,\"MAX_VALUE\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 68
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

    const-string v0, "\"HRVDAY_DATA_BEAN\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)V
    .registers 7

    .line 98
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 100
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 104
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 107
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 109
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getOffSet()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 115
    :cond_51
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-wide/16 v0, 0x1

    goto :goto_5c

    :cond_5a
    const-wide/16 v0, 0x0

    :goto_5c
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)V
    .registers 7

    .line 74
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 76
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 80
    :cond_11
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 83
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 84
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getAvgTemp()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 85
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getOffSet()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 87
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    .line 89
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_51
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getIsUploaded()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-wide/16 v0, 0x1

    goto :goto_5c

    :cond_5a
    const-wide/16 v0, 0x0

    :goto_5c
    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 92
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMinValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getMaxValue()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0xb

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)V

    return-void
.end method

.method public getKey(Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 167
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->getKey(Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)Z
    .registers 2

    .line 175
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->hasKey(Lcom/keephealth/android/greendao/bean/HRVDayDataBean;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HRVDayDataBean;
    .registers 18

    move-object/from16 v0, p1

    .line 127
    new-instance v13, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    .line 128
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v1, v2

    goto :goto_15

    :cond_d
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_15
    add-int/lit8 v3, p2, 0x1

    .line 129
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v4, p2, 0x2

    .line 130
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x3

    .line 131
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 132
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v8, p2, 0x5

    .line 133
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x6

    .line 134
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x7

    .line 135
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_42

    goto :goto_46

    :cond_42
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_46
    move-object v10, v2

    add-int/lit8 v2, p2, 0x8

    .line 136
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    move v11, v2

    add-int/lit8 v2, p2, 0x9

    .line 137
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v2, p2, 0xa

    .line 138
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object v0, v13

    move v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v11

    move v11, v12

    move v12, v14

    invoke-direct/range {v0 .. v12}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;-><init>(Ljava/lang/Long;IIIJIILjava/lang/String;ZII)V

    return-object v13
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HRVDayDataBean;I)V
    .registers 8

    .line 145
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
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setYear(I)V

    add-int/lit8 v0, p3, 0x2

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMonth(I)V

    add-int/lit8 v0, p3, 0x3

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setDay(I)V

    add-int/lit8 v0, p3, 0x4

    .line 149
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setDate(J)V

    add-int/lit8 v0, p3, 0x5

    .line 150
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setAvgTemp(I)V

    add-int/lit8 v0, p3, 0x6

    .line 151
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setOffSet(I)V

    add-int/lit8 v0, p3, 0x7

    .line 152
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_57

    :cond_53
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_57
    invoke-virtual {p2, v1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setRemark(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    goto :goto_65

    :cond_64
    const/4 v0, 0x0

    :goto_65
    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setIsUploaded(Z)V

    add-int/lit8 v0, p3, 0x9

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMinValue(I)V

    add-int/lit8 p3, p3, 0xa

    .line 155
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setMaxValue(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/greendao/bean/HRVDayDataBean;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    .line 122
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
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HRVDayDataBean;J)Ljava/lang/Long;
    .registers 5

    .line 160
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;->setId(Ljava/lang/Long;)V

    .line 161
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/greendao/bean/HRVDayDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/HRVDayDataBeanDao;->updateKeyAfterInsert(Lcom/keephealth/android/greendao/bean/HRVDayDataBean;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
