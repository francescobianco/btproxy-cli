.class Lcom/keephealth/android/persenter/main/LoginPresenter$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/LoginPresenter;->loginByFacebook(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/UserBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/LoginPresenter;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$3;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 120
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$3;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$1200(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {p2, p1}, Lcom/keephealth/android/persenter/main/LoginContract$View;->loginFaild(I)V

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$3;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$1300(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/LoginContract$View;->hideLoading()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$3;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/LoginPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$1400(Lcom/keephealth/android/persenter/main/LoginPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$3;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$1000(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/LoginContract$View;->hideLoading()V

    .line 113
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_22

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$3;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$1100(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/persenter/main/LoginContract$View;->LoginSuccess(ILcom/keephealth/android/model/BaseBean;)V

    :cond_22
    return-void
.end method
