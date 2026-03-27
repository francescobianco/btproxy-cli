.class Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DialRecommendPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->getRecommendDial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/DialCenterB;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DialRecommendPresenter;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 38
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->access$200(Lcom/keephealth/android/persenter/device/DialRecommendPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;->getFail()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->access$300(Lcom/keephealth/android/persenter/device/DialRecommendPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;->hideLoading()V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    # invokes: Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->access$400(Lcom/keephealth/android/persenter/device/DialRecommendPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DialCenterB;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialCenterB;

    if-eqz p1, :cond_31

    .line 29
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->access$000(Lcom/keephealth/android/persenter/device/DialRecommendPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;->getSuccess(Lcom/keephealth/android/model/bean/DialCenterB;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialCenterB:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ttrt6"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 32
    :cond_31
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DialRecommendPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DialRecommendPresenter;->access$100(Lcom/keephealth/android/persenter/device/DialRecommendPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/DialRecommendContract$View;->getFail()V

    :goto_3c
    return-void
.end method
