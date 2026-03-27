.class Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "InputBloodPressViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->sendRequestBlood(Ljava/lang/String;Ljava/util/List;Z)V
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
.field final synthetic this$0:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

.field final synthetic val$healthBloodDao:Lcom/keephealth/android/greendao/gen/HealthBloodDao;

.field final synthetic val$healthBloods:Ljava/util/List;

.field final synthetic val$isDelete:Z


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;Ljava/util/List;Lcom/keephealth/android/greendao/gen/HealthBloodDao;Z)V
    .registers 5

    .line 196
    iput-object p1, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->this$0:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->val$healthBloods:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->val$healthBloodDao:Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    iput-boolean p4, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->val$isDelete:Z

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->this$0:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->upload:Landroidx/lifecycle/MutableLiveData;

    const-string p2, "failed"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->this$0:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    # invokes: Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->access$000(Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;Lio/reactivex/disposables/Disposable;)V

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

    .line 199
    iget-object p1, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->val$healthBloods:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthBlood;

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setIsUploaded(Z)V

    .line 201
    iget-object v2, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->val$healthBloodDao:Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 202
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 203
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMonth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthBloodDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 204
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v1

    .line 202
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 206
    iget-boolean v1, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->val$isDelete:Z

    if-nez v1, :cond_6

    .line 207
    iget-object v1, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->val$healthBloodDao:Lcom/keephealth/android/greendao/gen/HealthBloodDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/HealthBloodDao;->insert(Ljava/lang/Object;)J

    goto :goto_6

    .line 210
    :cond_63
    iget-object p1, p0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel$1;->this$0:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->upload:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "success"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
