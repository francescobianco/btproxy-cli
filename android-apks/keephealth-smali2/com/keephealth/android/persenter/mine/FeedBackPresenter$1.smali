.class Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "FeedBackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->uploadFeedbackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$300(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$400(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->hideLoading()V

    .line 70
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$500(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->requestFaild()V

    :cond_1e
    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # invokes: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$600(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;Lio/reactivex/disposables/Disposable;)V

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

    .line 60
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$000(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 61
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$100(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->hideLoading()V

    .line 62
    iget-object p1, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;->this$0:Lcom/keephealth/android/persenter/mine/FeedBackPresenter;

    # getter for: Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->access$200(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->requestSuccess()V

    :cond_1e
    return-void
.end method
