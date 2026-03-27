.class Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;
.super Ljava/lang/Object;
.source "MigrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/helper/MigrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TableInfo"
.end annotation


# instance fields
.field cid:I

.field dfltValue:Ljava/lang/String;

.field name:Ljava/lang/String;

.field notnull:Z

.field pk:Z

.field type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 258
    invoke-static {p0, p1}, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->getTableInfo(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getTableInfo(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA table_info("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 288
    # invokes: Lcom/keephealth/android/greendao/helper/MigrationHelper;->printLog(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/keephealth/android/greendao/helper/MigrationHelper;->access$100(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 289
    invoke-interface {p0, p1, v0}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_25

    .line 291
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 294
    :cond_25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    :goto_2a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 296
    new-instance v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;-><init>()V

    const/4 v1, 0x0

    .line 297
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->cid:I

    const/4 v2, 0x1

    .line 298
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->name:Ljava/lang/String;

    const/4 v3, 0x2

    .line 299
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->type:Ljava/lang/String;

    const/4 v3, 0x3

    .line 300
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_53

    move v3, v2

    goto :goto_54

    :cond_53
    move v3, v1

    :goto_54
    iput-boolean v3, v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->notnull:Z

    const/4 v3, 0x4

    .line 301
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->dfltValue:Ljava/lang/String;

    const/4 v3, 0x5

    .line 302
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_65

    move v1, v2

    :cond_65
    iput-boolean v1, v0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->pk:Z

    .line 303
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 306
    :cond_6b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1d

    if-eqz p1, :cond_1b

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->name:Ljava/lang/String;

    check-cast p1, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;

    iget-object p1, p1, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->name:Ljava/lang/String;

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TableInfo{cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', notnull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->notnull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dfltValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->dfltValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/helper/MigrationHelper$TableInfo;->pk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
