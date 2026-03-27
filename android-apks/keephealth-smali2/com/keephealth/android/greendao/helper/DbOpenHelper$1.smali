.class Lcom/keephealth/android/greendao/helper/DbOpenHelper$1;
.super Ljava/lang/Object;
.source "DbOpenHelper.java"

# interfaces
.implements Lcom/keephealth/android/greendao/helper/MigrationHelper$ReCreateAllTableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/greendao/helper/DbOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/greendao/helper/DbOpenHelper;


# direct methods
.method constructor <init>(Lcom/keephealth/android/greendao/helper/DbOpenHelper;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/greendao/helper/DbOpenHelper$1;->this$0:Lcom/keephealth/android/greendao/helper/DbOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 3

    .line 44
    invoke-static {p1, p2}, Lcom/keephealth/android/greendao/gen/DaoMaster;->createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public onDropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 3

    .line 49
    invoke-static {p1, p2}, Lcom/keephealth/android/greendao/gen/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method
