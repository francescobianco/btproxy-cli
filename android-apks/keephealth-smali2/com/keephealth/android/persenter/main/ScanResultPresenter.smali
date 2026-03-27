.class public Lcom/keephealth/android/persenter/main/ScanResultPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "ScanResultPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/ScanResultContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/main/ScanResultContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/ScanResultContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/main/ScanResultPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/main/ScanResultPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public applyAdd(I)V
    .registers 3

    .line 13
    new-instance v0, Lcom/keephealth/android/persenter/main/ScanResultPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/ScanResultPresenter$1;-><init>(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/FamilyHttp;->inviteFamily(ILcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public inviteGuardian(I)V
    .registers 3

    .line 39
    new-instance v0, Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;-><init>(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/FamilyHttp;->inviteGuardian(ILcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
