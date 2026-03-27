.class Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MemberAddPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->addMember(Lcom/keephealth/android/model/bean/UserBean;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

.field final synthetic val$userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$100(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;->addReplay(ILcom/keephealth/android/model/bean/UserBean;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FF5433"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$200(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$300(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->cm2inchs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setHeightLb(F)V

    .line 53
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    .line 54
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/UserBean;

    iget-object v1, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setUnit(I)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userBean.getUnit():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->val$userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6dfb\u52a0\u6210\u5458:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF5433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/MemberAddPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->access$000(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UserBean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;->addReplay(ILcom/keephealth/android/model/bean/UserBean;)V

    return-void
.end method
