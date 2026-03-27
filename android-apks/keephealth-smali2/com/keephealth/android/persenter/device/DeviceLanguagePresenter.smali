.class public Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "DeviceLanguagePresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DeviceLanguageContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DeviceLanguageContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public getDeviceLanguage(Ljava/lang/String;)V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;->showLoading()V

    .line 22
    new-instance v0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;-><init>(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->getDeviceLanguage(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public saveUser(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"language\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$2;-><init>(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->setUserInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
