.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->sendRequestSport(Ljava/lang/String;Ljava/util/List;)V
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

.field final synthetic val$healthActivities:Ljava/util/List;

.field final synthetic val$healthActivityDao:Lcom/keephealth/android/greendao/gen/HealthActivityDao;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthActivityDao;)V
    .registers 4

    .line 4372
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;->val$healthActivities:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;->val$healthActivityDao:Lcom/keephealth/android/greendao/gen/HealthActivityDao;

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

    .line 4414
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$14300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4393
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;->val$healthActivities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthActivity;

    const/4 v1, 0x1

    .line 4394
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/HealthActivity;->setIsUploaded(Z)V

    .line 4395
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;->val$healthActivityDao:Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 4396
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 4397
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 4398
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$51;->val$healthActivityDao:Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->insert(Ljava/lang/Object;)J

    goto :goto_6

    :cond_3e
    return-void
.end method
