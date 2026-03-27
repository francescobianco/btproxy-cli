.class Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DialRecommendDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->getRecommendDialDetail(II)V
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
        "Lcom/keephealth/android/model/bean/DialDetailB;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 40
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->access$200(Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;->getFail()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    # invokes: Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->access$300(Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;>;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialCenterB:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hger9"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_37

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->access$000(Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;->getSuccess(Ljava/util/List;)V

    goto :goto_42

    .line 34
    :cond_37
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->access$100(Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailContract$View;->getFail()V

    :goto_42
    return-void
.end method
