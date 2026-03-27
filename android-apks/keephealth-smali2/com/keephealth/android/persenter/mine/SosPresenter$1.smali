.class Lcom/keephealth/android/persenter/mine/SosPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "SosPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/SosPresenter;->updateUser(Lcom/keephealth/android/model/bean/UserBean;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/SosPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/SosPresenter;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/SosPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/SosPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 60
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/SosPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/SosPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/SosPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/SosPresenter;->access$100(Lcom/keephealth/android/persenter/mine/SosPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/SosContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/SosContract$View;->updateFaild()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/SosPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/SosPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/mine/SosPresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/SosPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/SosPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/SosPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/SosPresenter;->access$200(Lcom/keephealth/android/persenter/mine/SosPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/SosPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/SosPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/SosPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/SosPresenter;->access$000(Lcom/keephealth/android/persenter/mine/SosPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/SosContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/SosContract$View;->updateSuccess()V

    return-void
.end method
