.class Lcom/keephealth/android/persenter/main/LoginPresenter$8;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/LoginPresenter;->sendEmailVerifyCode(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/LoginPresenter;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 321
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$4000(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {p2}, Lcom/keephealth/android/persenter/main/LoginContract$View;->hideLoading()V

    .line 322
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$4100(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {p2, p1}, Lcom/keephealth/android/persenter/main/LoginContract$View;->sendCodeFaild(I)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/LoginPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$4200(Lcom/keephealth/android/persenter/main/LoginPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 315
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$3800(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/LoginContract$View;->hideLoading()V

    .line 316
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$8;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$3900(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/LoginContract$View;->sendCodeSuccess()V

    return-void
.end method
