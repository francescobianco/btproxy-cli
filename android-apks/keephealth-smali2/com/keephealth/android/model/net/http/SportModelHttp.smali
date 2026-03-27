.class public Lcom/keephealth/android/model/net/http/SportModelHttp;
.super Ljava/lang/Object;
.source "SportModelHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSportModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/SportModel;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getSportModeApi()Lcom/keephealth/android/model/net/api/SportModeApi;

    move-result-object v0

    .line 12
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/SportModeApi;->getSportMode(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
