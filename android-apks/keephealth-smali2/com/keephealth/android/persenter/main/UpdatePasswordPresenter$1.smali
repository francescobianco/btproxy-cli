.class Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "UpdatePasswordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->sendCode(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 34
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$200(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {p2}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->hideLoading()V

    .line 35
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$300(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {p2, p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->sendCodeFaild(I)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$400(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 28
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$000(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->hideLoading()V

    .line 29
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$100(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->sendCodeSuccess()V

    return-void
.end method
