.class public Lcom/keephealth/android/greendao/gen/PreMenstrualDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "PreMenstrualDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/gen/PreMenstrualDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "PRE_MENSTRUAL"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/keephealth/android/greendao/gen/DaoSession;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 50
    const-string p1, "IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p1, ""

    .line 51
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"PRE_MENSTRUAL\" (\"START_MENSTRUAL_YEAR\" INTEGER NOT NULL ,\"START_MENSTRUAL_MONTH\" INTEGER NOT NULL ,\"START_MENSTRUAL_DAY\" INTEGER NOT NULL ,\"MENSTRUAL_CYCLE\" INTEGER NOT NULL ,\"MENSTRUAL_DURATION\" INTEGER NOT NULL ,\"DEFULT_DURATION\" INTEGER NOT NULL ,\"CALENDAR_START_YEAR\" INTEGER NOT NULL ,\"CALENDAR_START_MONTHR\" INTEGER NOT NULL ,\"CALENDAR_END_YEAR\" INTEGER NOT NULL ,\"CALENDAR_END_MONTH\" INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 66
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

    const-string v0, "\"PRE_MENSTRUAL\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)V
    .registers 6

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 88
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 90
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 92
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getDefultDuration()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 94
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartMonthr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 96
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 97
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)V
    .registers 6

    .line 72
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 73
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualMonth()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 75
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getStartMenstrualDay()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 76
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 78
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getDefultDuration()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 79
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarStartMonthr()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndYear()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getCalendarEndMonth()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0xa

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->getKey(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 18
    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->hasKey(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    .registers 15

    .line 107
    new-instance v11, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

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
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v0, p2, 0x4

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v0, p2, 0x5

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v0, p2, 0x6

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v0, p2, 0x7

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v0, p2, 0x8

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 p2, p2, 0x9

    .line 117
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;-><init>(IIIIIIIIII)V

    return-object v11
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->readEntity(Landroid/database/Cursor;I)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;I)V
    .registers 5

    .line 124
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    add-int/lit8 v0, p3, 0x1

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    add-int/lit8 v0, p3, 0x2

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    add-int/lit8 v0, p3, 0x3

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    add-int/lit8 v0, p3, 0x4

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    add-int/lit8 v0, p3, 0x5

    .line 129
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setDefultDuration(I)V

    add-int/lit8 v0, p3, 0x6

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarStartYear(I)V

    add-int/lit8 v0, p3, 0x7

    .line 131
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarStartMonthr(I)V

    add-int/lit8 v0, p3, 0x8

    .line 132
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarEndYear(I)V

    add-int/lit8 p3, p3, 0x9

    .line 133
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarEndMonth(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->readEntity(Landroid/database/Cursor;Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Void;

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
    check-cast p1, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->updateKeyAfterInsert(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;J)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;J)Ljava/lang/Void;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
