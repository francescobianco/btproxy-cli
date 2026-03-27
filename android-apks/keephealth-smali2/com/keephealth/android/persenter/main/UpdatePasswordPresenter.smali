.class public Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "UpdatePasswordPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/UpdatePasswordContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/UpdatePasswordContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public sendCode(Ljava/lang/String;)V
    .registers 5

    .line 21
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->showLoadingFalse()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 25
    new-instance v0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;-><init>(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)V

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->showLoadingFalse()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"email\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"password\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\",\"verifyCode\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    const-string p2, "application/json"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;

    invoke-direct {p2, p0}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;-><init>(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->updatePassword(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
