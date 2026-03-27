.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSleep(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$healthSleepDao:Lcom/keephealth/android/greendao/gen/HealthSleepDao;

.field final synthetic val$healthSleeps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthSleepDao;)V
    .registers 4

    .line 4286
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;->val$healthSleeps:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;->val$healthSleepDao:Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 4329
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4306
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;->val$healthSleeps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    const/4 v1, 0x1

    .line 4307
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->setIsUploaded(Z)V

    .line 4308
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;->val$healthSleepDao:Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 4309
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 4310
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getMonth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 4311
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v1

    .line 4309
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 4312
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 4313
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$49;->val$healthSleepDao:Lcom/keephealth/android/greendao/gen/HealthSleepDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/HealthSleepDao;->insert(Ljava/lang/Object;)J

    goto :goto_6

    :cond_5f
    return-void
.end method
