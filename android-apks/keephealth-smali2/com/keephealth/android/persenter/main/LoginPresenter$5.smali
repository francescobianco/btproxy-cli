.class Lcom/keephealth/android/persenter/main/LoginPresenter$5;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/LoginPresenter;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 189
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$5;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ed1\u5b9a\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FDD33"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$5;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$2200(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/LoginContract$View;->hideLoading()V

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$5;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$2300(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {v0, p1, p2}, Lcom/keephealth/android/persenter/main/LoginContract$View;->bindingFaild(ILjava/lang/String;)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$5;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$2400(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/LoginContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$5;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/LoginPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$2500(Lcom/keephealth/android/persenter/main/LoginPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$5;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$2000(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/LoginContract$View;->hideLoading()V

    .line 193
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_55

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ed1\u5b9a\u6210\u529f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF3212"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/LoginPresenter$5;->this$0:Lcom/keephealth/android/persenter/main/LoginPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/LoginPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/LoginPresenter;->access$2100(Lcom/keephealth/android/persenter/main/LoginPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/LoginContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/LoginContract$View;->bindingSuccess()V

    const/16 p1, 0x3f9

    .line 196
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/4 p1, 0x1

    .line 197
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    :cond_55
    return-void
.end method
