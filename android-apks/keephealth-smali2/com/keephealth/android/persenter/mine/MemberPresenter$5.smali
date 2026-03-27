.class Lcom/keephealth/android/persenter/mine/MemberPresenter$5;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MemberPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MemberPresenter;->removeGuardian(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MemberPresenter;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$5;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 139
    iget-object p2, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$5;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$1400(Lcom/keephealth/android/persenter/mine/MemberPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/mine/MemberContract$View;

    invoke-interface {p2, p1}, Lcom/keephealth/android/persenter/mine/MemberContract$View;->returnResult(I)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$5;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$1500(Lcom/keephealth/android/persenter/mine/MemberPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/MemberContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$5;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/MemberPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$1600(Lcom/keephealth/android/persenter/mine/MemberPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$5;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$1300(Lcom/keephealth/android/persenter/mine/MemberPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/MemberContract$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/mine/MemberContract$View;->returnResult(I)V

    return-void
.end method
