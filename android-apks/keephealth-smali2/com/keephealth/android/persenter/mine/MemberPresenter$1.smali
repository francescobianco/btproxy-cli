.class Lcom/keephealth/android/persenter/mine/MemberPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MemberPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MemberPresenter;->getInviteGuardian()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/model/bean/InvitedBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MemberPresenter;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$100(Lcom/keephealth/android/persenter/mine/MemberPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/MemberContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/MemberPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$200(Lcom/keephealth/android/persenter/mine/MemberPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/InvitedBean;",
            ">;>;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberPresenter;->access$000(Lcom/keephealth/android/persenter/mine/MemberPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/mine/MemberContract$View;->returnInvitedList(Ljava/util/List;)V

    return-void
.end method
