.class public Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "FarmilyHealthPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/FarmilyHealthContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/FarmilyHealthContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public getFarmilList()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;->showLoading()V

    .line 46
    new-instance v0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$2;-><init>(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/FamilyHttp;->getFamilyList(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public getInvitedList()V
    .registers 2

    .line 20
    new-instance v0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$1;-><init>(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/FamilyHttp;->getInvitatList(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public replyInvitat(II)V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;->showLoadingFalse()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"mid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"status\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string p2, "application/json; charset=utf-8"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$3;

    invoke-direct {p2, p0}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$3;-><init>(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/FamilyHttp;->replyInvitat(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
