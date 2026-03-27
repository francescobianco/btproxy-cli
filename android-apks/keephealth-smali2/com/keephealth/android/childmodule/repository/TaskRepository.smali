.class public Lcom/keephealth/android/childmodule/repository/TaskRepository;
.super Ljava/lang/Object;
.source "TaskRepository.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatchMarkTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/MarkBean;",
            ">;>;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;

    move-result-object v0

    .line 54
    invoke-interface {v0, p1}, Lcom/keephealth/android/childmodule/api/TaskApi;->batchMarkTask(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getCreateTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;

    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/keephealth/android/childmodule/api/TaskApi;->createTask(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getDeleteTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;

    move-result-object v0

    .line 36
    invoke-interface {v0, p1}, Lcom/keephealth/android/childmodule/api/TaskApi;->deleteTask(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getMarkTaskTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/MarkBean;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1}, Lcom/keephealth/android/childmodule/api/TaskApi;->markTask(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getQueryTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/TaskListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;

    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Lcom/keephealth/android/childmodule/api/TaskApi;->queryTask(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getQueryTaskAll(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/FamilyTaskList;",
            ">;>;>;)V"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/keephealth/android/childmodule/api/TaskApi;->queryTaskAll()Lio/reactivex/Observable;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getUpdateTask(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;

    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Lcom/keephealth/android/childmodule/api/TaskApi;->updateTask(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
