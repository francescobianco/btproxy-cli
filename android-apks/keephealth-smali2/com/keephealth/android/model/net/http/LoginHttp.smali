.class public Lcom/keephealth/android/model/net/http/LoginHttp;
.super Ljava/lang/Object;
.source "LoginHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->bindPhone(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 81
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 83
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static bingdingAccount(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 43
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->bingdingAccount(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static clearUserData(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/LoginApi;->clearUserData()Lio/reactivex/Observable;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static loginByEmail(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 15
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->loginByEmail(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static loginByFacebook(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 25
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->loginByFacebook(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static loginByPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 88
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->loginByPhone(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 89
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static loginByWechat(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 20
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->loginByWechat(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static loginOut(Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/keephealth/android/model/net/api/LoginApi;->loginOut()Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static registerAccount(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->registerAccount(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 38
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static registerPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 76
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->registerPhone(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendCode(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 31
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->sendCode(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendCodePhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 93
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 94
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->sendCodePhone(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 49
    invoke-interface {v0, p0, p1}, Lcom/keephealth/android/model/net/api/LoginApi;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 50
    invoke-virtual {p0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static sendPhoneVerifyCode(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 99
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 100
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->sendPhoneVerifyCode(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 101
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updatePassword(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 54
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->updatePassword(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updatePasswordPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;)V"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 59
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->updatePasswordPhone(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static verifyEmail(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 105
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->verifyEmail(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 104
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 106
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static verifyEmailUser(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/model/net/ApiCallback<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 115
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->verifyEmailUser(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static verifyPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 109
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 110
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->verifyPhone(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 111
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static verifyPhoneUser(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V
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

    .line 119
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;

    move-result-object v0

    .line 120
    invoke-interface {v0, p0}, Lcom/keephealth/android/model/net/api/LoginApi;->verifyPhoneUser(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 119
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 121
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
