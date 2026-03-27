.class Lcom/keephealth/android/persenter/mine/AccountPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/AccountPresenter;->clearUserData()V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 127
    iget-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$700(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {p2}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->hideLoading()V

    .line 128
    iget-object p2, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$800(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {p2, p1}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->clearFaild(I)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$900(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$1000(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$500(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->hideLoading()V

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;->this$0:Lcom/keephealth/android/persenter/mine/AccountPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->access$600(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->clearSuccess()V

    return-void
.end method
