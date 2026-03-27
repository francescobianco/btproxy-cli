.class public Lcom/keephealth/android/model/net/http/DialCenterHttp;
.super Ljava/lang/Object;
.source "DialCenterHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downLoadDial(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
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

    .line 28
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getDialCenterApi()Lcom/keephealth/android/model/net/api/DialCenterApi;

    move-result-object v0

    .line 29
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/DialCenterApi;->downLoadDial(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 30
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getDownLoadInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;>;>;)V"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getDialCenterApi()Lcom/keephealth/android/model/net/api/DialCenterApi;

    move-result-object v0

    .line 35
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/DialCenterApi;->getDownLoadInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getRecommendDial(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DialCenterB;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getDialCenterApi()Lcom/keephealth/android/model/net/api/DialCenterApi;

    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/DialCenterApi;->getRecommendDial(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getRecommendDialDetail(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;>;>;)V"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getDialCenterApi()Lcom/keephealth/android/model/net/api/DialCenterApi;

    move-result-object v0

    .line 23
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/DialCenterApi;->getRecommendDialDetail(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
