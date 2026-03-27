.class Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "UpdatePasswordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->updatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 65
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$700(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {p2}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->hideLoading()V

    .line 66
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$800(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {p2, p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->updateFaild(I)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$900(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UserBean;

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$500(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->hideLoading()V

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;->access$600(Lcom/keephealth/android/persenter/main/UpdatePasswordPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;->updateSuccess(Lcom/keephealth/android/model/bean/UserBean;)V

    return-void
.end method
