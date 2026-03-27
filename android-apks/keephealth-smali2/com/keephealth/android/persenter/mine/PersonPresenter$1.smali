.class Lcom/keephealth/android/persenter/mine/PersonPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "PersonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/PersonPresenter;->setUserInfo(Lcom/keephealth/android/model/bean/UserBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/PersonPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/PersonPresenter;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/PersonPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/PersonPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/PersonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/PersonPresenter;->access$100(Lcom/keephealth/android/persenter/mine/PersonPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/PersonContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/PersonContract$View;->hideLoading()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/PersonPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/PersonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/PersonPresenter;->access$200(Lcom/keephealth/android/persenter/mine/PersonPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/PersonContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/PersonContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/PersonPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/PersonPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/PersonPresenter;->access$300(Lcom/keephealth/android/persenter/mine/PersonPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/PersonPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/PersonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/PersonPresenter;->access$000(Lcom/keephealth/android/persenter/mine/PersonPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/PersonContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/PersonContract$View;->requestSuccess()V

    return-void
.end method
