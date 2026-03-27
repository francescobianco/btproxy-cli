.class public Lcom/keephealth/android/model/net/http/RewardHttp;
.super Ljava/lang/Object;
.source "RewardHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getRewardApi()Lcom/keephealth/android/model/net/api/TaskRewardApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/TaskRewardApi;->postDeleReward(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static exchangeReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getRewardApi()Lcom/keephealth/android/model/net/api/TaskRewardApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/TaskRewardApi;->postExchangeReward(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static exchangeRewardList(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getRewardApi()Lcom/keephealth/android/model/net/api/TaskRewardApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/TaskRewardApi;->postSelectExchangeReward(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static saveReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getRewardApi()Lcom/keephealth/android/model/net/api/TaskRewardApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/TaskRewardApi;->postSaveReward(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static selectReward(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getRewardApi()Lcom/keephealth/android/model/net/api/TaskRewardApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/TaskRewardApi;->postSelectReward()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updateReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getRewardApi()Lcom/keephealth/android/model/net/api/TaskRewardApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/TaskRewardApi;->postUpdateReward(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
