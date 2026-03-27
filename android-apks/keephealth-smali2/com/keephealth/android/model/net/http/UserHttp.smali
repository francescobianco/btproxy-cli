.class public Lcom/keephealth/android/model/net/http/UserHttp;
.super Ljava/lang/Object;
.source "UserHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAuthStrava(Ljava/lang/String;ILjava/lang/String;Lcom/keephealth/android/model/net/ApiStravaCancelCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiStravaCancelCallback<",
            "Lcom/keephealth/android/model/net/CanceStravalAuthBean;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getStravaRefreshAuthApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 97
    invoke-interface {v0, p0, p1, p2}, Lcom/keephealth/android/model/net/api/UserApi;->cancelAuth(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 98
    invoke-virtual {p0, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static checkPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 237
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getVerifyEmail()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 238
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->checkPhone(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 237
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 239
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static dialCenterByModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DicalDataBean;",
            ">;>;)V"
        }
    .end annotation

    .line 220
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 221
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->dialCenterByModel(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 220
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 222
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadBlood(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultHeart;",
            ">;>;>;)V"
        }
    .end annotation

    .line 186
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 187
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadBlood(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 186
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 188
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadEcg(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultEcg;",
            ">;>;>;)V"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 215
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadEcg(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 214
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadHeart(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultHeart;",
            ">;>;>;)V"
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 175
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadHeart(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 176
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadHrv(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultHeart;",
            ">;>;>;)V"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 181
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadHrv(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 180
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 182
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadOxygen(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultHeart;",
            ">;>;>;)V"
        }
    .end annotation

    .line 192
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 193
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadOxygen(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 192
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 194
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadSleep(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultSleep;",
            ">;>;>;)V"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 198
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadSleep(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 197
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 199
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadSport(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultSport;",
            ">;>;>;)V"
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 209
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadSport(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 208
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 210
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadSteps(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultSteps;",
            ">;>;>;)V"
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 169
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadSteps(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 168
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 170
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static downloadTemp(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultTemp;",
            ">;>;>;)V"
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 203
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->downloadTemp(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 202
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 204
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getDeviceLanguage(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/LanguageBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 227
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->getDeviceLanguage(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 226
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 228
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getUserInfo(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/UserApi;->getUserInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getWeatherInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/WeatherResult;",
            ">;>;)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 60
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->getWeatherInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 61
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getWeatherThreeDaysInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/WeatherThreeDays;",
            ">;>;)V"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 65
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->getWeatherThreeDaysInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static requestByModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DeviceModel;",
            ">;>;)V"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 109
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->requestByModel(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 108
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendAuthRefreshStrava(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/model/net/ApiStravaRefreshCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiStravaRefreshCallback<",
            "Lcom/keephealth/android/model/StravaRefreshBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getStravaRefreshAuthApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 90
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/keephealth/android/model/net/api/UserApi;->stravaAuthRefresh(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 91
    invoke-virtual {p0, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendAuthStrava(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/model/net/ApiStravaCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiStravaCallback<",
            "Lcom/keephealth/android/model/StravaBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getStravaAuthApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 84
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/keephealth/android/model/net/api/UserApi;->stravaAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendBloodInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 133
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 134
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendBloodInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 135
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendDeviceInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 77
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 78
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendDeviceInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendEcgInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 163
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 164
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendEcgInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 163
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 165
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendHeartInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 122
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 123
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendHeartInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 122
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendHrvInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 127
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 128
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendHrvInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 129
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendOxygenInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 139
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 140
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendOxygenInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 139
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 141
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendSleepInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 145
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 146
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendSleepInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 145
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 147
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendSportInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 157
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 158
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendSportInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 157
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 159
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendStepsInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 116
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 117
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendStepsInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 118
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendTempInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 151
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 152
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->sendTempInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 153
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static setUserInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 40
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 41
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->setUserInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 42
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updateDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/keephealth/android/model/net/ApiCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DeviceUpdate;",
            ">;>;)V"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 104
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/keephealth/android/model/net/api/UserApi;->updateDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    .line 103
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 105
    invoke-virtual {p0, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updateVersion(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/VersionBean;",
            ">;>;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/UserApi;->updateVersion()Lio/reactivex/Observable;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static uploadFeedbackInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 53
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getUserApi()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 54
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->uploadFeedbackInfo(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static verifyEmail(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 232
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getVerifyEmail()Lcom/keephealth/android/model/net/api/UserApi;

    move-result-object v0

    .line 233
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/UserApi;->verifyEmail(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 232
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 234
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
