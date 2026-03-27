.class Lcom/keephealth/android/util/ble/HealthDataHandler$1;
.super Ljava/lang/Object;
.source "HealthDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/HealthDataHandler;->handlerHistory(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/HealthDataHandler;

.field final synthetic val$day:I

.field final synthetic val$healthSportDao:Lcom/keephealth/android/greendao/gen/HealthSportDao;

.field final synthetic val$itemList:Ljava/util/List;

.field final synthetic val$month:I

.field final synthetic val$sport:Lcom/keephealth/android/greendao/bean/HealthSport;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/HealthDataHandler;Lcom/keephealth/android/greendao/gen/HealthSportDao;IIILcom/keephealth/android/greendao/bean/HealthSport;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->this$0:Lcom/keephealth/android/util/ble/HealthDataHandler;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$healthSportDao:Lcom/keephealth/android/greendao/gen/HealthSportDao;

    iput p3, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$year:I

    iput p4, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$month:I

    iput p5, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$day:I

    iput-object p6, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$sport:Lcom/keephealth/android/greendao/bean/HealthSport;

    iput-object p7, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$itemList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$healthSportDao:Lcom/keephealth/android/greendao/gen/HealthSportDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v2, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$year:I

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v5, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$month:I

    .line 302
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v6, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$day:I

    .line 303
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 301
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$healthSportDao:Lcom/keephealth/android/greendao/gen/HealthSportDao;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$sport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/HealthSportDao;->insert(Ljava/lang/Object;)J

    .line 306
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSportItemDao()Lcom/keephealth/android/greendao/gen/HealthSportItemDao;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget v4, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$year:I

    .line 308
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$month:I

    .line 309
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthSportItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget v7, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$day:I

    .line 310
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v2, v6

    .line 308
    invoke-virtual {v1, v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 312
    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/HealthSportItemDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 313
    :goto_8f
    iget-object v0, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_f8

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$itemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$itemList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$itemList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/HealthDataHandler$1;->val$itemList:Ljava/util/List;

    .line 315
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v1, "rt5rtr5"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 317
    :cond_f8
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->clear()V

    return-void
.end method
