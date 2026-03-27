.class public Lcom/keephealth/android/persenter/device/SportModelPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "SportModelPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/SportModelContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/device/SportModelContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/device/SportModelContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/device/SportModelPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public getSportMode(Ljava/lang/String;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/device/SportModelContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/device/SportModelContract$View;->showLoading()V

    .line 16
    new-instance v0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;-><init>(Lcom/keephealth/android/persenter/device/SportModelPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/SportModelHttp;->getSportModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
