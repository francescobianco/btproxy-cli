.class Lcom/keephealth/android/persenter/device/SportModelPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "SportModelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/SportModelPresenter;->getSportMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/SportModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/SportModelPresenter;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 29
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->access$200(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/SportModelContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/SportModelContract$View;->getFail()V

    .line 30
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->access$300(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/SportModelContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/SportModelContract$View;->hideLoading()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;

    # invokes: Lcom/keephealth/android/persenter/device/SportModelPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->access$400(Lcom/keephealth/android/persenter/device/SportModelPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/SportModel;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->access$000(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/SportModelContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/device/SportModelContract$View;->hideLoading()V

    if-eqz p1, :cond_24

    .line 21
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 22
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/SportModelPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/SportModelPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/SportModelPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/SportModelPresenter;->access$100(Lcom/keephealth/android/persenter/device/SportModelPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/SportModelContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/SportModel;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/device/SportModelContract$View;->getSuccess(Lcom/keephealth/android/model/bean/SportModel;)V

    :cond_24
    return-void
.end method
