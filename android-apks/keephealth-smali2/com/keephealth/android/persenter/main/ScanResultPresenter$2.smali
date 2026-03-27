.class Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "ScanResultPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/ScanResultPresenter;->inviteGuardian(I)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/ScanResultPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/ScanResultPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 47
    iget-object p2, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/ScanResultPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/ScanResultPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p2}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->access$400(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/persenter/main/ScanResultContract$View;

    invoke-interface {p2, p1}, Lcom/keephealth/android/persenter/main/ScanResultContract$View;->returnCode(I)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/ScanResultPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/ScanResultPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/ScanResultPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->access$500(Lcom/keephealth/android/persenter/main/ScanResultPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 42
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/ScanResultPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/ScanResultPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/ScanResultPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/ScanResultPresenter;->access$300(Lcom/keephealth/android/persenter/main/ScanResultPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/ScanResultContract$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/main/ScanResultContract$View;->returnCode(I)V

    return-void
.end method
