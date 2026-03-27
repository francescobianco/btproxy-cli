.class public Lcom/keephealth/android/greendao/helper/MigrationHelper;
.super Ljava/lang/Object;
.source "MigrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;,
        Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final SQLITE_MASTER:Ljava/lang/String; = "sqlite_master"

.field private static final SQLITE_TEMP_MASTER:Ljava/lang/String; = "sqlite_temp_master"

.field private static TAG:Ljava/lang/String; = "MigrationHelper"

.field private static weakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .line 22
    invoke-static {p0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs createAllTables(Lorg/greenrobot/greendao/database/Database;Z[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 149
    const-string v0, "createTable"

    invoke-static {p0, v0, p1, p2}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;Z[Ljava/lang/Class;)V

    .line 150
    const-string p0, "\u3010Create all table by reflect\u3011"

    invoke-static {p0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs dropAllTables(Lorg/greenrobot/greendao/database/Database;Z[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 144
    const-string v0, "dropTable"

    invoke-static {p0, v0, p1, p2}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;Z[Ljava/lang/Class;)V

    .line 145
    const-string p0, "\u3010Drop all table by reflect\u3011"

    invoke-static {p0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs generateTempTables(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 76
    const-string v0, ";"

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    array-length v3, p1

    if-ge v2, v3, :cond_c2

    .line 79
    new-instance v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v4, p1, v2

    invoke-direct {v3, p0, v4}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 80
    iget-object v4, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 81
    invoke-static {p0, v1, v4}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->isTableExists(Lorg/greenrobot/greendao/database/Database;ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u3010New Table\u3011"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    goto/16 :goto_be

    :cond_2a
    const/4 v5, 0x0

    .line 86
    :try_start_2b
    iget-object v6, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v7, "_TEMP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v7, "DROP TABLE IF EXISTS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v7, "CREATE TEMPORARY TABLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v7, " AS SELECT * FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u3010Table\u3011"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n ---Columns-->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->getColumnsStr(Lorg/greenrobot/greendao/internal/DaoConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010Generate temp table\u3011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V
    :try_end_a8
    .catch Landroid/database/SQLException; {:try_start_2b .. :try_end_a8} :catch_a9

    goto :goto_be

    :catch_a9
    move-exception v3

    .line 98
    sget-object v4, Lcom/keephealth/android/greendao/helper/MigrationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u3010Failed to generate temp table\u3011"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_c2
    return-void
.end method

.method private static getColumns(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM "

    const/4 v1, 0x0

    .line 237
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " limit 0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_40
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3e

    if-eqz p0, :cond_31

    .line 238
    :try_start_1c
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-lez p1, :cond_31

    .line 239
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2e
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2b

    goto :goto_31

    :catchall_2b
    move-exception p1

    move-object v1, p0

    goto :goto_4f

    :catch_2e
    move-exception p1

    move-object v1, p0

    goto :goto_41

    :cond_31
    :goto_31
    if-eqz p0, :cond_36

    .line 245
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_36
    if-nez v1, :cond_4e

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4e

    :catchall_3e
    move-exception p1

    goto :goto_4f

    :catch_40
    move-exception p1

    .line 242
    :goto_41
    :try_start_41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    if-eqz v1, :cond_49

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4e
    :goto_4e
    return-object v1

    :goto_4f
    if-eqz v1, :cond_54

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_54
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    throw p1
.end method

.method private static getColumnsStr(Lorg/greenrobot/greendao/internal/DaoConfig;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 129
    const-string p0, "no columns"

    return-object p0

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 132
    :goto_b
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 133
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 136
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2e

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 139
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isTableExists(Lorg/greenrobot/greendao/database/Database;ZLjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_64

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_64

    :cond_a
    if-eqz p1, :cond_f

    .line 107
    const-string p1, "sqlite_temp_master"

    goto :goto_11

    :cond_f
    const-string p1, "sqlite_master"

    .line 108
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " WHERE type = ? AND name = ?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    :try_start_29
    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "table"

    aput-object v4, v1, v0

    aput-object p2, v1, v2

    invoke-interface {p0, p1, v1}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 113
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_48

    .line 116
    :cond_3e
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_42} :catch_50
    .catchall {:try_start_29 .. :try_end_42} :catchall_4e

    if-eqz v3, :cond_5a

    .line 121
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    :cond_48
    :goto_48
    if-eqz v3, :cond_4d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4d
    return v0

    :catchall_4e
    move-exception p0

    goto :goto_5e

    :catch_50
    move-exception p0

    .line 118
    :try_start_51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    if-eqz v3, :cond_59

    .line 121
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_59
    move p0, v0

    :cond_5a
    :goto_5a
    if-lez p0, :cond_5d

    move v0, v2

    :cond_5d
    return v0

    :goto_5e
    if-eqz v3, :cond_63

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_63
    throw p0

    :cond_64
    :goto_64
    return v0
.end method

.method public static varargs migrate(Landroid/database/sqlite/SQLiteDatabase;Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/keephealth/android/greendao/helper/MigrationHelper;->weakListener:Ljava/lang/ref/WeakReference;

    .line 43
    invoke-static {p0, p2}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->migrate(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs migrate(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3010The Old Database Version\u3011"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    invoke-static {v0, p1}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs migrate(Lorg/greenrobot/greendao/database/Database;Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;[Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/keephealth/android/greendao/helper/MigrationHelper;->weakListener:Ljava/lang/ref/WeakReference;

    .line 48
    invoke-static {p0, p2}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs migrate(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 52
    const-string v0, "\u3010Generate temp table\u3011start"

    invoke-static {v0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->generateTempTables(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    .line 54
    const-string v0, "\u3010Generate temp table\u3011complete"

    invoke-static {v0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/keephealth/android/greendao/helper/MigrationHelper;->weakListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 62
    invoke-interface {v0, p0, v2}, Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;->onDropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 63
    const-string v2, "\u3010Drop all table by listener\u3011"

    invoke-static {v2}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    .line 64
    invoke-interface {v0, p0, v1}, Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;->onCreateAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 65
    const-string v0, "\u3010Create all table by listener\u3011"

    invoke-static {v0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    goto :goto_34

    .line 67
    :cond_2e
    invoke-static {p0, v2, p1}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z[Ljava/lang/Class;)V

    .line 68
    invoke-static {p0, v1, p1}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->createAllTables(Lorg/greenrobot/greendao/database/Database;Z[Ljava/lang/Class;)V

    .line 70
    :goto_34
    const-string v0, "\u3010Restore data\u3011start"

    invoke-static {v0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    .line 71
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->restoreData(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    .line 72
    const-string p0, "\u3010Restore data\u3011complete"

    invoke-static {p0}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .registers 2

    .line 253
    sget-boolean v0, Lcom/keephealth/android/greendao/helper/MigrationHelper;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 254
    sget-object v0, Lcom/keephealth/android/greendao/helper/MigrationHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static varargs reflectMethod(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;Z[Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 157
    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    return-void

    .line 161
    :cond_5
    :try_start_5
    array-length v0, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_38

    aget-object v4, p3, v3

    const/4 v5, 0x2

    .line 162
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lorg/greenrobot/greendao/database/Database;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 163
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {p0, v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_27} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_27} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_27} :catch_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catch_2a
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_38

    :catch_2f
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_38

    :catch_34
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_38
    :goto_38
    return-void
.end method

.method private static varargs restoreData(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 175
    const-string v0, ","

    const/4 v1, 0x0

    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_179

    .line 176
    new-instance v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 177
    iget-object v3, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 178
    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v4, "_TEMP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 180
    invoke-static {p0, v4, v2}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->isTableExists(Lorg/greenrobot/greendao/database/Database;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_175

    .line 186
    :cond_20
    :try_start_20
    # invokes: Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->getTableInfo(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;
    invoke-static {p0, v3}, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->access$000(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 187
    # invokes: Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->getTableInfo(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;
    invoke-static {p0, v2}, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->access$000(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 188
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3e
    :goto_3e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0x60

    if-eqz v9, :cond_70

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;

    .line 191
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 192
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, v9, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 193
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 198
    :cond_70
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_74
    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;

    .line 199
    iget-boolean v9, v8, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->notnull:Z

    if-eqz v9, :cond_74

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_74

    .line 200
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v8, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 201
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v11, v8, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->dfltValue:Ljava/lang/String;

    if-eqz v11, :cond_c4

    .line 205
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, v8, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->dfltValue:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\' AS "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c6

    .line 207
    :cond_c4
    const-string v8, "\'\' AS "

    .line 209
    :goto_c6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 213
    :cond_db
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_134

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    const-string v5, "REPLACE INTO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v5, ") SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010Restore data\u3011 to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V

    .line 223
    :cond_134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    const-string v4, "DROP TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010Drop temp table\u3011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V
    :try_end_15f
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_15f} :catch_160

    goto :goto_175

    :catch_160
    move-exception v3

    .line 228
    sget-object v4, Lcom/keephealth/android/greendao/helper/MigrationHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u3010Failed to restore data from temp table \u3011"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_175
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_179
    return-void
.end method
